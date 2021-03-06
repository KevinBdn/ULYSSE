#!/usr/bin/env python

"""
__author__  = "Kevin Bedin"
__version__ = "1.0.1"
__date__    = "2019-12-01"
__status__  = "Development"
"""
"""
    The ``MNT`` module
    ======================
    
    Use it to :
        - play a MNT LOG file in ROS.
    
    Context
    -------------------
    Ulysse Unmaned Surface Vehicle
    
    Information
    ------------------------
    TODO :
        - implementation in C++
"""

import time

import rospy
import rospkg
import tf
from geometry_msgs.msg import Point32
from sensor_msgs.msg import PointCloud
from visualization_msgs.msg import Marker

PATH = rospkg.RosPack().get_path('mnt')

mnt_data_file="xyz_16_2_2020-11H39m38s.txt"



def timeCallback():
    """
        Function called to publish the TF between the mbes and the odom.
    """
    mbes_quat = tf.transformations.quaternion_from_euler(0, 0, 0)
    mbes_broadcaster.sendTransform(
        (0, 0, 0),
        mbes_quat,
        rospy.Time(),
        "mbes",
        "odom"
    )


if __name__ == '__main__':


    rospy.init_node("MNT_player", anonymous=False, log_level=rospy.DEBUG)
    data_pub = rospy.Publisher("/ulysse/mbes/data",PointCloud, queue_size=50)


    mbes_broadcaster = tf.TransformBroadcaster()
    mnt = PATH+"/LOGS/XYZ/"+mnt_data_file
    mnt_file = open(mnt, "r")
    
    #Construction d'un profil de celerite standard
#    refSvp = cleanSVP(svpArray)
    #print(refSvp)

    n=0
    X_list,Y_list=[],[]
    while not(rospy.is_shutdown()):
            Cloud=PointCloud()
            Cloud.header.stamp=rospy.Time()
            Cloud.header.frame_id="mbes"
            n=0
            while (n!=256):
                line = mnt_file.readline()
                data = line.split(" ")
                ping, beam, x, y, z = data[0],data[1],data[2],data[3],data[4]
                Cloud.points.append(Point32(float(x),float(y),float(z)))
                n+=1
#                    print("Data read")
#                except:
#                    print("Error")
#                    pass
            data_pub.publish(Cloud)
            timeCallback()
            time.sleep(0.02)
    
    mnt.close()

