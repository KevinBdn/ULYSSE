#!/usr/bin/env python
import time

import rospy
import rospkg
import tf
from geometry_msgs.msg import Point32
from sensor_msgs.msg import PointCloud
from visualization_msgs.msg import Marker

from MBES import *
from SVP import *
from pointComputing import *

PATH = rospkg.RosPack().get_path('mbes')

svp_data_file="1_2020-02-03_14-59-35_Up.asvp"


if __name__ == '__main__':


    rospy.init_node("R2Sonic", anonymous=False, log_level=rospy.DEBUG)
    data_pub = rospy.Publisher("/ulysse/mbes/data",PointCloud, queue_size=50)


    socket, saving_file = initMBESsocket(PATH)

    svp = PATH+"/RESOURCES/SVP/"+svp_data_file
    svpArray = np.asarray(np.loadtxt(svp, delimiter=' ', skiprows = 1))
    
    #Construction d'un profil de celerite standard
#    refSvp = cleanSVP(svpArray)
    refSvp = svpArray
    #print(refSvp)

    n_packet=0
    X_list,Y_list=[],[]
    while not(rospy.is_shutdown()):
            angles,times,dateS,dateNS,pingNum=getMBESdata(socket, saving_file)
            if angles is not None:
                X,Y=[],[]
                X_b,Y_b=[],[]
                Cloud=PointCloud()
                Cloud.header.stamp=rospy.Time(dateS,dateNS)
#                Cloud.header.seq=pingNum
                Cloud.header.frame_id="mbes"
                for i in range(len(angles)):
                    angle=angles[i]
                    time=times[i]#Two way
                    x_b, y_b = SVP_deviation(angle, time, -pi/2, refSvp.T)# In boat frame
                    X_b.append(x_b)
                    Y_b.append(y_b)
                    Cloud.points.append(Point32(0,x_b,y_b))
                data_pub.publish(Cloud)
                n_packet+=1
                print("Packet number: ",dateS,dateNS,n_packet,Cloud.header.seq,len(angles))
            else:
                rospy.logwarn("Empty bathy packet")
            #print(angles,times)
    print("\n\nTotal complete packets: "+str(n_packet)+"\n\n")
    
    closeMBESsocket(socket,saving_file)


