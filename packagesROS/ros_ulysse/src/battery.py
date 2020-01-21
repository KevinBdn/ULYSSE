#!/usr/bin/env python2
import rospy
import rospkg
from sensor_msgs.msg import BatteryState
from diagnostic_msgs.msg import DiagnosticArray, DiagnosticStatus

class Battery(object):
    def __init__(self,pub_):
        self.diagnostics=DiagnosticArray()
        self.pub=pub_
    def battery_callback(self,data):
        #print(data.voltage)
        #print(data.current)
        #print(data.percentage)
        self.diagnostics.status=[DiagnosticStatus(level=0,name="battery battery_level", message=str(data.voltage))]
        self.diagnostics.header.stamp=rospy.Time.now()
        self.pub.publish(self.diagnostics)


        #voltage/current/charge/capacity/design_capacity
        #percentage....
        #more informations : http://docs.ros.org/melodic/api/sensor_msgs/html/msg/BatteryState.html
