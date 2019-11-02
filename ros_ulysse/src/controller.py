#!/usr/bin/env python2
import rospy
import rospkg
from sensor_msgs.msg import BatteryState
from diagnostic_msgs.msg import DiagnosticArray, DiagnosticStatus
from mavros_msgs.msg import State as st
from mavros_msgs.msg import WaypointList
from battery import Battery
from state import State
from waypoints import Waypoint

class Controller(Battery, State, Waypoint):
    def __init__(self, pub_batt_,pub_state_,pub_wpt_):
        Battery.__init__(self,pub_batt_)
        State.__init__(self,pub_state_)
        Waypoint.__init__(self,pub_wpt_)



if __name__=='__main__':
    try:
        #Initialisation
        rospy.init_node("Controller")
        rate=rospy.Rate(1)

        #Publisher Init
        pub_battery = rospy.Publisher("/diagnostics",DiagnosticArray,queue_size=1)
        pub_state = rospy.Publisher("/diagnostics",DiagnosticArray,queue_size=1)
        pub_wpt = rospy.Publisher("/diagnostics",DiagnosticArray,queue_size=1)
        controller = Controller(pub_battery,pub_state,pub_wpt)

        while not rospy.is_shutdown():


            rospy.Subscriber("/mavros/battery",BatteryState,controller.battery_callback)
            rospy.Subscriber("/mavros/state",st, controller.state_callback)
            rospy.Subscriber("/mavros/mission/waypoints",WaypointList, controller.wpt_callback)


            rate.sleep()
    except rospy.ROSInterruptException:
        pass
