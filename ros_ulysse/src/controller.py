#!/usr/bin/env python2
#-*- coding: utf-8 -*-
import rospy
import rospkg
from std_msgs.msg import Int16
from sensor_msgs.msg import BatteryState
from mavros_msgs.msg import WaypointList,State
from diagnostic_msgs.msg import DiagnosticArray, DiagnosticStatus
from mavros_msgs.msg import State as st
from mavros_msgs.msg import WaypointList
from battery import Battery
from state import State
from waypoints import Waypoint
import mavros_msgs.srv
class Controller(object):
    def __init__(self,battery_min=20):
        self.diag_pub = rospy.Publisher("/diagnostics",DiagnosticArray,queue_size=1)
        self.battery_sub = rospy.Subscriber("/mavros/battery",BatteryState,self.battery_callback)
        #self.state_sub=rospy.Subscriber("/mavros/state",State,self.state_callback)
        self.waypoints_sub = rospy.Subscriber("/mavros/mission/waypoints",WaypointList,self.waypoints_callback)
        self.warning = rospy.Subscriber ("/warning", Int16, self.warning_callback )

        self.warning_info_list = []
        self.battery_min = battery_min
        self.wp_enregistre  = 0

        rospy.logwarn("Hello, création du noeud")

    def battery_callback(self,data):
        diagnostics=DiagnosticArray()
        diagnostics.status=[DiagnosticStatus(level=(data.voltage<self.battery_min),name="controller/battery_level/Niveau", message="{0:.2f}".format(data.voltage))]
        diagnostics.header.stamp=rospy.Time.now()
        self.diag_pub.publish(diagnostics)
        #voltage/current/charge/capacity/design_capacity
        #percentage....
        #more informations : http://docs.ros.org/melodic/api/sensor_msgs/html/msg/BatteryState.html

    def state_callback(self,data):
        diagnostics=DiagnosticArray()
        diagnostics.status=[]
        diagnostics.status.append(DiagnosticStatus(level=0,name="controller/state/Mode", message=data.mode))
        diagnostics.status.append(DiagnosticStatus(level=0,name="controller/state/Armed", message=data.armed*"Armed"+(1-data.armed)*"Disarmed"))
        diagnostics.header.stamp=rospy.Time.now()
        self.diag_pub.publish(diagnostics)


    def waypoints_callback(self,data):
        rospy.logwarn("Changement de waypoint")
        rospy.logwarn("Nouveau waypoint :" + str(data.current_seq))
        n=len(data.waypoints)
        self.current_wp = data.current_seq
        diagnostics=DiagnosticArray()
        diagnostics.status=[]
        diagnostics.status.append(DiagnosticStatus(level=0,name="controller/waypoints/Number", message=str(n)))
        diagnostics.header.stamp=rospy.Time.now()
        self.diag_pub.publish(diagnostics)
        self.fsm()


        # Waypoint Data
        # uint16 current_seq
        # mavros_msgs/Waypoint[] waypoints

    def warning_callback (self, data):
        self.warning = data.data
        rospy.logwarn("Warning, type" + str(self.warning))
        self.wp_enregistre = self.current_wp
        now = rospy.get_rostime()
        self.warning_info_list.append((now,self.warning,(self.wp_enregistre-1, self.wp_enregistre)))
        print(self.warning_info_list)

        rospy.logwarn("Waypoint enregistre :" + str(self.wp_enregistre))

    def fsm(self):
            if (self.warning == 1 ):
                if (self.current_wp == (self.wp_enregistre + 1)):
                    rospy.wait_for_service('/mavros/mission/set_current') # timeout ?
                    try:
                        current_wpt = rospy.ServiceProxy('/mavros/mission/set_current', mavros_msgs.srv.WaypointSetCurrent)
                        wpt = current_wpt(wp_seq = (self.wp_enregistre-1))
                        rospy.logwarn("Nouveau waypoint de correction :" + str(self.wp_enregistre-1))
                        self.warning = 0.0
                    except rospy.ServiceException, e:
                        rospy.logwarn("Erreur")




if __name__=='__main__':
    try:
        rospy.init_node("Controller", anonymous=True)
        controller=Controller(battery_min=12)
        #controller.warning_callback()
        rate=rospy.Rate(1)

        while not rospy.is_shutdown():
            rospy.spin()
            rate.sleep()

    except rospy.ROSInterruptException:
        pass
