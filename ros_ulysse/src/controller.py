#!/usr/bin/env python2
import rospy
import rospkg
from sensor_msgs.msg import BatteryState
from mavros_msgs.msg import WaypointList,State
from diagnostic_msgs.msg import DiagnosticArray, DiagnosticStatus
from mavros_msgs.msg import State as st
from mavros_msgs.msg import WaypointList
from battery import Battery
from state import State
from waypoints import Waypoint

<<<<<<< HEAD
class Controller(Battery, State, Waypoint):
    def __init__(self, pub_batt_,pub_state_,pub_wpt_):
        Battery.__init__(self,pub_batt_)
        State.__init__(self,pub_state_)
        Waypoint.__init__(self,pub_wpt_)
=======
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
>>>>>>> upstream/master

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
        #Initialisation
        rospy.init_node("Controller")
<<<<<<< HEAD
=======
        controller=Controller(battery_min=12)
>>>>>>> upstream/master
        rate=rospy.Rate(1)

        #Publisher Init
        pub_battery = rospy.Publisher("/diagnostics",DiagnosticArray,queue_size=1)
        pub_state = rospy.Publisher("/diagnostics",DiagnosticArray,queue_size=1)
        pub_wpt = rospy.Publisher("/diagnostics",DiagnosticArray,queue_size=1)
        controller = Controller(pub_battery,pub_state,pub_wpt)

        while not rospy.is_shutdown():
<<<<<<< HEAD


            rospy.Subscriber("/mavros/battery",BatteryState,controller.battery_callback)
            rospy.Subscriber("/mavros/state",st, controller.state_callback)
            rospy.Subscriber("/mavros/mission/waypoints",WaypointList, controller.wpt_callback)
=======
            rospy.spin()
            rate.sleep()
>>>>>>> upstream/master


            rate.sleep()
    except rospy.ROSInterruptException:
        pass
