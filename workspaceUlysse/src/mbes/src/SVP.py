#-*- coding: utf-8 -*-
import numpy as np
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D  # noqa: F401 unused import 
from math import *
#from scipy.spatial.transform import Rotation as R

def cleanSVP(svpArray):
    """
        Normalize an input SVP with value at each meter.
    """
    #Redefinition du SVP
    #Couches de 1m !!! Gestion des couches inexistantes
    indices = []
    means = []
    sum  = svpArray[0][1]
    ind_prec = int(svpArray[0][0])
    nb = 1
    indices.append(ind_prec)
    
    for i in range(len(svpArray)):

        ind = int(svpArray[i][0])
        print(len(svpArray),ind)

        if (ind != ind_prec):
            sum += svpArray[i][1]
            nb += 1
            ecart = (ind - ind_prec)
            #print(ecart)
            if (ecart != 1):
                #print("!!!" + str(ind))
                for v in range(ecart-1):
                    indices.append(ind_prec+(v+1))
                    means.append((means[ind-3]+(sum/nb))/2)
            means.append(sum/nb)
            indices.append(ind)
            nb = 1
            sum = svpArray[i][1]

        if (ind == ind_prec):
            sum += svpArray[i][1]
            nb += 1
        ind_prec = ind
    #Derniere iteration a prendre en compte
    means.append(sum/nb)

    #print(indices)
    #print(means)
    svpMean = np.vstack((np.array(indices), np.array(means))).T
    #print(svpMean)

    return svpMean


def SVP_deviation_step(i0, Tf, offset, SVP, plot):
    """
        Compute the deviation for each layer of the SVP in the boat frame.
        ONLY for DEBBUG.
    """
    SVP_D=SVP[0]
    SVP_V=SVP[1]

    theoric_angle = i0
    tf=Tf/2
    d0=0
    X=0
    Y=0
    T=0

    X_list=[X]
    Y_list=[Y]
    T_list=[T]
    i=0

    end_flag=False

    while not(end_flag):
        #Vecteur unitaire de la couche
        x=cos(i0+offset)
        y=sin(i0+offset)

        #Calcul du tps passe dans la couche ainsi que la distance parcourue dans cette couche
        if i==(len(SVP_V)-1):#Deniere couche, on sait le tps qu'il manque et la vitesse
            t=tf-T
            d=SVP_V[i]*t
            end_flag=True
        else:#Sinon on calcul la distance à la fin de la couche puis le temps passé dans la couche
            d=(SVP_D[i]-d0)/cos(i0)
            t=d/SVP_V[i]
            T+=t
            if T>=tf:#Si on a depasse le temps tf alors on sait qu'on va finir dans cette couche et on mesure la distance parcourue
                t=(tf-(T-t))
                d=SVP_V[i]*t
                end_flag=True

        #Calcul du vecteur cumule
        X+=x*d
        Y+=y*d

        #Enregistrement du vecteur cumule et du tps passe dans la couche
        X_list.append(X)
        Y_list.append(Y)
        T_list.append(t)


        #Initialisation de la prochaine couche
        if i<(len(SVP_V)-1):
            i0=np.arcsin(sin(i0)*SVP_V[i+1]/SVP_V[i])
            d0=SVP_D[i]
            i+=1


    if plot:
        plt.figure()
        plt.plot(X_list,Y_list,'or')
        plt.plot(cos(theoric_angle+offset)*SVP_V[0]*tf,sin(theoric_angle+offset)*SVP_V[0]*tf,'ob')
        for y in Y_list[0:-1]:
            plt.plot([-X_list[-1]-5,X_list[-1]+5],[y,y],'black')
        plt.legend(["Vector with SVP","Vector without SVP"])


    return (X_list,Y_list, T_list)


def SVP_deviation(i0, Tf, offset, SVP):
    """
        Compute the deviation of the final point in the boat frame.
    """
    SVP_D=SVP[0]
    SVP_V=SVP[1]

    tf=Tf/2
    d0=0
    X=0
    Y=0
    T=0

    i=0

    end_flag=False

    while not(end_flag):
        #Vecteur unitaire de la couche
        x=cos(i0+offset)
        y=sin(i0+offset)
        #Calcul du tps passe dans la couche ainsi que la distance parcourue dans cette couche
        if i==(len(SVP_V)-1):#Deniere couche, on sait le tps qu'il manque et la vitesse
            t=tf-T
            d=SVP_V[i]*t
            end_flag=True
        else:#Sinon on calcule la distance à la fin de la couche puis le temps passé dans la couche
            d=(SVP_D[i]-d0)/cos(i0)
            t=d/SVP_V[i]
            T+=t
            if T>=tf:#Si on a depasse le temps tf alors on sait qu'on va finir dans cette couche et on mesure la distance parcourue
                t=(tf-(T-t))
                d=SVP_V[i]*t
                end_flag=True

        #Calcul du vecteur cumule
        X+=x*d
        Y+=y*d

        #Initialisation de la prochaine couche
        if i<(len(SVP_V)-1):
            i0=np.arcsin(sin(i0)*SVP_V[i+1]/SVP_V[i])
            d0=SVP_D[i]
            i+=1


    return (X,Y)

#def localisation(xp,yp,zp,Bp,Bw):
#    """
#        Compute a mesured point from the boat frame to the earth frame.
#        ----
#            xp, yp, zp - point coord
#            Bp - Boat position vector
#            Bw - Boat rotation vector
#    """
#    Mp=[xp,yp,zp]
#    RM= R.from_euler('xyz',Bw.flatten())
#    RM= R.from_rotvec(Bw)
#    r=RM.apply(Mp)
#    V=RM.apply(Mp)+Bp

#    return(V)

if __name__=="__main__":

    svp="../../RESOURCES/SVP/1_2020-02-03_14-59-35_Up.asvp"
    SVP= np.asarray(np.loadtxt(svp, delimiter=' ', skiprows = 1)).T#Profondeurs par rapport au bateau
    offset=3*pi/2#Representation du nuage des points

    i0=0.60#Angle du faisceau [R2Sonic]
    Tf=0.0318#Tps aller-retour du faisceau [R2Sonic]

    P=np.array([10,10,10])#Position du bateau (x,y,z)  [GPS]
    Vr=np.array([0.01,0.1,0])#Vecteur rotation (Rx,Ry,Rz) angle d'euler [IMU]

    print("#############################")
    print("Mesure angle [rad]:",i0)
    print("Mesured Time (two-way) [s]:",Tf)
    print("Boat Position (x,y,z) [m]:",P)
    print("Boat Rotation (Rx,Ry,Rz) [rads]:",Vr)
    print("#############################\n")


    X_list, Y_list, T_list = SVP_deviation_step(i0, Tf, offset, SVP, True)
    X, Y = SVP_deviation(i0, Tf, offset, SVP)


    print("[DEBUG] Time computing:",2*np.sum(T_list))
    print("[DEBUG] Real time:",Tf)#Doit valoir presque le Time computing
    print("Point computing with SVP in boat frame:",(X,0,Y))

#    v=localisation(X,0,Y,P,Vr)
#    print("Point computing with SVP in earth frame:",v)
#    
#    fig=plt.figure()
#    ax = fig.add_subplot(111, projection='3d')
#    ax.scatter(P[0],P[1],P[2],marker='+')
#    ax.scatter(cos(i0+offset)*SVP[1][0]*Tf/2,0,sin(i0+offset)*SVP[1][0]*Tf/2,marker='o',c="r")
#    ax.scatter(X, [0], Y, marker='o',c="b")
#    ax.scatter(v[0],v[1],v[2],marker='^')
#    ax.set_xlabel('X Label')
#    ax.set_ylabel('Y Label')
#    ax.set_zlabel('Z Label')
#    ax.set_zlim(-30, 10)
#    ax.set_ylim(-50, 50)
#    ax.set_xlim(-50, 50)
#    ax.legend(["Boat position","Computed Point with SSV only in boat frame","Computed Point with SVP in boat frame","Computed point with SVP in earth frame"])

    plt.show()

