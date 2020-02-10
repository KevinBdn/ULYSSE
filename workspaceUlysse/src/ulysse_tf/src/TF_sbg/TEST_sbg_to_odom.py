#!/usr/bin/env python

"""
    Transform sbg topics to Odometry topic for geonav_transform node
    ------
    Docs:
        http://docs.ros.org/api/sbg_driver/html/msg/SbgEkfQuat.html
        http://docs.ros.org/api/sbg_driver/html/msg/SbgEkfNav.html
        http://docs.ros.org/api/nav_msgs/html/msg/Odometry.html
    
    Improvement:
        Add accuracy in Odometry message from quaternion and navigation messages
"""
import time

import rospy
import rospkg
from sbg_driver.msg import SbgEkfQuat, SbgEkfNav #add the package in CMakeLists
from nav_msgs.msg import Odometry

myTime = None
myEkfQuat = None
myEkfNav = None
myOdom = Odometry()

N = 0

def quatCallback(data):
    global myOdom, N, myTime
    if N == 0:
        myTime=data.header.stamp
        myOdom.header = data.header
        myOdom.pose.pose.orientation = data.quaternion
        N+=1
    if N==1 and myTime==data.header.stamp:
        myOdom.pose.pose.orientation = data.quaternion
        odom_pub.publish(myOdom)
        N=0
    else:
        N=0
    
def navCallback(data):
    global myOdom, N, myTime
    if myTime==data.header.stamp and N==1:
        myOdom.pose.pose.position = data.position
        myOdom.pose.pose.position.z += data.undulation
        odom_pub.publish(myOdom)
        N=0
    elif N==0:
        myTime=data.header.stamp
        myOdom.header = data.header
        myOdom.pose.pose.position = data.position
        myOdom.pose.pose.position.z += data.undulation
        N+=1
    else:
        N=0

if __name__=="__main__":

    rospy.init_node("sbg_tranform_message_TEST", anonymous=False, log_level=rospy.DEBUG)

    quat_sub = rospy.Subscriber("/sbg/ekf_quat", SbgEkfQuat, quatCallback)
    nav_sub = rospy.Subscriber("/sbg/ekf_nav", SbgEkfNav, navCallback)
    odom_pub = rospy.Publisher("/nav_odom", Odometry, queue_size=3)

    while not rospy.is_shutdown():
        time.sleep(0.001)
        pass
