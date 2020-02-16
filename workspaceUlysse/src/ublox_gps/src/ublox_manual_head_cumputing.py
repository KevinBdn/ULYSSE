#!/usr/bin/env python
# -*- coding: utf-8 -*-

"""
__author__  = "Romain Schwab - Kevin Bedin"
__version__ = "2.1.1"
__date__    = "2019-10-20"
__status__  = "Development"
"""
"""
    The ``ulysse_gnss_compass`` module
    ======================
    
    Use it to :
        - get RTK positions from u-blox GNSS receivers
        - compute heading
        - broadcast data for SBG Systems Ekinox1-U
    
    Context
    -------------------
    Ulysse Unmaned Surface Vehicle
    
    Information
    ------------------------
    Points a reprendre :
        - modification de la trame GST
        - resynchronisation des trames
        - decouper les fichiers apres une certaine taille

    Important:
        - A priori nécessité envoyé la trame ZDA avant les autres
    
"""


import os
import re
import serial
import socket
import time

import numpy as np

import rospy
import rospkg
from diagnostic_msgs.msg import DiagnosticArray, DiagnosticStatus

from datetime import datetime


BASENAME="gps"
DIAG_BASENAME="GPS -"

HEADING_BIAS = rospy.get_param('/ublox/heading_bias',-0.52) # biais en degres entre axe des GPS et axe de la centrale

# On lit sur port serie les positions RTK :
COM_UBLOX_2 = rospy.get_param('/ublox/sensor/front_port','/dev/ttyACM1')#Avant (cap)
COM_UBLOX_1 = rospy.get_param('/ublox/sensor/back_port','/dev/ttyACM0')#Arriere (position)
BD = rospy.get_param('/ublox/sensor/baudrate',115200)
COM_TIMEOUT = 1e-4 # 100us


UDP_IP = rospy.get_param('/ublox/server/IP',"10.255.255.255")
UDP_PORT = rospy.get_param('/ublox/server/port',1010)

PATH = rospkg.RosPack().get_path("ublox_gps")+'/LOGS/GNSS_DATA/'

zda_count = 0


def checksum(s):
    """
        NMEA frame checksum computation
    """
    result   = re.search('\$(.*)\*', s) # everything between '$' and '*' (escaped with '\')

    # https://rietman.wordpress.com/2008/09/25/how-to-calculate-the-nmea-checksum/
    # see also https://forum.u-blox.com/index.php/14618/python-generate-checksums-validate-coming-serial-interface

    checksum = 0
    for thing in result.group(1):
        checksum = checksum ^ ord(thing)  # Xor

    ck  = hex(0x100 + checksum)[-2:].upper()
    return ck

# =============================================================================
#  ATTENTION : ERREUR QUAND LA VARIABLE dm EST VIDE
# =============================================================================
def DM2DD(dm, sign):
    """
        Passage de la convention degre/minute a la convention degre pour 
        les donnees de longitude et latitude.
        
        Convention de signe : positif si Nord ou Est
        
        Format des donnees d'entree : 7 chiffres apres la virgule
        
        Exemple : '4825.0876539' devient '48.418127565'
    """
    # Conversion des coordonnees degre-minute en degre :
    print(dm[:-10],dm[-10:])
    dd = float(dm[:-10]) + float(dm[-10:])/60.
    
    # Convention de signe :
    if sign in ['S', 'W']:
        dd *= -1
    
    return dd

def ublox_connection(serial_port):
    """
        Open a connection with u-blox (serial port)
    """
    # Connect to serial ports
    try:
        port = serial.Serial(port=serial_port, baudrate=BD, timeout=COM_TIMEOUT)
    except:
        port.close()
        port = serial.Serial(port=serial_port, baudrate=BD, timeout=COM_TIMEOUT)
        
    return port

def get_nmea_data(port):
    """
        Listen to u-blox serial port (position antenna)
        
        If frame is incomplete, infinite loop waiting for next complete frame
    """
    
#    q = 1 # quality factor
    
    # Wait for RMC message :
    rmc = port.readline().decode("utf-8")
    while not 'RMC' in rmc:
        if rmc: 
            print("Wait for RMC : ", rmc)
        rmc = port.readline().decode("utf-8")

    
    # Read GGA+GST+ZDA messages :
    gga = port.readline().decode("utf-8")
    gst = port.readline().decode("utf-8")
    zda = port.readline().decode("utf-8")
    
    t = np.float(gga[7:16])
    
    # Print messages :
    print("Trames :")
    print(" RMC: ",rmc)
    print(" GGA: ",gga)
    print(" GST: ",gst)
    print(" ZDA: ",zda)
    
    # Quality check :
    if not 'GGA' in gga or not 'GST' in gst or not 'ZDA' in zda:
        print("Issue with GGA/GST/ZDA frame decoding !\nMessage:\nGGA:{0}\nGST:{1}\nZDA:{2}".format(gga, gst, zda))
        rmc, gga, gst, zda, t = get_nmea_data(port)
    
    return rmc, gga, gst, zda, t

def get_gga_data(port):
    """
        Listen to u-blox serial port (heading antenna)
        
        If frame is incomplete, infinite loop waiting for next complete frame
    """
    
    
    # Wait for GGA message :
    gga = port.readline().decode("utf-8")
    while not 'GGA' in gga:
        if gga: print("Wait for GGA : ", gga)
        gga = port.readline().decode("utf-8")
    
    
    t = np.float(gga[7:16])
    
    # Print messages :
    print("Heading antenna frame :")
    print(" GGA: ",gga)
    
    # Quality check :
    if not 'GGA' in gga:
        print("Issue with GGA frame decoding !\nMessage:\nGGA:{0}\n".format(gga))
        gga, t = get_gga_data(port)
    
    return gga, t
    
def complete_gst(gst_in, gga_in):
    """
        Write NMEA GST frame according to a given position

        2. RMS value of the pseudorange residuals
        3. Error ellipse semi_major axis (1sigma)
        4. Error ellipse semi_minor axis (1sigma)
        5. Error ellipse orientation
        6. Latitude 1sigma error
        7. Longitude 1sigma error
        8. Height 1sigma error
    """

    gst_out = gst_in.split(',')
#    gga_in = gga_in.split(',')
#    hdop = np.float(gga_in[8])
#    hdop = 0.05
    q=1
    gst_out[2] = str(0.006*q)
    gst_out[3] = str(float(gst_out[6])*q)
    gst_out[4] = str(float(gst_out[7])*q)
    gst_out[6] = str(float(gst_out[6])*q)
    gst_out[7] = str(float(gst_out[7])*q)
    gst_out[5] = str(270.0)
    gst = ','.join(gst_out)
    
    # Apply new checksum :
    gst = gst[:-4] + checksum(gst) + gst[-2:]

    return gst

def calculate_initial_compass_bearing(pointA, pointB):
    """
    Calculates the bearing between two points.
    The formulae used is the following:
        theta = atan2(sin(dlong).cos(lat2),
                  cos(lat1).sin(lat2) − sin(lat1).cos(lat2).cos(dlong))
    :Parameters:
      - `pointA: The tuple representing the latitude/longitude for the
        first point. Latitude and longitude must be in decimal degrees
      - `pointB: The tuple representing the latitude/longitude for the
        second point. Latitude and longitude must be in decimal degrees
    :Returns:
      The bearing in degrees
    :Returns Type:
      float
    """
    if (type(pointA) != tuple) or (type(pointB) != tuple):
        raise TypeError("Only tuples are supported as arguments")
        
    lat1 = np.radians(pointA[0])
    lat2 = np.radians(pointB[0])
    
    diffLong = np.radians(pointB[1] - pointA[1])
    
    x = np.sin(diffLong) * np.cos(lat2)
    y = np.cos(lat1) * np.sin(lat2) - (np.sin(lat1)
            * np.cos(lat2) * np.cos(diffLong))
    
    initial_bearing = np.arctan2(x, y)
    
    # Now we have the initial bearing but math.atan2 return values
    # from -180° to + 180° which is not what we want for a compass bearing
    # The solution is to normalize the initial bearing as shown below
    initial_bearing = np.degrees(initial_bearing)
    compass_bearing = (initial_bearing + 360) % 360
    
    return compass_bearing


def send_nmea(udp_port, rmc, gga, gst, zda, hdt):
    """
        Send GNSS data to SBG Systems Ekinox-1 using UDP protocol
    """
    if zda!="":
        udp_port.sendto(zda.encode('utf-8'), (UDP_IP, UDP_PORT))
    # Send data :
    udp_port.sendto(rmc.encode('utf-8'), (UDP_IP, UDP_PORT))
    udp_port.sendto(gga.encode('utf-8'), (UDP_IP, UDP_PORT))
    udp_port.sendto(gst.encode('utf-8'), (UDP_IP, UDP_PORT))
    udp_port.sendto(hdt.encode('utf-8'), (UDP_IP, UDP_PORT))

        
def write_nmea(rmc_1, gga_1, gst_1, zda_1, gga_2, hdt, f1, f2, fh):
    """
        Save GNSS data into ascii files
    """
    f1.write(rmc_1)
    f1.write(gga_1)
    f1.write(gst_1)
    if zda_1:
        f1.write(zda_1)
        

    f2.write(gga_2)

    fh.write(hdt)
    
    
def set_hdt_nmea_frame(heading, rmc_1):
    
    # Create HDT NMEA sentence :
    prefix = rmc_1[:3] + 'HDT'
    suffix = 'T*00\r\n' # default checksum
    hdt_nmea = ','.join([prefix, str(compass_bearing), suffix])
    
    # Apply correct checksum :
    hdt = hdt_nmea[:-4] + checksum(hdt_nmea) + hdt_nmea[-2:]
    return hdt

def create_empty_logfiles(path):
    
    file_prefix = datetime.utcnow().strftime('%Y%m%d_%H%M%S_')
    # Fichiers de sauvegarde des donnees
    f1 = open(path+file_prefix+'data_ublox1.txt', 'a')
    f2 = open(path+file_prefix+'data_ublox2.txt', 'a')
    fh = open(path+file_prefix+'data_cap.txt', 'a')
    
    return f1, f2, fh


if __name__ == '__main__':

#    print((HEADING_BIAS,COM_UBLOX_1,COM_UBLOX_2,UDP_IP,UDP_PORT,BD))
    rospy.init_node(BASENAME, anonymous=False, log_level=rospy.DEBUG)
    diag=rospy.Publisher("diagnostics",DiagnosticArray, queue_size=5)

    # Connect to serial ports
    port_ub1 = ublox_connection(COM_UBLOX_1)
    port_ub2 = ublox_connection(COM_UBLOX_2)


    # On diffuse par protocole ethernet UDP les trames NMEA GGA, GST, RMC, ZDA, HDT
    # Creation d'un serveur UDP :
    udp_server = socket.socket(socket.AF_INET, # Internet
                                   socket.SOCK_DGRAM) # UDP
    udp_server.setsockopt(socket.SOL_SOCKET, socket.SO_BROADCAST, 1)
    
    f1, f2, fh = create_empty_logfiles(PATH)


# =============================================================================
#     LECTURE 
# =============================================================================
    count_missing_data = 0
    while not(rospy.is_shutdown()):
        try:
            # trouver l'ordre des trames : par exemple : RMC, GGA, GST, ZDA
            # bien regler le timeout en fonction de la cadence d'emission (5Hz)
            
            # Create new files if max size limit is reached :
            if os.stat(f1.name).st_size >= 10e7 or os.stat(f2.name).st_size >= 10e7:
                f1.close()
                f2.close()
                fh.close()
                f1, f2, fh = create_empty_logfiles(PATH)
            
            # Start
            t0 = time.time()
            
            # Listen COM ports :
            rmc_1, gga_1, gst_1, zda_1, t_f1 = get_nmea_data(port_ub1)
            gga_2, t_f2 = get_gga_data(port_ub2)
            t0bis = time.time()
            # Check desynchronisation of the two antenna
            while t_f1 != t_f2:
                if t_f1 < t_f2:
                    rmc_1, gga_1, gst_1, zda_1, t_f1 = get_nmea_data(port_ub1)
                else:
                    gga_2, t_f2 = get_gga_data(port_ub2)
            
#            # Skip floating values of time :
            if not '.00' in zda_1[13:16]:
                zda_1 = ""
            
            
            t1 = time.time()
            
            # Get 2D position (latitude/longitude) from the two GNSS antenna :
            gga_1_list = gga_1.split(',')
            print(gga_1_list)
            lat1 = DM2DD(gga_1_list[2],gga_1_list[3])
            lon1 = DM2DD(gga_1_list[4],gga_1_list[5])
            
            gga_2_list = gga_2.split(',')
            print(gga_2_list)
            lat2 = DM2DD(str(gga_2_list[2]), gga_2_list[3])
            lon2 = DM2DD(str(gga_2_list[4]), gga_2_list[5])
            
            # Modify GST message (add standard deviation information) :
            gst_1 = complete_gst(gst_1, gga_1)

            t2 = time.time()
            
            # Compute GNSS heading :
            compass_bearing = calculate_initial_compass_bearing((lat1, lon1), (lat2, lon2))
            compass_heading = compass_bearing + HEADING_BIAS
            hdt = set_hdt_nmea_frame(compass_heading, rmc_1)
            
            # End
            t3 = time.time()
            
            print("\nDonnees :\n   Cap GNSS : {0:.2f}°".format(compass_heading))
            print("Temps de calcul :")
            print("   Temps lecture trames : {0:.3f}ms".format((t1-t0)*1e3))
            print("   Temps conversion DM->DD : {0:.1f}µs".format((t2-t1)*1e6))
            print("   Temps calcul cap : {0:.1f}µs".format((t3-t2)*1e6))
            print("   Temps calcul total : {0:.1f}ms".format((t3-t0bis)*1e3))

            send_nmea(udp_server, rmc_1, gga_1, gst_1, zda_1, hdt)
            
            write_nmea(rmc_1, gga_1, gst_1, zda_1, gga_2, hdt, f1, f2, fh)
            
            arr=DiagnosticArray()
            arr.status.append(DiagnosticStatus(level=0,name=DIAG_BASENAME+" Calcul Time",message="{0:.1f}ms".format((t3-t0bis)*1e3)))
            arr.status.append(DiagnosticStatus(level=0,name=DIAG_BASENAME+" Cap",message="{0:.2f}".format(compass_heading)))
            arr.header.stamp= rospy.Time.now()
            diag.publish(arr)

        except:
            arr=DiagnosticArray()
            arr.status.append(DiagnosticStatus(level=1,name=DIAG_BASENAME+" Calcul Time",message="ERROR"))
            arr.status.append(DiagnosticStatus(level=1,name=DIAG_BASENAME+" Cap",message="ERROR"))
            arr.header.stamp= rospy.Time.now()
            diag.publish(arr)


    print("Script arrete par l'utilisateur.")
    f1.close()
    f2.close()
    fh.close()

