#!/usr/bin/env python
#-*- coding: utf-8 -*-

"""
__author__  = "Kevin Bedin, Clement Bichat, Aurelien Grenier"
__version__ = "1.0.1"
__date__    = "2020-01-20"
__status__  = "Development"

"""

"""
Contexte :
        - Ulysse Unmaned Surface Vehicule
        - Utilisation avec ROS et le package Mavros

Objectif :
        - Lors de la réception d'un warning sur le topic /warning ,une consigne
          de waypoint est envoyé dans le service /mavros/mission/set_current
          afin d'effectuer à nouveau la fauchée.
        - Diagnostique

Documentation :
        - http://wiki.ros.org/mavros_msgs
"""


import rospy
import rospkg
from std_msgs.msg import Int16
from sensor_msgs.msg import BatteryState
from mavros_msgs.msg import WaypointList,State
from diagnostic_msgs.msg import DiagnosticArray, DiagnosticStatus, KeyValue
from mavros_msgs.msg import State
from mavros_msgs.msg import WaypointList
import mavros_msgs.srv
import threading

class Controller(object):
    def __init__(self,battery_min=20):
        self.diag_pub = rospy.Publisher("/diagnostics",DiagnosticArray,queue_size=1)
        self.nav_pub = rospy.Publisher("/navigation/line_status",KeyValue,queue_size=1)
        self.battery_sub = rospy.Subscriber("/mavros/battery",BatteryState,self.battery_callback)
        self.state_sub=rospy.Subscriber("/mavros/state",State,self.state_callback)
        self.waypoints_sub = rospy.Subscriber("/mavros/mission/waypoints",WaypointList,self.waypoints_callback)
        self.warning = rospy.Subscriber ("/warning", Int16, self.warning_callback )

        self.waypoints_list = []
        self.last_waypoint_list = []
        self.warning_list = []

        self.last_waypoint_dictionnary = {}
        self.nbr_reg = 0 # Nombre de lignes traversières
        self.nbr_trav = 0  # Nombre de lignes régulières

        self.battery_min = battery_min
        self.wp_enregistre  = 0
        self.wp_number = 0
        self.current_wp = 0
        self.last_waypoint = 0
        self.waypoint_warning = 0

        self.arming="Disarmed" #Armed or Disarmed
        self.mode="HOLD" #HOLD, LOITER, AUTO, MANUAL
        rospy.logwarn("Hello, création du noeud")

    def battery_callback(self,data):
        """
        Callback de lecture de la tension de la batterie
        Entrée :
            data : sensor_msgs BatteryState Message
        """
        diagnostics=DiagnosticArray()
        diagnostics.status.append(DiagnosticStatus(level=(data.voltage<self.battery_min),name="controller/battery_level/Level", message="{0:.2f}".format(data.voltage)))
        diagnostics.header.stamp=rospy.Time.now()
        self.diag_pub.publish(diagnostics)
        #voltage/current/charge/capacity/design_capacity
        #percentage....
        #more informations : http://docs.ros.org/melodic/api/sensor_msgs/html/msg/BatteryState.html

    def state_callback(self,data):
        """
        Callback de lecture de l'état du drone :
            - Armed ou Disarmed et Mode (Hold, Manual, Loiter...)
            - Publication de diagnostics
        Entrée :
            data : mavros_msgs State Message
        """
        self.arming=data.armed*"Armed"+(1-data.armed)*"Disarmed"
        self.mode=data.mode
        diagnostics=DiagnosticArray()
        diagnostics.status.append(DiagnosticStatus(level=0,name="controller/state/Arming", message=self.arming))
        diagnostics.status.append(DiagnosticStatus(level=0,name="controller/state/Mode", message=self.mode))
        diagnostics.header.stamp=rospy.Time.now()
        self.diag_pub.publish(diagnostics)


    def waypoints_callback(self,data):
        """
        Callback appelé à chaque passage de waypoint : 
            - Détection de début et fin de ligne + publication sur /navigation/line_status
            - Enregistrement des waypoints de fin de lignes
            - Enregistrement dans un dictionnaire à chaque nouvelle ligne de la type de ligne
              et du numéro du premier waypoint
            - Publication de diagnostics


        Entrée :
            data : mavros_msgs  Waypoint
                  - data.waypoints : liste des waypoints de la mission
                  - data.current_seq : waypoint courant
        """
        #----- Callback appelé à chaque changement de waypoints
        #rospy.logwarn("Changement de waypoint")
        rospy.logwarn("Nouveau waypoint :" + str(data.current_seq))
        rospy.logwarn("Liste des waypoints enregistrés" + str(self.last_waypoint_list))

        self.wp_number=len(data.waypoints)
        self.waypoints_list = data.waypoints

        #------------ Fin de ligne ----------------------
        if data.waypoints[data.current_seq].param1 == 1:
            if  data.waypoints[self.current_wp].param1 == 0:
                #------------- Enregistrement du dernier waypoint de la ligne
                self.last_waypoint = self.current_wp
                rospy.logwarn("Fin de ligne")
                rospy.logwarn("Waypoint enregistré de fin de ligne "+str(self.last_waypoint))
                self.last_waypoint_list.append(self.last_waypoint)


                nav_msg = KeyValue()
                nav_msg.key = "End"
                if data.waypoints[data.current_seq].param2 == 0:
                    nav_msg.value = "Reg"
                else:
                    nav_msg.value = "Trav"
                self.nav_pub.publish(nav_msg)

        #----------Debut de ligne ----------------------
        elif data.waypoints[data.current_seq].param1 == 0:
            if  data.waypoints[self.current_wp].param1 == 1:
                rospy.logwarn("Début de ligne")
                nav_msg = KeyValue()
                nav_msg.key = "Start"
                if data.waypoints[data.current_seq].param2 == 0:
                    nav_msg.value = "Reg"
                    self.nbr_reg += 1
                    ligne = "Reg" + str(self.nbr_reg)

                else:
                    nav_msg.value = "Trav"
                    self.nbr_trav += 1
                    ligne = "Trav" + str(self.nbr_trav)

                self.last_waypoint_dictionnary[ligne] = data.current_seq
                self.nav_pub.publish(nav_msg)

        self.current_wp = data.current_seq
        #rospy.loginfo("dictionnaire : " + str(self.last_waypoint_dictionnary))

        #---------Pubication des diagnostiques-----------

        diagnostics=DiagnosticArray()
        diagnostics.status.append(DiagnosticStatus(level=0,name="controller/waypoints/Number", message=str(self.wp_number)))
        diagnostics.status.append(DiagnosticStatus(level=0,name="controller/waypoints/Current", message=str(self.current_wp)))
        diagnostics.header.stamp=rospy.Time.now()
        self.diag_pub.publish(diagnostics)



    def warning_callback (self, data):
        """
        Callback appelé lors de la réception d'un msg sur /warning
            - Appel des fonctions wpt_chang() et stop()
        Entrée :
            data : Int16
        """
        self.warning = data.data
        rospy.logwarn("Warning, type" + str(self.warning))
        if (self.warning != -1):
            self.waypoint_warning = self.current_wp
            now = rospy.get_rostime()
            rospy.logwarn("Warning : Retour en arrière, nouveau Waypoint :" + str(self.last_waypoint))
            self.wpt_chang()
        elif (self.warning == -1):
            rospy.logwarn("Mode Loiter activé")
            self.stop()



    def wpt_chang(self):
        """
        Fonction lors de la réception d'un warning publie la consigne du wpt de correction
        sur le service /mavros/mission/set_current. Le wpt de correction est le dernier de la
        ligne précedente.
        Mise à zéro de la variable warning
        """


        if self.waypoints_list[self.waypoint_warning].param1 == 0 :
            if len(self.last_waypoint_list) == 0:
                #----- Warning dans la première ligne droite : on recommence la mission de 0
                self.wpt_correction = 0
            else :
                #-----Warning en ligne droite : on retourne au début du virage précédent
                self.wpt_correction = self.last_waypoint_list[-1]
        else :
            if len(self.last_waypoint_list) == 1:
                #----- Warning dans le premier virage : on recommence la mission de 0
                self.wpt_correction = 0
            else :
                #-----Warning en virage : on retourne au debut du virage précédent
                self.wpt_correction = self.last_waypoint_list[len(self.last_waypoint_list)-2]

        rospy.wait_for_service('/mavros/mission/set_current')
        try:
            current_wpt = rospy.ServiceProxy('/mavros/mission/set_current', mavros_msgs.srv.WaypointSetCurrent)
            wpt = current_wpt(wp_seq = (self.wpt_correction))
            rospy.logwarn("Nouveau waypoint de correction :" + str(self.wpt_correction))
            self.warning = 0.0
        except rospy.ServiceException, e:
                rospy.logwarn("Erreur")


    def stop(self):
        """
        Fonction lors de la réception d'un warning publie la consigne de mise en mode stationnaire
        sur le service /mavros/set_mode.
        """

        rospy.wait_for_service('/mavros/set_mode') # timeout ?
        try:
            mode = rospy.ServiceProxy('/mavros/set_mode', mavros_msgs.srv.SetMode)
            mode_ = mode(custom_mode = "HOLD")
            rospy.logwarn("Mode HOLD activé")
            self.warning = 0.0
        except rospy.ServiceException, e:
            rospy.logwarn("Erreur")

              # rosservice call /mavros/set_mode  "base_mode: 0
              # custom_mode: 'HOLD'"

    def diagnostic_publisher(self):
        """
        Fonction de publication des diagnostiques :
            - current_wpt
            - Etat
            - ...
        Lancement dans un thread pour avoir une publication régulière
        """
        diagnostics=DiagnosticArray()
        while not(rospy.is_shutdown()):
            diagnostics.status.append(DiagnosticStatus(level=0,name="controller/waypoints/Number", message=str(self.wp_number)))
            diagnostics.status.append(DiagnosticStatus(level=0,name="controller/waypoints/Current", message=str(self.current_wp)))
            diagnostics.status.append(DiagnosticStatus(level=0,name="controller/state/Mode", message=self.mode))
            diagnostics.status.append(DiagnosticStatus(level=0,name="controller/state/Arming", message=self.arming))
            diagnostics.header.stamp=rospy.Time.now()
            self.diag_pub.publish(diagnostics)
            rospy.sleep(0.5)

if __name__=='__main__':
    try:
        rospy.init_node("Controller", anonymous=False)
        controller=Controller(battery_min=12)
        rate=rospy.Rate(1)


        #----- Publication des messages des diagnostiques régulièrement

        diag_thread=threading.Thread(target=controller.diagnostic_publisher)
        diag_thread.start()

        while not rospy.is_shutdown():
            rospy.spin()
            rate.sleep()

    except rospy.ROSInterruptException:
        pass
