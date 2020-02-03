#!/usr/bin/env python
import time

import rospy
import rospkg
import tf
from geometry_msgs.msg import Point32
from sensor_msgs.msg import PointCloud
from visualization_msgs.msg import Marker
from sbg_driver.msg import SbgUtcTime

import numpy as np


X_mbes_to_imu = 0.3
Y_mbes_to_imu = 0.
Z_mbes_to_imu = 0.
Rx_mbes_to_imu = 0.
Ry_mbes_to_imu = 0.
Rz_mbes_to_imu = 0.


def boatSimulatorInit():
    robotMarker = Marker()
    robotMarker.header.frame_id = "imu"
    quaternion = tf.transformations.quaternion_from_euler(0, 0, -np.pi/2)
    robotMarker.pose.position.x = 0.5
    robotMarker.pose.position.y = 0.05
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
    robotMarker.mesh_resource = "package://ulysse_tf/mesh/tinker.obj";
    return robotMarker

def boatSimulator(myTime):
    robotMarker.header.stamp    = myTime
    markerPub.publish(robotMarker)

def timeCallback(data):
    mbes_quat = tf.transformations.quaternion_from_euler(Rx_mbes_to_imu, Ry_mbes_to_imu, Rz_mbes_to_imu)
    mbes_broadcaster.sendTransform(
        (X_mbes_to_imu, Y_mbes_to_imu, Z_mbes_to_imu),
        odom_quat,
        data.header.stamp,
        "mbes",
        "imu"
    )
    boatSimulator(data.header.stamp)

if __name__=="__main__":

    rospy.init_node("mbes_to_sbg", anonymous=False, log_level=rospy.DEBUG)

    time_sub = rospy.Subscriber("/sbg/utc_time", SbgUtcTime, timeCallback)
    markerPub = rospy.Publisher('/ulysse/design', Marker, queue_size=10)

    robotMarker = boatSimulatorInit()

    while not rospy.is_shutdown():
#        boatSimulator(rospy.Time())
        time.sleep(0.001)
