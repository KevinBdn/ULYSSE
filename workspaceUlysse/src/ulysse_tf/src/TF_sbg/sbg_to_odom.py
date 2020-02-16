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
        - transform sbg topics to Odometry topic for geonav_transform node
    
    Context
    -------------------
    Ulysse Unmaned Surface Vehicle
    
    Information
    ------------------------
      - Docs:
            http://docs.ros.org/api/sbg_driver/html/msg/SbgEkfQuat.html
            http://docs.ros.org/api/sbg_driver/html/msg/SbgEkfNav.html
            http://docs.ros.org/api/nav_msgs/html/msg/Odometry.html
        
       - Improvement:
            C++ implementation
            Check time before filling the Odometry message (see TEST_sbg_to_odom.py)
            Add accuracy in Odometry message from quaternion and navigation messages
"""
import time

import numpy as np
import rospy
import rospkg
from sbg_driver.msg import SbgEkfQuat, SbgEkfNav #add the package in CMakeLists
from nav_msgs.msg import Odometry
from tf.transformations import quaternion_from_euler, quaternion_multiply

myTime = None
myEkfQuat = None
myEkfNav = None
myOdom = Odometry()
n=0
N = 0
q_rot = quaternion_from_euler(np.pi, 0, 0)

def quatCallback(data):
    """
        Callback function called when a new Quaternion data is available from the IMU.
        It fills an Odometry message needed by geonav_transform.
        NED to ENU transformation is applied.
        ---
        Input:
            data : the SbgEkfQuat message
    """
    global myOdom, N, n

    if N == 0:
        myOdom.header = data.header
#        orig_quat=(data.quaternion.x,data.quaternion.y,data.quaternion.z,data.quaternion.w)
#        myOdom.pose.pose.orientation.x = quaternion_multiply(q_rot,orig_quat)[0]
#        myOdom.pose.pose.orientation.y = quaternion_multiply(q_rot,orig_quat)[1]
#        myOdom.pose.pose.orientation.z = quaternion_multiply(q_rot,orig_quat)[2]
#        myOdom.pose.pose.orientation.w = quaternion_multiply(q_rot,orig_quat)[3]
        myOdom.pose.pose.orientation = data.quaternion
        myOdom.pose.pose.orientation.z = myOdom.pose.pose.orientation.z* -1
        myOdom.pose.pose.orientation.x, myOdom.pose.pose.orientation.y = myOdom.pose.pose.orientation.y, myOdom.pose.pose.orientation.x
        N+=1
#    else:
#        myOdom.pose.pose.orientation = data.quaternion
#        myOdom.pose.pose.orientation.z = myOdom.pose.pose.orientation.z* -1
#        myOdom.pose.pose.orientation.x, myOdom.pose.pose.orientation.y = myOdom.pose.pose.orientation.y, myOdom.pose.pose.orientation.x
#        odom_pub.publish(myOdom)
##        n+=1
##        rospy.logwarn("Number odom sent: "+str(n))
#        N=0

def navCallback(data):
    """
        Callback function called when a new Navigation data is available from the IMU.
        It fills an Odometry message needed by geonav_transform and publishes it.
        NED to ENU transformation is applied.
        ---
        Input:
            data : the SbgEkfNav message
    """
    global myOdom, N,n 

    if N == 1:
        myOdom.pose.pose.position = data.position
        myOdom.pose.pose.position.x,myOdom.pose.pose.position.y, = data.position.y,data.position.x
        myOdom.pose.pose.position.z += data.undulation
        odom_pub.publish(myOdom)
#        n+=1
#        rospy.logwarn("Number odom sent: "+str(n))
        N=0

#    else:
#        myOdom.header = data.header
#        myOdom.pose.pose.position = data.position
#        myOdom.pose.pose.position.x,myOdom.pose.pose.position.y, = data.position.y,data.position.x
#        myOdom.pose.pose.position.z += data.undulation
#        N+=1

if __name__=="__main__":

    rospy.init_node("sbg_tranform_message", anonymous=False, log_level=rospy.DEBUG)

    quat_sub = rospy.Subscriber("/sbg/ekf_quat", SbgEkfQuat, quatCallback)
    nav_sub = rospy.Subscriber("/sbg/ekf_nav", SbgEkfNav, navCallback)
    odom_pub = rospy.Publisher("/nav_odom", Odometry, queue_size=3)

    while not rospy.is_shutdown():
        time.sleep(0.001)
        pass
