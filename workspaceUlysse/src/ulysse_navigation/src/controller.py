#!/usr/bin/env python
#-*- coding: utf-8 -*-
import rospy
import rospkg
from std_msgs.msg import Int16
from sensor_msgs.msg import BatteryState
from mavros_msgs.msg import WaypointList,State
from diagnostic_msgs.msg import DiagnosticArray, DiagnosticStatus
from mavros_msgs.msg import State
from mavros_msgs.msg import WaypointList
from battery import Battery
from waypoints import Waypoint
import mavros_msgs.srv

import threading

class Controller(object):
    def __init__(self,battery_min=20):
        self.diag_pub = rospy.Publisher("/diagnostics",DiagnosticArray,queue_size=1)
        self.battery_sub = rospy.Subscriber("/mavros/battery",BatteryState,self.battery_callback)
        self.state_sub=rospy.Subscriber("/mavros/state",State,self.state_callback)
        self.waypoints_sub = rospy.Subscriber("/mavros/mission/waypoints",WaypointList,self.waypoints_callback)
        self.warning = rospy.Subscriber ("/warning", Int16, self.warning_callback )

        self.warning_info_list = []
        self.battery_min = battery_min
        self.wp_enregistre  = 0
        self.wp_number = 0
        self.current_wp = 0


        self.arming="Disarmed" #Armed or Disarmed
        self.mode="HOLD" #HOLD, LOITER, AUTO, MANUAL
        rospy.logwarn("Hello, création du noeud")

    def battery_callback(self,data):
        diagnostics=DiagnosticArray()
        diagnostics.status.append(DiagnosticStatus(level=(data.voltage<self.battery_min),name="controller/battery_level/Level", message="{0:.2f}".format(data.voltage)))
        diagnostics.header.stamp=rospy.Time.now()
        self.diag_pub.publish(diagnostics)
        #voltage/current/charge/capacity/design_capacity
        #percentage....
        #more informations : http://docs.ros.org/melodic/api/sensor_msgs/html/msg/BatteryState.html

    def state_callback(self,data):
        self.arming=data.armed*"Armed"+(1-data.armed)*"Disarmed"
        self.mode=data.mode
        diagnostics=DiagnosticArray()
        diagnostics.status.append(DiagnosticStatus(level=0,name="controller/state/Arming", message=self.arming))
        diagnostics.status.append(DiagnosticStatus(level=0,name="controller/state/Mode", message=self.mode))
        diagnostics.header.stamp=rospy.Time.now()
        self.diag_pub.publish(diagnostics)


    def waypoints_callback(self,data):
        rospy.logwarn("Changement de waypoint")
        rospy.logwarn("Nouveau waypoint :" + str(data.current_seq))
        self.wp_number=len(data.waypoints)
        self.current_wp = data.current_seq
        diagnostics=DiagnosticArray()
        diagnostics.status.append(DiagnosticStatus(level=0,name="controller/waypoints/Number", message=str(self.wp_number)))
        diagnostics.status.append(DiagnosticStatus(level=0,name="controller/waypoints/Current", message=str(self.current_wp)))
        diagnostics.header.stamp=rospy.Time.now()
        self.diag_pub.publish(diagnostics)
        self.wpt_chang()


        # Waypoint Data
        # uint16 current_seq
        # mavros_msgs/Waypoint[] waypoints

    def warning_callback (self, data):
        self.warning = data.data
        rospy.logwarn("Warning, type" + str(self.warning))
        if (self.warning == 1):
            self.wp_enregistre = self.current_wp
            now = rospy.get_rostime()
            self.warning_info_list.append((now,self.warning,(self.wp_enregistre-1, self.wp_enregistre)))
            #warning_info_list((time,type_warning,(wp_pre_l'erreur,wp_suivant_l'erreur))
            rospy.logwarn("Waypoint enregistre :" + str(self.wp_enregistre))
        elif (self.warning == -1):
            rospy.logwarn("Mode Loiter activé")
            self.stop()



    def wpt_chang(self):
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


    def stop(self):
        rospy.wait_for_service('/mavros/set_mode') # timeout ?
        try:
            mode = rospy.ServiceProxy('/mavros/set_mode', mavros_msgs.srv.SetMode)
            mode_ = mode(custom_mode = "HOLD")
            rospy.logwarn("Mode HOLD activé")
            self.warning = 0.0
        except rospy.ServiceException, e:
            rospy.logwarn("Erreur")

              # rosservice call /mavros/set_mode  "base_mode: 0
              # custom_mode: 'HOLD'"

    def diagnostic_publisher(self):

        diagnostics=DiagnosticArray()
        while not(rospy.is_shutdown()):
            diagnostics.status.append(DiagnosticStatus(level=0,name="controller/waypoints/Number", message=str(self.wp_number)))
            diagnostics.status.append(DiagnosticStatus(level=0,name="controller/waypoints/Current", message=str(self.current_wp)))
            diagnostics.status.append(DiagnosticStatus(level=0,name="controller/state/Mode", message=self.mode))
            diagnostics.status.append(DiagnosticStatus(level=0,name="controller/state/Arming", message=self.arming))
            diagnostics.header.stamp=rospy.Time.now()
            self.diag_pub.publish(diagnostics)
            rospy.sleep(0.5)

if __name__=='__main__':
    try:
        rospy.init_node("Controller", anonymous=True)
        controller=Controller(battery_min=12)
        #controller.warning_callback()
        rate=rospy.Rate(1)

        # To publish diagnostic message when any callback function is called (for state, and waypoint for instance)
        diag_thread=threading.Thread(target=controller.diagnostic_publisher)
        diag_thread.start()

        while not rospy.is_shutdown():
            rospy.spin()
            rate.sleep()

    except rospy.ROSInterruptException:
        pass
