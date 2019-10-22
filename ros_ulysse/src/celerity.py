#!/usr/bin/env python

"""
__author__  = "Romain Schwab - Aurelien Grenier - Kevin Bedin"
__version__ = "2.1.1"
__date__    = "2019-05-27"
__status__  = "Development"
"""
"""
    The ''T2SV'' module
    ======================

    Use it to :
        - get temperature at transducer depth
        - compute surface sound speed at transducer depth
        - broadcast data for R2Sonic 2020 multibeam echosounder

    Context
    -------------------
    Ulysse Unmaned Surface Vehicle

    Information
    ------------------------

"""
import rospy
import rospkg
from diagnostic_msgs.msg import DiagnosticArray, DiagnosticStatus

import numpy as np
import os
import serial
import socket


from datetime import datetime

PATH = rospkg.RosPack().get_path("ros_ulysse")+"/LOGS/R2SONIC/"
BASENAME="celerity"
DIAG_BASENAME="SSV -"

def Cw(T,P):
    return (1402.388+5.0383*T-5.8109e-2*T**2+3.3432e-4*T**3-1.47797e-6*T**4+3.1419e-9*T**5) + \
            (0.153563 + 6.8999e-4*T - 8.1829e-6*T**2+1.3632e-7*T**3-6.1260e-10*T**4)*P + \
            (3.1260e-5-1.7111e-6*T+2.5986e-8*T**2-2.5353e-10*T**3+1.0415e-12*T**4)*P**2 + \
            (-9.7729e-9 + 3.8513e-10*T - 2.3654e-12*T**2)*P**3

def A(T,P):
    return (1.389 - 1.262e-5*T + 7.166e-5*T**2 + 2.008e-6*T**3 - 3.21e-8*T**4) + \
            (9.4742e-5 - 1.2583e-5*T - 6.4928e-8*T**2 + 1.0515e-8*T**3 - 2.0142e-10*T**4)*P + \
            (-3.9064e-7 + 9.1061e-9*T - 1.6009e-10*T**2 + 7.994e-12*T**3)*P**2 + \
            (1.1e-10 + 6.651e-12*T -3.391e-13*T**2)*P**3

def B(T,P):
    return -1.922e-2 - 4.42e-5*T + (7.3637e-5 + 1.7950e-7*T)*P

def D(T,P):
    return 1.727e-3 - 7.9836e-6*P

def celerity(S,T,P):
    return Cw(T,P) + A(T,P)*S + B(T,P)*S**1.5+D(T,P)*S**2

def log(time, temp, sal, cel, f):
    """
        Log temperature and computed sound speed data
    """

    f.write('{0},{1:.2f},{2:.2f},{3:.3f}\n'.format(time, temp, sal, cel))


def create_empty_logfiles(path):

    file_prefix = datetime.utcnow().strftime('%Y%m%d_%H%M%S_')
    # Fichiers de sauvegarde des donnees
    f = open(path+file_prefix+'celerity_log.txt', 'a')
    f.write('datetime, temperature [C], salinity [psu], sound speed velocity [m/s]\n')

    return f


if __name__ == '__main__':

    rospy.init_node(BASENAME, anonymous=False, log_level=rospy.DEBUG)
    diag=rospy.Publisher("diagnostics",DiagnosticArray, queue_size=5)

    P = 1

#    S = 35

    # Fichiers de sauvegarde des donnees
    file = create_empty_logfiles(PATH)

    # On lit sur port serie les trames du capteur de temperature
    COM_IN = '/dev/ttyUSB0'
    BD_IN = 9600
    TO_IN = 1 # timeout de 1sec pour le capteur de temperature
    LEN_TEMP_FRAME = 81 # longueur des trames
    START_FRAME = '%'#= 37 avant

    # Connection au port serie
    try:
        portIn = serial.Serial(port=COM_IN, baudrate=BD_IN, timeout=1)
    except:
        portIn.close()
        portIn = serial.Serial(port=COM_IN, baudrate=BD_IN, timeout=1)


    # Creation d'un serveur UDP :
    UDP_IP = "10.255.255.255"
    UDP_PORT = 1040
    server = socket.socket(socket.AF_INET, # Internet
                                   socket.SOCK_DGRAM) # UDP
    server.setsockopt(socket.SOL_SOCKET, socket.SO_BROADCAST, 1)

# =============================================================================
#     LECTURE DE LA TEMPERATURE
# =============================================================================

    Tvec = []
    Svec = []
    Ns = 5 # nombre d'echantillons pour le moyennage
    temp_frame = portIn.readline()#Premiere lecture pour remettre avoir une trame entiere

    while not(rospy.is_shutdown()): # lecture en continu
        try:
            if os.stat(file.name).st_size >= 10e7:
                file.close()
                file = create_empty_logfiles(PATH)


            temp_frame = portIn.readline()
#           print(temp_frame)


            temp = temp_frame[-8:-2].decode("utf-8") # extraction de T
            sal = temp_frame[48:54].decode("utf-8") # extraction de T
#            sal = 35
            time = datetime.utcnow().strftime("%Y-%m-%d %H:%M:%S") # UTC time
            arr=DiagnosticArray()
            # si la trame est OK :
            if len(temp_frame) == LEN_TEMP_FRAME and temp_frame[0]==START_FRAME:

                # conversion en float :
                T = np.float(temp)
                S = max(np.float(sal),1e-10)

                Tvec.append(T) # add new value
                Tvec = Tvec[-Ns:] # keep last five values
                Svec.append(S) # add new value
                Svec = Svec[-Ns:] # keep last five values
# =============================================================================
#     CALCUL DE LA CELERITE DU SON EN SURFACE
# =============================================================================
                # filtre median :
                Tm = np.median(Tvec)
                Sm = np.median(Svec)

                ssv = celerity(Sm,Tm,P)

                print("T={0:.2f}C S={1:.3f}psu SSV={2:.2f}m/s".format(Tm, Sm, ssv))

                str_ssv = " {0:.2f}\r\n".format(ssv)
                print("SSV [m/s] : " + str_ssv)

                log(time, T, S, ssv, file)

# =============================================================================
#     DIFFUSION DE LA CELERITE DE SURFACE PAR UDP
# =============================================================================
#               # On diffuse par protocole ethernet UDP la celerite de surface
                server.sendto(str_ssv.encode('utf-8'), (UDP_IP, UDP_PORT))
                arr.status.append(DiagnosticStatus(level=0,name=DIAG_BASENAME+" Value",message=str_ssv[0:-1]))
                arr.header.stamp= rospy.Time.now()
                diag.publish(arr)
            else:
                erreur="Erreur dans le decodage de la trame : "+str(temp_frame)
                print("Erreur dans le decodage de la trame : ",temp_frame)
                arr.status.append(DiagnosticStatus(level=2,name=DIAG_BASENAME+" Error",message=erreur))
                arr.header.stamp= rospy.Time.now()
                diag.publish(arr)

# =============================================================================
#     SAUVEGARDE DES DONNEES (HEURE, TEMPERATURE, CELERITE)
# =============================================================================


        except KeyboardInterrupt: # if user press CTRL+C, script cancels autoscan
            print("Arret de l'emission des donnees de celerite de surface.")
            file.close()
            break
