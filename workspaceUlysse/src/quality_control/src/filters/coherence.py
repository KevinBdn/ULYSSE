#!/usr/bin/env python
#-*- coding:utf-8 -*-

import matplotlib.pyplot as plt
from mpl_toolkits import mplot3d
import numpy as np
import rospy
from std_msgs.msg import Int16, String
import os
import time
import pandas
from diagnostic_msgs.msg import DiagnosticArray, DiagnosticStatus

RESOLUTION = 1
SEUIL_COHERENCE = 0.1
SEUIL_ACCEP = 10 # pourcentage d'erreurs acceptées
WARNING = 12


def grille_coherence(reg_file,trav_file):
    
    '''
        Input : les fichiers de lignes régulières et traversières en p,b,x,y,z,status
        Output : la différence et a le taux de valeurs invalides
    '''
    reg = pandas.read_csv(reg_file, delim_whitespace=True, names=['p', 'b', 'x', 'y', 'z', 'status'])
    trav = pandas.read_csv(trav_file, delim_whitespace=True, names=['p', 'b', 'x', 'y', 'z', 'status'])
    reg = reg.loc[reg.status==0]
    trav = trav.loc[trav.status==0]
       
    #origine de la grille  coin gauche inférieur
    x0 = np.minimum(np.min(reg['x'].values),np.min(trav['x'].values)) 
    y0 = np.minimum(np.min(reg['y'].values),np.min(trav['y'].values))
   
    #fin de la grille coin droit supérieur
    xmax = np.maximum(np.max(reg['x'].values),np.max(trav['x'].values)) 
    ymax = np.maximum(np.max(reg['y'].values),np.max(trav['y'].values))

    #taille de la grille
    jmax = int((xmax - x0)/RESOLUTION)+1
    imax = int((ymax-y0)/RESOLUTION)+1
    
    #grilles vides faisant la meme taille
    Mreg = np.zeros((imax,jmax))
    Mtrav = np.zeros((imax,jmax))
    
    #remplissage des grilles avec les valeurs de profondeurs
    j = np.zeros(len(reg))
    i = np.zeros(len(reg))
    jj = np.zeros(len(trav))
    ii = np.zeros(len(trav))
    count1 = np.zeros_like(Mreg)
    count2 = np.zeros_like(Mtrav)
    
    for f in range(len(reg)):
        j = int((reg['x'].values[f] - x0)/RESOLUTION)
        i = int((reg['y'].values[f]-y0)/RESOLUTION)
        Mreg[i,j] += reg['z'].values[f]
        count1[i,j] += 1
        
    for f in range(len(trav)):
        jj = int((trav['x'].values[f] - x0)/RESOLUTION)
        ii = int((trav['y'].values[f]-y0)/RESOLUTION)
        Mtrav[ii,jj] += trav['z'].values[f]
        count2[ii,jj] += 1

    M1 = Mreg/count1
    M2 = Mtrav/count2
    diff = (M1-M2)
    a = len(np.where(diff>SEUIL_COHERENCE)[0])

    return float(a)/(len(diff[0])*len(diff))*100

def filter_manager(data):
    global Regs,files,status,perct,state,comput_time
    name = data.data.split('/')[-1][0:3]
    if name == "Reg":
        rospy.loginfo("New reg file")
        Regs.append(data.data)
    elif name == "Tra":
        for reg in Regs:
            rospy.loginfo("Start filtering:\nReg_file: %s\nTrav_file: %s"%(reg,data.data))
            status = "Running"
            files = [reg.split('/')[-1],data.data.split('/')[-1]]
            t0 = time.time()
            error_percent=grille_coherence(reg,data.data)
            d = time.time() - t0
            comput_time = d
            perct = error_percent
            state = int(error_percent > SEUIL_ACCEP)
            if state:
                rospy.logwarn("Warning raised")
                warning_pub.publish(Int16(WARNING))
            status = "Not running"
            rospy.loginfo("\tPercentage of non coherence: %.3f"%(error_percent))
            rospy.loginfo("End filtering - Time computing %.3f s"%(d))


if __name__ == '__main__':
    

    rospy.init_node('Coherence_filter')
#    data = load('fauchee1.txt')
#    data2 = load('fauchee2.txt')
#    data3 = load('fauchee2.txt')
    
    warning_pub = rospy.Publisher("/warning", Int16, queue_size=1)
    rospy.Subscriber("/ulysse/filters/scheduler", String, filter_manager)
    diag_pub = rospy.Publisher("/diagnostics",DiagnosticArray,queue_size=1)

    state = 0
    status = "Not running"
    files = "Not running"
    perct = "Not running"
    comput_time = "Not running"
    Regs=[]
    Travs=[]


    diagnostics=DiagnosticArray()
    while not rospy.is_shutdown():
        diagnostics.status.append(DiagnosticStatus(level=state,name="filters/coherence/State", message=str(status)))
        diagnostics.status.append(DiagnosticStatus(level=state,name="filters/coherence/Files", message=str(files)))
        diagnostics.status.append(DiagnosticStatus(level=state,name="filters/coherence/Coherence threshold [m]", message=str(SEUIL_COHERENCE)))
        diagnostics.status.append(DiagnosticStatus(level=state,name="filters/coherence/Resolution [m]", message=str(RESOLUTION)))
        diagnostics.status.append(DiagnosticStatus(level=state,name="filters/coherence/Acceptable percentage", message=str(SEUIL_ACCEP)))
        diagnostics.status.append(DiagnosticStatus(level=state,name="filters/coherence/Result [%]", message=str(perct)))
        diagnostics.status.append(DiagnosticStatus(level=state,name="filters/coherence/Computing time [s]", message=str(comput_time)))
        diagnostics.header.stamp=rospy.Time.now()
        diag_pub.publish(diagnostics)
        if state:
            state=0
        time.sleep(1)


