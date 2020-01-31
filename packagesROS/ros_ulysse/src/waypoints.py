#!/usr/bin/env python2
import rospy
import rospkg


class Waypoint(object):
    def __init__(self,pub_):
        self.pub=pub_

    def wpt_callback(self,data):
        print("helele")
        print(data.current_seq)
        print(data.waypoints)



#For more informations : http://docs.ros.org/api/mavros_msgs/html/msg/WaypointList.html
#Waypoints List :
#uint16 current_seq
#mavros_msgs/Waypoint[] waypoints
