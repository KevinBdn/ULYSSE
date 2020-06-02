#!/usr/bin/env python
#-*- coding:utf-8 -*-

"""
__author__  = "Aurélie Panetier"
__version__ = "1.0.1"
__date__    = "2019-03-02"
__status__  = "Development"
"""
"""
    The ``Quality control`` module
    ======================
    
    Use it to :
        - analyse the density of the swathes
    
    Context
    -------------------
    Ulysse Unmaned Surface Vehicle
    
    Information
    ------------------------
    TODO :
        - implementation in C++
    
"""

import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import rospy
import time
from std_msgs.msg import Int16, String
from diagnostic_msgs.msg import DiagnosticArray, DiagnosticStatus


# recuperer les lignes qui se recouvrent à partir de l'algorithme 

RESOLUTION = rospy.get_param('/filters/density/resolution', 0.8)
FREQUENCE_R2SONIC = rospy.get_param('/filters/density/r2sonic_frequency', 400)
SEUIL = rospy.get_param('/filters/density/threshold', 0.95) #Seuil de densite acceptable
DENSITE = rospy.get_param('/filters/density/density', 10.) # nbr de sonde par maille voulue
WARNING = rospy.get_param('/filters/density/warning', 10)



def density_filter(file_name):
    global state, files, resul, comput_time, status

    status = "Running"
    files = file_name.data.split('/')[-1]

    swath = pd.read_csv(file_name.data, delim_whitespace = True, names = ['ping', 'beam', 'x', 'y', 'z', 'flag'])
    r = RESOLUTION
    d = DENSITE
    f = FREQUENCE_R2SONIC
    h = compute_heading(swath)
    swath = swath.loc[swath.flag == 0]
    t0=time.time()
    rospy.loginfo("Start filter")
    gd = grid_density(swath, h, r, f)
    res,is_ok = validation_density(gd, d, r, f)
    d = time.time()-t0

    comput_time = d
    resul = res

    rospy.loginfo("\tDensity percentage: %.3f"%(res))
    rospy.loginfo("End filter - Computing time %.3f"%(d))
    status="Not running"
    if not(is_ok):
        state = 1
        warning_pub.publish(Int16(WARNING))
        rospy.logwarn("Density filter - Error detected - Density percentage: %.3f - Threshold: %.3f"%(res,SEUIL))


def compute_heading(swath):
    """
    Compute the heading of the swath.
    Input:
    ------
        swath [pandas]: swath data information.
        	ping [array]: ping belonging of all the points of the swath.
        	beam [array]: beam belonging of all the points of the swath.
        	x [array]: x coordinates of all the points of the swath.
        	y [array]: y coordinates of all the points of the swath.
    Output:
    -------
        hdg [float]: mean heading of the swath, radians.
    """
    dy = swath.loc[swath.beam == 1].y.values - swath.loc[swath.beam == 256].y.values
    dx = swath.loc[swath.beam == 1].x.values - swath.loc[swath.beam == 256].x.values
    theta_North = np.arctan2(dy, -dx)
    return np.mean(theta_North)
    

def grid_density(swath, cap, r, f):
    """
    Compute the density in the grid.
    Input:
    ------
        swath [pandas]: swath data information.
            x [array]: x coordinates of all the points of the swath.
            y [array]: y coordinates of all the points of the swath.
            z [array]: z coordinates of all the points of the swath.
        hdg [float]: mean heading of the swath, radians.
        r [float]: resolution  input parameter for the survey, meters.
        frequency [int]: frequency of the survey.
    Output:
    -------
        grid_density [array]: density of swath for the given meshgrid with resolution r.
    """
    x = swath.x.values
    y = swath.y.values
    n = len(x) # number of data
    P = np.concatenate((x.reshape((n, 1)), y.reshape((n, 1))), axis=1)

    # creation of the rotation matrix.
    C = np.zeros((2, 2))
    C[0, 0] = -np.sin(cap)
    C[1, 0] = -np.cos(cap)
    C[0, 1] = np.cos(cap)
    C[1, 1] = -np.sin(cap)
    
    # rotation of the swath to bring the general direction of the swath northwards.
    Pnorth = np.dot(P,C)

    # computing the footprint
    footprint = compute_beamwidth(swath, f)

    # compute the borders of the grid
    xmin = np.nanmin(Pnorth[:, 0])
    xmax = np.nanmax(Pnorth[:, 0])
    ymin = np.nanmin(Pnorth[:, 1])
    ymax = np.nanmax(Pnorth[:, 1])

    # compute the number of meshes
    ni = int((xmax - xmin)/r + 1) # number of meshes eastwards
    nj = int((ymax - ymin)/r + 1) # number of meshes northward

    # create the grid
    grille = np.zeros((ni, nj))
    for k in range(len(Pnorth)):
        imin = int(np.floor((Pnorth[k, 0] - xmin - footprint[k]) / r))
        jmin = int(np.floor((Pnorth[k, 1] - ymin - footprint[k]) / r))
#        i = int((Pnorth[k, 0] - xmin) / r)
#        j = int((Pnorth[k, 1] - ymin) / r)
        imax = int(np.ceil((Pnorth[k, 0] - xmin + footprint[k]) / r))
        jmax = int(np.ceil((Pnorth[k, 1] - ymin + footprint[k]) / r))
        
        for i in range(max(imin, 0), min(imax, grille.shape[0])):
            for j in range(max(jmin, 0), min(jmax, grille.shape[1])):
                grille[i, j] += 1
#    print(imin, imax, jmin, jmax)
    return grille

def compute_beamwidth(swath, frequency):
    """
    Compute the beamwidth of the footprint of the beams of the swath.
    Input:
    ------
        swath [pandas]: swath data information.
        	x [array]: x coordinates of all the points of the swath.
        	y [array]: y coordinates of all the points of the swath.
        	z [array]: z coordinates of all the points of the swath.
        frequency [int]: frequency of the survey.
    Output:
    -------
        footprint [array]: width of the footprint for each beam of the swath.
    """
    # hypothese faisceau nadir pour tous les faisceaux, car on ne connait pas l'angle
    # de pointe du faisceau. A ameliorer en recuperant l'information si possible.
    if frequency == 400:
        beamwidth = 2 * np.pi / 180
    else:
        beamwidth = 4 * np.pi / 180 
    footprint = (170 - swath.z.values) * np.tan(beamwidth)
    return footprint
    
    

def validation_density(grid_density, density_criteria, resolution, frequency):
    """
    Compute the density in the grid.
    Input:
    ------
        grid_density [array]: density of swath for the given meshgrid with resolution r.
        density_criteria [array]: density criteria input for the survey.
        frequency [int]: frequency of the survey.
    Output:
    -------
        valid_density [array]: validity of density in the grid.
    """
    # hypothèse recouvrement 100%
    # on enleve le contour de la fauchee
    grid_density[grid_density == 0] = 10000000000000
    wrong_density = np.count_nonzero(grid_density < density_criteria / 2)
    p = float(grid_density.size - wrong_density) / grid_density.size
    return p, p>SEUIL
    

if __name__ == '__main__':
    
    rospy.init_node('Density_filter')
    
    warning_pub = rospy.Publisher("/warning", Int16, queue_size=1)
    rospy.Subscriber("/ulysse/filters/scheduler", String, density_filter)
    diag_pub = rospy.Publisher("/diagnostics",DiagnosticArray,queue_size=1)

    state = 0
    status = "Not running"
    files = "Not running"
    resul = "Not running"
    comput_time = "Not running"


    diagnostics=DiagnosticArray()
    while not rospy.is_shutdown():
        diagnostics.status.append(DiagnosticStatus(level=state,name="filters/density/State", message=str(status)))
        diagnostics.status.append(DiagnosticStatus(level=state,name="filters/density/Files", message=str(files)))
        diagnostics.status.append(DiagnosticStatus(level=state,name="filters/density/Resolution [m]", message=str(RESOLUTION)))
        diagnostics.status.append(DiagnosticStatus(level=state,name="filters/density/Density threshold [per mesh]", message=str(DENSITE)))
        diagnostics.status.append(DiagnosticStatus(level=state,name="filters/density/MBES frequency [Hz]", message=str(FREQUENCE_R2SONIC)))
        diagnostics.status.append(DiagnosticStatus(level=state,name="filters/density/Percentage threshold [%]", message=str(SEUIL)))
        diagnostics.status.append(DiagnosticStatus(level=state,name="filters/density/Result [%]", message=str(resul)))
        diagnostics.status.append(DiagnosticStatus(level=state,name="filters/density/Computing time [s]", message=str(comput_time)))
        diagnostics.header.stamp=rospy.Time.now()
        diag_pub.publish(diagnostics)
        if state:
            state=0
        time.sleep(1)

    
    
