#!/usr/bin/env python
#-*- coding:utf-8 -*-

# sudo apt-get install python-shaply

import time
import pandas
import numpy as np
import rospy
from std_msgs.msg import Int16, String
import matplotlib.pyplot as plt
from shapely.geometry import Polygon
from shapely.affinity import skew, rotate, scale
from diagnostic_msgs.msg import DiagnosticArray, DiagnosticStatus

TAUX_REC = 100   # recouvrement souhaite
SEUIL_TOLERANCE = 5 # marge de tolerance entre resultat et ce qui etait attendu
WARNING = 13


def get_angle(data):
    """
    ENTREE : dataframe contenant les infos d'une ligne
    -------------------------------------
    Recherche de l'angle necessaire pour caler les lignes a un repere de reference.
    -------------------------------------
    RETOUR : angle moyen de rotation, ecart-type des angles
    """
    angles=[]
    it = int((len(data)//256))
    for i in range(it): #Calcul de l'angle pour 500 pings
        X = data['x'][256*i:256*(i+1)].values
        Y = data['y'][256*i:256*(i+1)].values
        angles.append(np.arctan((Y[255]-Y[0])/(X[255]-X[0])))
    #On calcule un angle de rotation moyen, retour de l'ecart-type pour statistiques
    return(np.median(angles),np.std(angles))



def polygon_computing(reg_file_1, reg_file_2, debug=False):
    """
    ENTREE : chemins vers les fichiers des deux lignes a comparer
    -------------------------------------
    Fonction de calcul du taux de recouvrement entre deux fauchees.
    """
    
    #Recuperation des donnees en dataframe
    data1 = pandas.read_csv(reg_file_1, delim_whitespace=True, names=['p', 'b', 'x', 'y', 'z', 'o'])
#    data1 = data1.where(data1['o'] == 0)
    data2 = pandas.read_csv(reg_file_2, delim_whitespace=True, names=['p', 'b', 'x', 'y', 'z', 'o'])
#    data2 = data2.where(data2['o'] == 0)

    #Calcul de l'angle de rotation
    #L'angle de reference est pris sur la premiere ligne
    angle, std = get_angle(data1)
#    print(angle,std)
    
    
    X1 = data1['x'].values
    Y1 = data1['y'].values
    X2 = data2['x'].values
    Y2 = data2['y'].values
    

    #Creation du polygone convexe contourant l'ensemble des points de la ligne
    poly1 = Polygon(zip(X1, Y1)).convex_hull
    poly2 = Polygon(zip(X2, Y2)).convex_hull

    #Calcul de l'intersection des aires des deux polygones représentant nos fauchees
    inter = poly1.intersection(poly2)
    centroid = (inter.centroid.x, inter.centroid.y)

    #Rotation des polygones selon l'angle calcule par rapport au centroide de l'intersection
    poly1 = rotate(poly1, angle, origin=centroid, use_radians=True)
    poly2 = rotate(poly2, angle, origin=centroid, use_radians=True)

    #On a transforme par une rotation nos polygones, il faut refaire la zone d'intersection
    inter = poly1.intersection(poly2)

    #Creation d'un rectangle englobant l'intersection
    envelope = inter.envelope
    #Recuperation des coordonnees du polygone representant l'intersection
    rect = list(envelope.exterior.coords)

    #Recuperation des coordonnees du premier point du rectangle englobant l'intersection des aires
    larger_envelope = np.abs(rect[0][0]-rect[1][0])
    larger_data = np.abs(max(data1['x'].max(),data2['x'].max())-min(data1['x'].min(),data2['x'].min()))

    #Determination de la zone a traiter
    #Correspond a la partie commune sur l'axe y des fauchees
    #Pour eviter de traiter endroits ou fauchee plus courte que l'autre, ce qui fausserait les resultats
    #Finalement, cette zone correspond a l'aire d'intersection allongee sur l'axe x, du debut de la ligne 1 a la fin de la ligne 2
    envelope = scale(inter.envelope,larger_data/larger_envelope)

    res0 = inter.area/poly2.intersection(envelope).area*100
    res1 = inter.area/poly1.intersection(envelope).area*100

    rospy.loginfo("\tRecouvrement reg 1 sur reg 2 : %.3f"%(res0))
    rospy.loginfo("\tRecouvrement reg 2 sur reg 1 : %.3f"%(res1))



    if debug:
        #####################
        # AFFICHAGE (debug) #
        #####################
        convex_hull_x1, convex_hull_y1 = [z.tolist() for z in poly1.exterior.coords.xy]
        convex_hull_x2, convex_hull_y2= [z.tolist() for z in poly2.exterior.coords.xy]
        x3, y3 = [z.tolist() for z in inter.convex_hull.exterior.coords.xy]
        x4, y4 = [z.tolist() for z in poly1.intersection(envelope).convex_hull.exterior.coords.xy]
        x5, y5 = [z.tolist() for z in poly2.intersection(envelope).convex_hull.exterior.coords.xy]
        x6, y6 = [z.tolist() for z in envelope.convex_hull.exterior.coords.xy]
        

        plt.figure(2)
        plt.plot(X1, Y1, ".")
        plt.plot(X2, Y2, ".")
        plt.plot(convex_hull_x1, convex_hull_y1)
        plt.plot(convex_hull_x2, convex_hull_y2)
        plt.plot(x3, y3)
        plt.plot(x4, y4)
        plt.plot(x5, y5)
        plt.plot(x6, y6)
        plt.gca().set_aspect('equal', adjustable='box')
        plt.show()

    return res0, res1

def check(res_first, res_next):

    whole = res_first+res_next
    return whole, ((whole+SEUIL_TOLERANCE) < TAUX_REC)



def filter_manager(data):
    """
    ENTREE : chemin d'acces a au fichier d'une fauchee
    -------------------------------------
    Fonction d'ordonancement de l'algorithme. Le recouvrement est effectue sur deux lignes regulieres.
    """
    global Regs, res_first, flag, state, files, resul, comput_time, status
    name = data.data.split('/')[-1][0:3]

    if name == "Reg":
        rospy.loginfo("New data")
        Regs.append(data.data)
        if len(Regs)==2:
            rospy.loginfo("Start filtering:\nReg_file_1: %s\nReg_file_2: %s"%(Regs[0],Regs[1]))
            status = "Running"
            files = [Regs[0].split('/')[-1],Regs[1].split('/')[-1]]
            t0 = time.time()
            res0, res1 = polygon_computing(Regs[0],Regs[1],debug=False)
            comput_time = time.time() - t0
            if flag :
                resul, state = check(res_first, res1)
                rospy.loginfo("\tPercentage of covering: %.3f"%(resul))
            else:
                resul = "%.3f (Waiting for right swath)"%(res1)
            if state:
                rospy.logwarn("Warning raised")
                warning_pub.publish(Int16(WARNING))
            status = "Not running"
            rospy.loginfo("End filtering - Time computing %.3f s"%(comput_time))
            flag = 1    
            res_first = res0
            Regs=Regs[1::]
            


if __name__ == '__main__':

    Regs=[]
    flag = 0
    res_first = 0

    state = 0
    status = "Not running"
    files = "Not running"
    resul = "Not running"
    comput_time = "Not running"

    rospy.init_node('Covering_filter')
    
    warning_pub = rospy.Publisher("/warning", Int16, queue_size=1)
    rospy.Subscriber("/ulysse/filters/scheduler", String, filter_manager)
    diag_pub = rospy.Publisher("/diagnostics",DiagnosticArray,queue_size=1)

    diagnostics=DiagnosticArray()
    while not rospy.is_shutdown():
        diagnostics.status.append(DiagnosticStatus(level=state,name="filters/covering/State", message=str(status)))
        diagnostics.status.append(DiagnosticStatus(level=state,name="filters/covering/Files", message=str(files)))
        diagnostics.status.append(DiagnosticStatus(level=state,name="filters/covering/Covering ratio required [%]", message=str(TAUX_REC)))
        diagnostics.status.append(DiagnosticStatus(level=state,name="filters/covering/Acceptable difference [%]", message=str(SEUIL_TOLERANCE)))
        diagnostics.status.append(DiagnosticStatus(level=state,name="filters/covering/Result [%]", message=str(resul)))
        diagnostics.status.append(DiagnosticStatus(level=state,name="filters/covering/Computing time [s]", message=str(comput_time)))
        diagnostics.header.stamp=rospy.Time.now()
        diag_pub.publish(diagnostics)
        if state:
            state=0
        time.sleep(1)





