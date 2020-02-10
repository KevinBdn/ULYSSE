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


X_mbes_to_imu = 0.2172
Y_mbes_to_imu = -0.0205
Z_mbes_to_imu = -0.1768
Rx_mbes_to_imu = 0.
Ry_mbes_to_imu = 0.
Rz_mbes_to_imu = 0.


def timeCallback(data):
    mbes_quat = tf.transformations.quaternion_from_euler(Rx_mbes_to_imu, Ry_mbes_to_imu, Rz_mbes_to_imu)
    mbes_broadcaster.sendTransform(
        (X_mbes_to_imu, Y_mbes_to_imu, Z_mbes_to_imu),
        mbes_quat,
        data.header.stamp,
        "mbes",
        "imu"
    )


if __name__=="__main__":

    rospy.init_node("mbes_to_imu", anonymous=False, log_level=rospy.DEBUG)

    time_sub = rospy.Subscriber("/sbg/utc_time", SbgUtcTime, timeCallback)

    mbes_broadcaster = tf.TransformBroadcaster()


    while not rospy.is_shutdown():
#        boatSimulator(rospy.Time())
        time.sleep(0.001)
