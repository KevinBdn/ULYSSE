#!/usr/bin/env python
"""
__author__  = "Kevin Bedin"
__version__ = "1.0.1"
__date__    = "2019-12-01"
__status__  = "Development"
"""
"""
    The ``MBES`` module
    ======================
    
    Use it to :
        - get MBES raw data from LOG file
        - publish it in `PointCloud` message in `/ulysse/mbes/data` ROS topic
    
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


from MBES import *
from SVP import *

PATH = rospkg.RosPack().get_path('mbes')

#raw_data_file="trames_6_2_2020-17H35m20s_EQUI_ANGLE.raw"
raw_data_file="trames_6_2_2020-17H26m15s_EQUI_DISTANT.raw"
svp_data_file="1_2020-02-03_14-59-35_Up.asvp"



if __name__ == '__main__':


    rospy.init_node("R2Sonic", anonymous=False, log_level=rospy.DEBUG)
    data_pub = rospy.Publisher("/ulysse/mbes/data",PointCloud, queue_size=50)


    f = open(PATH+"/LOGS/R2SONIC/"+raw_data_file, "rb")
    svp = PATH+"/RESOURCES/SVP/"+svp_data_file
    svpArray = np.asarray(np.loadtxt(svp, delimiter=' ', skiprows = 1))
    
    #Construction d'un profil de celerite standard
#    refSvp = cleanSVP(svpArray)
    refSvp = svpArray
    #print(refSvp)
    v=1474.2

    x=0
    angles=True
    n_packet=0

    while angles is not None and not(rospy.is_shutdown()):
            angles,times,dateS,dateNS,pingNum=readMBESdata(f)
            if angles is not None and angles!=[]:
                Cloud=PointCloud()
                Cloud.header.stamp=rospy.Time(dateS,dateNS)
                Cloud.header.frame_id="mbes"
                for i in range(len(angles)):
                    angle=angles[i]
                    time=times[i]#Two way
                    x_b, z_b = SVP_deviation(angle, time, -pi/2, refSvp.T)# In boat frame
#                    print("N:",n_packet,x_b,y_b)
                    Cloud.points.append(Point32(x_b,0,z_b))
                data_pub.publish(Cloud)
                n_packet+=1
                print("Packet number: ",n_packet,dateS,dateNS,len(angles))
            else:
                rospy.logwarn("Empty bathy packet")
    print("\n\nTotal complete packets: "+str(n_packet)+"\n\n")
    


