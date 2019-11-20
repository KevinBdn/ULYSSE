""" Programme qui permet d'adapter la liste des waypoints voulues pour les levés à une liste de waypoints facile à suivre pour le robot Ulysse. """

from math import *
from scipy import signal

def parse(file_name):
    """
    Extrait les différents waypoints de la mission à partir d'un fichier au format .waypoints.

    Parameters:
    file_name:
        string: chemin du fichier .waypoints
    Returns:
    WP:
        list: liste des waypoints
            i: index du waypoint
            lat: latitude du waypoint
            long: longitude du waypoint
    """
    f = open(file_name,'r+')
    L = f.readlines()
    WP = []
    for i in range(len(L)-1):
        l = L[i+1].split("\t")
        lat,long = float(l[8]),float(l[9])
        WP.append([i,lat,long])
    f.close()
    return(WP)

def cap(u):
    """
    Calcul le cap suivi à partir d'un vecteur.

    Parameters:
    u:
        tuple of float: direction suivi par le vecteur u
    Returns:
    cap:
        float: cap suivi par le vecteur u
    """
    lat1,lat2,long1,long2 = u[0],u[2],u[1],u[3]
    x = cos(lat1)*sin(lat2)-sin(lat1)*cos(lat2)*cos(long2-long1)
    y = sin(long2-long1)*cos(lat2)
    cap = atan2(y,x)
    return(cap)

def angle(u,v):
    """
    Calcul l'angle de giration suivi pour le passage d'une direction u à une direction v.

    Parameters:
    u,v:
        tuple of float: directions suivi avant et après changement de waypoint
    Returns:
    theta:
        float: angle de giration entre u et v
    """
    cap_1 = cap(u)
    cap_2 = cap(v)
    theta = (cap_2-cap_1)/(2*pi)*360
    if theta > 180:
        theta = theta - 360
    if theta < -180:
        theta = theta + 360
    return(theta)

def find_trajectory(WP):
    """
    Calcul le cap à chaque changement de waypoint. (Le premier et dernier waypoints sont exclus)

    Parameters:
    WP:
        list: liste des waypoints
            i: index du waypoint
            lat: latitude du waypoint
            long: longitude du waypoint
    Returns:
    Angle:
        list of float: liste des caps
    """
    Angle = []
    for i in range(len(WP)-2):
        u = (WP[i][1],WP[i][2],WP[i+1][1],WP[i+1][2])
        v = (WP[i+1][1],WP[i+1][2],WP[i+2][1],WP[i+2][2])
        theta = angle(u,v)
        Angle.append(theta)
    return(Angle)

if __name__ == '__main__':
    file_name = "survey2.waypoints"
    waypoints = parse(file_name)
    angles = find_trajectory(waypoints)
    for i in range(len(angles)):
        print(i,angles[i])
