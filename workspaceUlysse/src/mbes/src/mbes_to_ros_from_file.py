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

PATH = rospkg.RosPack().get_path('mbes')

raw_data_file="trames_6_2_2020-17H35m20s_EQUI_ANGLE.raw"
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
    X_list,Y_list=[],[]
    while angles is not None and not(rospy.is_shutdown()):
            angles,times,dateS,dateNS,pingNum=readMBESdata(f)
            P=np.array([0,0,0])#Position du bateau (x,y,z)  [GPS]
            Vr=np.array([0.01,0.1,0.1])#Vecteur rotation (Rx,Ry,Rz) angle d'euler [IMU]
            if angles is not None and angles!=[]:
                X,Y=[],[]
                X_b,Y_b=[],[]
                Cloud=PointCloud()
                Cloud.header.stamp=rospy.Time(dateS,dateNS)
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
                print("Packet number: ",n_packet,dateS,dateNS,len(angles))
            else:
                rospy.logwarn("Empty bathy packet")
    print("\n\nTotal complete packets: "+str(n_packet)+"\n\n")
    


