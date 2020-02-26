#!/usr/bin/env python
#-*- coding: utf-8 S
import rospy
import rospkg


from mavros_msgs.msg import Waypoint
from mavros_msgs.srv import WaypointPush
from mavros_msgs.srv import WaypointPushRequest
from mavros_msgs.msg import CommandCode



class Load_wp(object):
    def __init__(self):
        self.data = []
        self.waypoints_list = []

    def parse_file(self):
        file = open("/home/clement/catkin_ws/src/ros_ulysse/src/test.txt","r")
        L = file.readlines()
        nb_wp = len (L)
        print ("Nombre de waypoints :", nb_wp)
        self.req = WaypointPushRequest()
        for i in range (len(L)-1):
            ligne = L[i+1].split("\t")
            wp = Waypoint()

            wp.frame = Waypoint.FRAME_GLOBAL
            wp.command = CommandCode.NAV_WAYPOINT #Navigate to Waypoint
            wp.is_current = bool(ligne[1])
            wp.autocontinue = bool(ligne[2])
            wp.param1 = float(ligne[4])
            wp.param2 = float(ligne[5])
            wp.param3 = float(ligne[6])
            wp.param4 = float(ligne[7])
            wp.x_lat = float(ligne[8])
            wp.y_long = float(ligne[9])
            wp.z_alt = float(ligne[10])

            self.waypoints_list.append(wp)

        self.req.waypoints = self.waypoints_list
        print(type(self.req.waypoints))


    def send(self):
        rospy.wait_for_service('/mavros/mission/push')
        try:
            service = rospy.ServiceProxy('/mavros/mission/push', WaypointPush)
            resp = service(waypoints=self.req.waypoints)
        except rospy.ServiceException as e:
            print(self.namespace, 'service call to push waypoints failed')

# Infos about msgs:
#   http://docs.ros.org/melodic/api/mavros_msgs/html/msg/CommandCode.html
#   http://docs.ros.org/api/mavros_msgs/html/msg/Waypoint.html

if __name__ == "__main__":

    load = Load_wp()
    load.parse_file()
    load.send()
