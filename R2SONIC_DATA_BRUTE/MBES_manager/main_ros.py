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
from affichage import *
from pointComputing import *

PATH = rospkg.RosPack().get_path('test')+"/src/MBES_manager/"


x=0
odom_broadcaster = tf.TransformBroadcaster()
markerPub = rospy.Publisher('/ulysse/design', Marker, queue_size=10)
def boatSimulator(dateS,dateNS):
    global x


    odom_quat = tf.transformations.quaternion_from_euler(0, 0, 0)
    odom_broadcaster.sendTransform(
        (x, 0, 0.),
        odom_quat,
        rospy.Time(dateS,dateNS),
        "base_link",
        "mbes"
    )
    x+=0.05



    robotMarker = Marker()
    robotMarker.header.frame_id = "base_link"
    robotMarker.header.stamp    = rospy.Time(dateS,dateNS)
    robotMarker.pose.position.x = x
    robotMarker.pose.orientation.x = 0
    robotMarker.pose.orientation.y = 0
    robotMarker.pose.orientation.z = 0
    robotMarker.pose.orientation.w = 1.0
    robotMarker.scale.x = 1.0
    robotMarker.scale.y = 1.0
    robotMarker.scale.z = 1.0
    robotMarker.color.r = 0.0
    robotMarker.color.g = 1.0
    robotMarker.color.b = 0.0
    robotMarker.color.a = 1.0
    robotMarker.mesh_resource = "package://"+PATH+"ressources/11806_boat_v1_L3.mtl";

    markerPub.publish(robotMarker)



if __name__ == '__main__':


    rospy.init_node("R2Sonic", anonymous=False, log_level=rospy.DEBUG)
    data_pub = rospy.Publisher("/ulysse/mbes/data",PointCloud, queue_size=5)


    f = open(PATH+"data/test.raw", "rb")
    svp = PATH+"data/1_2019-10-09_12-49-25_Up.asvp"
    svpArray = np.asarray(np.loadtxt(svp, delimiter=' ', skiprows = 1))
    
    #Construction d'un profil de celerite standard
    refSvp = cleanSVP(svpArray)
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
            if angles is not None:
                X,Y=[],[]
                X_b,Y_b=[],[]
                Cloud=PointCloud()
                Cloud.header.stamp=rospy.Time(dateS,dateNS)
                Cloud.header.seq=pingNum
                Cloud.header.frame_id="mbes"
                for i in range(len(angles)):
                    angle=angles[i]
                    time=times[i]#Two way
                    x_b, y_b = SVP_deviation(angle, time, -pi/2, refSvp.T)# In boat frame
                    X_b.append(x_b)
                    Y_b.append(y_b)
#                    V=localisation(x_b,y_b,0,P, Vr)#In earth frame
#                    X.append(V[0])
#                    Y.append(V[1])
                    Cloud.points.append(Point32(0,x_b,y_b))
                data_pub.publish(Cloud)
                boatSimulator(dateS,dateNS)
#                X_list.append(X)
#                Y_list.append(Y)
#                plt.plot(X,Y,'o')
#                plt.plot(X_b,Y_b,'o')
#                plt.show()
                n_packet+=1
                print("Packet number: ",n_packet)

            #print(angles,times)
    print("\n\nTotal complete packets: "+str(n_packet)+"\n\n")
    
    #Enregistrement des donnees du MBES
#    p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, X, Y = loadMBESdata(f, refSvp)
#    f.close()
#    #print(X,Y)
##    printMBESdata(p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, X, Y)
#    
#    #Affichage des points, avec application du profil
#    draw(X_list, Y_list, 400, 420)


