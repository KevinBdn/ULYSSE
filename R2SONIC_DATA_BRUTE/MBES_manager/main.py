#!/usr/bin/env python

from MBES import *
from SVP import *
from affichage import *
from pointComputing import *
from geometry_msgs.msg import PointCloud, Point32
import rospy
import time

if __name__ == '__main__':


    rospy.init_node("R2Sonic", anonymous=False, log_level=rospy.DEBUG)
    data_pub = rospy.Publisher("/ulysse/mbes/data",PointCloud, queue_size=5)

    f = open("data/test.raw", "rb")
    svp = "data/1_2019-10-09_12-49-25_Up.asvp"
    svpArray = np.asarray(np.loadtxt(svp, delimiter=' ', skiprows = 1))
    
    #Construction d'un profil de celerite standard
    refSvp = cleanSVP(svpArray)
    #print(refSvp)
    v=1474.2

    angles=True
    n_packet=0
    X_list,Y_list=[],[]
    while angles is not None:
            angles,times,dateS,dateNS,pingNum=readMBESdata(f)
            P=np.array([0,0,0])#Position du bateau (x,y,z)  [GPS]
            Vr=np.array([0.01,0.1,0.1])#Vecteur rotation (Rx,Ry,Rz) angle d'euler [IMU]
            if angles is not None:
                X,Y=[],[]
                X_b,Y_b=[],[]
                Cloud=PointCloud()
                Cloud.header.stamp=rospy.time(dateS,dateNS)
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
                    Cloud.points.append(Point32(x_b,y_b))
                    data_pub.publish(Cloud)
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


