#!/usr/bin/env python
import time

import rospy
import rospkg
import tf
from geometry_msgs.msg import Point32
from sensor_msgs.msg import PointCloud
from visualization_msgs.msg import Marker

import numpy as np


def boatSimulator():

    myTime=rospy.Time()

    odom_quat = tf.transformations.quaternion_from_euler(0, 0, 0)
    odom_broadcaster.sendTransform(
        (x, 0, 0.),
        odom_quat,
        myTime,
        "imu",
        "map"
    )

    mbes_quat = tf.transformations.quaternion_from_euler(0, 0, 0)
    mbes_broadcaster.sendTransform(
        (0.3, 0, 0.),
        odom_quat,
        myTime,
        "mbes",
        "imu"
    )

    robotMarker = Marker()
    robotMarker.header.frame_id = "imu"
    robotMarker.header.stamp    = myTime
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
    markerPub.publish(robotMarker)

if __name__=="__main__":

    rospy.init_node("sbg_to_map", anonymous=False, log_level=rospy.DEBUG)
    x=0
    odom_broadcaster = tf.TransformBroadcaster()
    mbes_broadcaster = tf.TransformBroadcaster()
    markerPub = rospy.Publisher('/ulysse/design', Marker, queue_size=10)
    while not rospy.is_shutdown():
        boatSimulator()
        x+=0.5
        time.sleep(0.3)
