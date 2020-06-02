import rosbag
from std_msgs.msg import Float32
from diagnostic_msgs.msg import KeyValue

import time

state=0
with rosbag.Bag('Bag_rectified.bag', 'w') as outbag:
    for topic, msg, t in rosbag.Bag('2020-02-06-17-27-43.bag').read_messages():
        # This also replaces tf timestamps under the assumption 
        # that all transforms in the message share the same timestamp

        #Rajout des status des lignes au cours de l'acquisition
        if state == 0 and t.secs>1581006481:
            outbag.write("/ulysse/navigation/line_status", KeyValue("Start","Reg"), t)
            state+=1
        if state == 1 and t.secs>1581006525:
            outbag.write("/ulysse/navigation/line_status", KeyValue("End","Reg"), t)
            state+=1
        if state == 2 and t.secs>1581006567:
            outbag.write("/ulysse/navigation/line_status", KeyValue("Start","Reg"), t)
            state+=1
        if state == 3 and t.secs>1581006613:
            outbag.write("/ulysse/navigation/line_status", KeyValue("End","Reg"), t)
            state+=1
        if state == 4 and t.secs>1581006669:
            outbag.write("/ulysse/navigation/line_status", KeyValue("Start","Reg"), t)
            state+=1
        if state == 5 and t.secs>1581006716:
            outbag.write("/ulysse/navigation/line_status", KeyValue("End","Reg"), t)
            state+=1
        if state == 6 and t.secs>1581006776:
            outbag.write("/ulysse/navigation/line_status", KeyValue("Start","Trav"), t)
            state+=1
        if state == 7 and t.secs>1581006816:
            outbag.write("/ulysse/navigation/line_status", KeyValue("End","Trav"), t)
            state+=1

        #Rajout SSV
        if topic == "/diagnostics":
            outbag.write(topic, msg, t)
            for data in msg.status:
                if "SSV" in data.name:
                    outbag.write("/ulysse/ssv", Float32(float(data.message)), t)

        #Correction du MBES
        if topic == "/ulysse/mbes/data":
            for pt in msg.points:
                pt.x=pt.y
                pt.y=0
            outbag.write(topic, msg, t)

        elif topic == "/sbg/ekf_quat" or topic=="/sbg/ekf_nav" or topic=="/sbg/utc_time":
            outbag.write(topic, msg, t)

        #Correction du repère NED -> ENU
        elif topic == "/nav_odom":
            msg.pose.pose.orientation.z = msg.pose.pose.orientation.z* -1
            msg.pose.pose.orientation.x, msg.pose.pose.orientation.y = msg.pose.pose.orientation.y, msg.pose.pose.orientation.x
            msg.pose.pose.position.x,msg.pose.pose.position.y, =  msg.pose.pose.position.y,msg.pose.pose.position.x
#            msg.pose.covariance=[0.1,0,0,0,0,0,
#                                 0,0.1,0,0,0,0,
#                                 0,0,0.1,0,0,0,
#                                 0,0,0,0.1,0,0,
#                                 0,0,0,0,0.1,0,
#                                 0,0,0,0,0,0.1]
            outbag.write(topic, msg, t)

        #Correction du design
        elif topic =="/ulysse/design":
            msg.pose.position.x = -0.05
            msg.pose.position.y = 0.6
            msg.pose.position.z = -0.05
            msg.pose.orientation.x= 0
            msg.pose.orientation.y= 0
            msg.pose.orientation.z= 0
            msg.pose.orientation.w= 1
            outbag.write(topic, msg, t)
