import rosbag

with rosbag.Bag('Ligne2_sbg_mbes_navodom_marker.bag', 'w') as outbag:
    for topic, msg, t in rosbag.Bag('../Ligne2_mbes_equi_distant/2020-02-06-17-27-43.bag').read_messages():
        # This also replaces tf timestamps under the assumption 
        # that all transforms in the message share the same timestamp
        if topic == "/ulysse/mbes/data":
            for pt in msg.points:
                pt.x=pt.y
                pt.y=0
            outbag.write(topic, msg, t)
        elif topic == "/sbg/ekf_quat" or topic=="/sbg/ekf_nav" or topic=="/sbg/utc_time":
            outbag.write(topic, msg, t)
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
        elif topic =="/ulysse/design":
            msg.pose.position.x = -0.05
            msg.pose.position.y = 0.6
            msg.pose.position.z = -0.05
            msg.pose.orientation.x= 0
            msg.pose.orientation.y= 0
            msg.pose.orientation.z= 0
            msg.pose.orientation.w= 1
            outbag.write(topic, msg, t)
