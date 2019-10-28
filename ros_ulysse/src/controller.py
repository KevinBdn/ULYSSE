#!/usr/bin/env python
import rospy
import rospkg
from sensor_msgs.msg import BatteryState
from diagnostic_msgs.msg import DiagnosticArray, DiagnosticStatus

class Controller(object):
    def __init__(self,pub_):
        self.diagnostics=(DiagnosticArray())
        self.pub=pub_

    def battery_callback(self,data):
        print(data.voltage)
        print(data.current)
        print(data.percentage)
        self.diagnostics.status=[DiagnosticStatus(level=1,name="battery_level", message=data.voltage)]
        self.pub.publish(self.diagnostics)
        self.diagnostics.header.stamp=rospy.Time.now()
        #voltage/current/charge/capacity/design_capacity
        #percentage....
        #more informations : http://docs.ros.org/melodic/api/sensor_msgs/html/msg/BatteryState.html




if __name__=='__main__':
    try:
        rospy.init_node("Controller")
        pub = rospy.Publisher("/diagnostics",DiagnosticArray,queue_size=1)
        rate=rospy.Rate(1)
        while not rospy.is_shutdown():
            controller = Controller(pub)
            rospy.Subscriber("/mavros/battery",BatteryState,controller.battery_callback)
            rate.sleep()

    except rospy.ROSInterruptException:
        pass
