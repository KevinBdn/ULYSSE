#!/usr/bin/env python2
import rospy
import rospkg
from sensor_msgs.msg import BatteryState
from diagnostic_msgs.msg import DiagnosticArray, DiagnosticStatus


class State(object):
    def __init__(self,pub_):
        self.diagnostics=DiagnosticArray()
        self.pub=pub_
        self.state = None

    def state_callback(self,data):
        if (self.state != data.mode):
            self.state=data.mode
            print("New State :",self.state)

        self.diagnostics.status=[DiagnosticStatus(level=2,name="state state", message=self.state)]
        self.diagnostics.header.stamp=rospy.Time.now()
        self.pub.publish(self.diagnostics)


#For informations /mavros/state : http://docs.ros.org/api/mavros_msgs/html/msg/State.html
#bool connected
#bool armed
#bool guided
#bool manual_input
#string mode
#uint8 system_status
