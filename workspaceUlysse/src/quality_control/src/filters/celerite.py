#!/usr/bin/env python
#-*- coding:utf-8 -*-

"""
__author__  = "Aurélie Panetier - Pauline Celton"
__version__ = "1.0.1"
__date__    = "2019-03-02"
__status__  = "Development"
"""
"""
    The ``Quality control`` module
    ======================
    
    Use it to :
        - compare SSV with SVP
    
    Context
    -------------------
    Ulysse Unmaned Surface Vehicle
    
    Information
    ------------------------
    TODO :
        - implementation in C++
    
"""

import numpy as np
import time
import rospy
import rospkg
from std_msgs.msg import Int16, String, Float32
from diagnostic_msgs.msg import DiagnosticArray, DiagnosticStatus

PATH = rospkg.RosPack().get_path('mbes')+"/RESOURCES/SVP/"
svp_file=rospy.get_param('/SVP/svp_file',"1_2020-02-03_14-59-35_Up.asvp")

seuil = rospy.get_param('/filters/ssv/threshold', 2) #m/s
warning_number = rospy.get_param('/filters/ssv/warning', 8)

def ssv_filter(data):
    global state,diff
    ssv = data.data
    rospy.loginfo("SSV: %f,SVP: %f"%(ssv,svp))
    diff = np.abs(ssv-svp)
    if diff > seuil:
        state=1
        warning_pub.publish(Int16(warning_number))
        rospy.logwarn("SSV error: measured SSV %f / nominal SSV %f"%(ssv,svp))
    else:
        state=0

if __name__=="__main__":
    svp = np.asarray(np.loadtxt(PATH+svp_file, delimiter=' ', skiprows = 1))[0,1]
    state=0
    diff=0
    rospy.init_node('Celerity_filter')

    warning_pub = rospy.Publisher("/warning", Int16, queue_size=1)
    rospy.Subscriber("/ulysse/ssv", Float32, ssv_filter)
    diag_pub = rospy.Publisher("/diagnostics",DiagnosticArray,queue_size=1)

    diagnostics=DiagnosticArray()
    while not rospy.is_shutdown():
        diagnostics.status.append(DiagnosticStatus(level=state,name="filters/ssv/Threshold [m/s]", message=str(seuil)))
        diagnostics.status.append(DiagnosticStatus(level=state,name="filters/ssv/Reference [m/s]", message=str(svp)))
        diagnostics.status.append(DiagnosticStatus(level=state,name="filters/ssv/Difference [m/s]", message=str(diff)))
        diagnostics.header.stamp=rospy.Time.now()
        diag_pub.publish(diagnostics)
        time.sleep(0.8)

