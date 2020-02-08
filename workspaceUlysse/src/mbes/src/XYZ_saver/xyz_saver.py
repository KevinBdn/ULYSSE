#!/usr/bin/env python

#http://docs.ros.org/jade/api/tf/html/python/tf_python.html

#https://w3.cs.jmu.edu/spragunr/CS354_S14/labs/tf_lab/html/tf.listener-pysrc.html#TransformerROS.transformPointCloud

import rospy
import rospkg
import time
import tf
import geometry_msgs.msg
import tf2_ros
from sensor_msgs.msg import PointCloud


PATH = rospkg.RosPack().get_path('mbes')


def date():
    t=time.localtime()
    m=t[1]
    j=t[2]
    a=t[0]
    hh=t[3]
    mm=t[4]
    ss=t[5]
    date=str(j)+"_"+str(m)+"_"+str(a)+"-"+str(hh)+"H"+str(mm)+"m"+str(ss)+"s"
    return(date)





def mbesSaver(PtCloud):
    print("New data: ", PtCloud.header.seq)


#    print(listener.lookupTransform('/mbes', '/map', rospy.Time()))

#    print(t.lookup_transform('mbes', 'map', rospy.Time()))
#    listener.waitForTransform('/mbes', '/map', rospy.Time(),rospy.Duration(0.1))
    PtCloud.header.stamp = listener.getLatestCommonTime('/mbes','/odom')
    PtCloud_map_frame = listener.transformPointCloud("/odom", PtCloud)


    i=1
    for point in PtCloud_map_frame.points:
        line = "%d %d %.10f %.10f %.10f \n"%(PtCloud.header.seq,i,point.x,point.y,point.z)
        i+=1
        f.write(line)

if __name__ == '__main__':

    rospy.init_node('xyz_saver')

    init_date= date()
    f = open(PATH+"/LOGS/XYZ/xyz_"+init_date+".txt", "w")

#    t=tf2_ros.Buffer(rospy.Duration(1))

    listener = tf.TransformListener()
    listener.waitForTransform('/mbes', '/odom', rospy.Time(),rospy.Duration(10.0))

    mbesBeam = rospy.Subscriber("/ulysse/mbes/data", PointCloud, mbesSaver)

    while not rospy.is_shutdown():
        time.sleep(0.001)
        pass

    f.close()
