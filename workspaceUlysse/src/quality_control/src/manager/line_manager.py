#!/usr/bin/env python

"""
__author__  = "Kevin Bedin & Ombeline Le Gall"
__version__ = "1.0.1"
__date__    = "2020-02-19"
__status__  = "Development"
"""
"""
    The ``Quality control`` module
    ======================
    
    Use it to :
        - create line file in XYZ
        - apply the outlier controller
    
    Context
    -------------------
    Ulysse Unmaned Surface Vehicle
    
    Information
    ------------------------
    TODO :
        - implementation in C++

"""
import rospy
import rospkg
import time
import tf
import geometry_msgs.msg
import tf2_ros
from sensor_msgs.msg import PointCloud
from diagnostic_msgs.msg import KeyValue
from std_msgs.msg import Int16, String
import threading
from diagnostic_msgs.msg import DiagnosticArray, DiagnosticStatus

import outliers

PATH = rospkg.RosPack().get_path('quality_control')
RATIO_LEVEL = rospy.get_param('/quality_control/outlier/ratio', 0.04)
PACKET_SIZE = rospy.get_param('/quality_control/outlier/packet_size', 100)
ALPHA = rospy.get_param('/quality_control/outlier/alpha', 2.3)
WARNING_NUM = rospy.get_param('/quality_control/outlier/warning', 1)

def date():
    """
        Return the date in interpretable format.
    """
    a,m,j,hh,mm,ss,_,_,_=time.localtime()
    date=str(j)+"_"+str(m)+"_"+str(a)+"-"+str(hh)+"H"+str(mm)+"m"+str(ss)+"s"
    return(date)

def outlierFilter():
    """
        Function that calls the outlier controller
    """
    global state,status,comput_time,output_file_name,resul

    status = "Running"

    input_file = "/tmp/tmp_line.txt"
    output_file = PATH+"/LOGS/XYZ_lines/"+typeLine+"_"+init_date
    rospy.loginfo("Start filter")
    t0 = time.time()
    warn,ratio = outliers.outliers_filter(input_file,output_file,PACKET_SIZE,ALPHA,RATIO_LEVEL)
    t1 = time.time()
    comput_time = t1-t0
    resul = ratio
    rospy.loginfo("End filter: Warn:"+str(warn)+", Ratio: "+str(ratio)+", Time computing: "+str(round(t1-t0,3)))
    if warn:
        state = 1
        warning_pub.publish(Int16(WARNING_NUM))
    else:
        output_file_name = output_file.split('/')[-1]+".txt"
        filter_pub.publish(String(output_file+".txt"))
    status = "Not running"

def lineManager(state):
    """
        Callback function called when a new message comes from `/ulysse/navigation/line_status`.
        It informs about the current state of the acquisition. 
        It specifies if a line is operated or not and, if so, the type of the line.
        ---
        Input:
            state : the KeyValue input message
    """
    global f, inLine, typeLine, init_date, line_status

    if not(inLine) and state.key=="Start":
        rospy.loginfo("Start : "+state.value)
        typeLine=state.value
        init_date= date()
        f=open("/tmp/tmp_line.txt","w")
        inLine=True
        line_status = "Swath acquisition (%s)"%typeLine

    elif inLine and state.key=="End":
        rospy.loginfo("End : "+typeLine)
        inLine=False
        line_status = "Acquisition done"
        f.close()
        threading.Thread(target=outlierFilter).start()



def mbesSaver(PtCloud):
    """
        Callback function called when a new data from the MBES is available.
        It makes the TF between the mbes and the odom and saves it into a LOG file.
        ---
        Input:
            PtCloud : the ping data
    """
    if inLine:


    #    print(listener.lookupTransform('/mbes', '/map', rospy.Time()))

    #    print(t.lookup_transform('mbes', 'map', rospy.Time()))
    #    listener.waitForTransform('/mbes', '/map', rospy.Time(),rospy.Duration(0.1))
        PtCloud.header.stamp = listener.getLatestCommonTime('/mbes','/odom')
        PtCloud_map_frame = listener.transformPointCloud("/odom", PtCloud)


        i=1
        for point in PtCloud_map_frame.points:
            line = "%d %d %.10f %.10f %.10f\n"%(PtCloud.header.seq,i,point.x,point.y,point.z)
            i+=1
            if inLine: f.write(line)
            else: return None

if __name__ == '__main__':
    f=None
    inLine=False
    typeLine=""
    init_date=""

    state = 0
    line_status = "Waiting for a new swath"
    status = "Not running"
    output_file_name = "Not running"
    resul = "Not running"
    comput_time = "Not running"


    rospy.init_node('Line_manager')

    rospy.loginfo("\tALPHA %f"%(ALPHA))
    rospy.loginfo("\tPACKET SIZE %f"%(PACKET_SIZE))

    rospy.Subscriber("/ulysse/mbes/data", PointCloud, mbesSaver)
    rospy.Subscriber("/ulysse/navigation/line_status", KeyValue, lineManager)
    warning_pub = rospy.Publisher("/warning", Int16, queue_size=1)
    filter_pub = rospy.Publisher("/ulysse/filters/scheduler", String, queue_size=1)
    diag_pub = rospy.Publisher("/diagnostics",DiagnosticArray,queue_size=1)

#    t=tf2_ros.Buffer(rospy.Duration(1))

    listener = tf.TransformListener()
#    listener.waitForTransform('/mbes', '/odom', rospy.Time(),rospy.Duration(30.0))



    diagnostics=DiagnosticArray()
    while not rospy.is_shutdown():
        diagnostics.status.append(DiagnosticStatus(level=state,name="filters/line_manager/State", message=str(line_status)))
        diagnostics.status.append(DiagnosticStatus(level=state,name="filters/outlier/State", message=str(status)))
        diagnostics.status.append(DiagnosticStatus(level=state,name="filters/outlier/Packet size", message=str(PACKET_SIZE)))
        diagnostics.status.append(DiagnosticStatus(level=state,name="filters/outlier/Alpha coefficient", message=str(ALPHA)))
        diagnostics.status.append(DiagnosticStatus(level=state,name="filters/outlier/Acceptable percentage [%]", message=str(RATIO_LEVEL)))
        diagnostics.status.append(DiagnosticStatus(level=state,name="filters/outlier/Result [%]", message=str(resul)))
        diagnostics.status.append(DiagnosticStatus(level=state,name="filters/outlier/Output file", message=str(output_file_name)))
        diagnostics.status.append(DiagnosticStatus(level=state,name="filters/outlier/Computing time [s]", message=str(comput_time)))
        diagnostics.header.stamp=rospy.Time.now()
        diag_pub.publish(diagnostics)
        if state:
            state=0
        time.sleep(1)

    f.close()
