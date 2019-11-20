#!/usr/bin/env python
import rospy
import rospkg
from sensor_msgs.msg import BatteryState
from mavros_msgs.msg import WaypointList,State
from diagnostic_msgs.msg import DiagnosticArray, DiagnosticStatus

class Controller(object):
    def __init__(self,battery_min=20):
        self.diag_pub=rospy.Publisher("/diagnostics",DiagnosticArray,queue_size=1)
        self.battery_sub=rospy.Subscriber("/mavros/battery",BatteryState,self.battery_callback)
        self.state_sub=rospy.Subscriber("/mavros/state",State,self.state_callback)
        self.waypoints_sub=rospy.Subscriber("/mavros/mission/waypoints",WaypointList,self.waypoints_callback)
        self.battery_min=battery_min

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
        print("Call")
        n=len(data.waypoints)
        diagnostics=DiagnosticArray()
        diagnostics.status=[]
        diagnostics.status.append(DiagnosticStatus(level=0,name="controller/waypoints/Number", message=str(n)))
        diagnostics.header.stamp=rospy.Time.now()
        self.diag_pub.publish(diagnostics)


if __name__=='__main__':
    try:
        rospy.init_node("Controller")
        controller=Controller(battery_min=12)
        rate=rospy.Rate(1)
        while not rospy.is_shutdown():
            rospy.spin()
            rate.sleep()

    except rospy.ROSInterruptException:
        pass
