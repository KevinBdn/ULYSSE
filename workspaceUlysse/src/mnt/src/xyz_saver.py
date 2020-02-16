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
        - create a MNT from the `MBES` data.
    
    Context
    -------------------
    Ulysse Unmaned Surface Vehicle
    
    Information
    ------------------------
    TODO :
        - implementation in C++

    Documentation :
        - http://docs.ros.org/jade/api/tf/html/python/tf_python.html
        - https://w3.cs.jmu.edu/spragunr/CS354_S14/labs/tf_lab/html/tf.listener-pysrc.html#TransformerROS.transformPointCloud
    
"""
import rospy
import rospkg
import time
import tf
import geometry_msgs.msg
import tf2_ros
from sensor_msgs.msg import PointCloud


PATH = rospkg.RosPack().get_path('mnt')


def date():
    """
        Return the date in interpretable format.
    """
    a,m,j,hh,mm,ss,_,_,_=time.localtime()
    date=str(j)+"_"+str(m)+"_"+str(a)+"-"+str(hh)+"H"+str(mm)+"m"+str(ss)+"s"
    return(date)




def mbesSaver(PtCloud):
    """
        Callback function called when a new data from the MBES is available.
        It makes the TF between the mbes and the odom and saves it into a LOG file.
        ---
        Input:
            PtCloud : the ping data
    """
    global N
    print("New data: ", N)
    N+=1

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

    N=1
    rospy.init_node('MNT_saver')

    init_date= date()
    f = open(PATH+"/LOGS/XYZ/xyz_"+init_date+".txt", "w")

#    t=tf2_ros.Buffer(rospy.Duration(1))

    listener = tf.TransformListener()
    listener.waitForTransform('/mbes', '/odom', rospy.Time(),rospy.Duration(30.0))

    mbesBeam = rospy.Subscriber("/ulysse/mbes/data", PointCloud, mbesSaver)

    while not rospy.is_shutdown():
        time.sleep(0.001)
        pass

    f.close()
