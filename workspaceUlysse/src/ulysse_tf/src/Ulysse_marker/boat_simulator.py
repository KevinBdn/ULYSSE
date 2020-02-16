#!/usr/bin/env python
"""
__author__  = "Kevin Bedin"
__version__ = "1.0.1"
__date__    = "2019-12-01"
__status__  = "Development"
"""
"""
    The ``Ulysse TF`` module
    ======================
    
    Use it to :
        - publish the Ulysse marker
    
    Context
    -------------------
    Ulysse Unmaned Surface Vehicle
    
    Information
    ------------------------
        TODO: 
            C++ implementation
"""
import time

import rospy
import rospkg
import tf
from geometry_msgs.msg import Point32
from sensor_msgs.msg import PointCloud
from visualization_msgs.msg import Marker
from sbg_driver.msg import SbgUtcTime

import numpy as np


def boatSimulatorInit():
    """
        Function that initializes the Marker with fixed position to the imu.
    """
    robotMarker = Marker()
    robotMarker.header.frame_id = "imu"
    quaternion = tf.transformations.quaternion_from_euler(0, 0, 0)
    robotMarker.pose.position.x = -0.05
    robotMarker.pose.position.y = 0.6
    robotMarker.pose.position.z = -0.05
    robotMarker.pose.orientation.x= quaternion[0]
    robotMarker.pose.orientation.y= quaternion[1]
    robotMarker.pose.orientation.z= quaternion[2]
    robotMarker.pose.orientation.w= quaternion[3]
    robotMarker.scale.x = .02
    robotMarker.scale.y = .02
    robotMarker.scale.z = .02
    robotMarker.color.r = 0.8
    robotMarker.color.g = 0.8
    robotMarker.color.b = 0.8
    robotMarker.color.a = 1.0
    robotMarker.type = 10
    robotMarker.mesh_resource = "package://ulysse_tf/mesh/ulysse.obj";
    return robotMarker

def boatSimulator(myTime):
    """
        Funtion used to add a stamp time to the Marker and publish it.
        ---
        Input:
            myTime : the stamp time
    """
    robotMarker.header.stamp = myTime
    markerPub.publish(robotMarker)

def timeCallback(data):
    """
        Callback function called when a new data is coming in the /sbg/utc_time topic.
        Call the boatSimulator() function with the stamp time of this data.
        ---
        Input:
            data : the SbgUtcTime message
    """
    boatSimulator(data.header.stamp)

if __name__=="__main__":

    rospy.init_node("marker_pub", anonymous=False, log_level=rospy.DEBUG)

    time_sub = rospy.Subscriber("/sbg/utc_time", SbgUtcTime, timeCallback)
    markerPub = rospy.Publisher('/ulysse/design', Marker, queue_size=10)

    robotMarker = boatSimulatorInit()

    while not rospy.is_shutdown():
#        boatSimulator(rospy.Time())
        time.sleep(0.001)
