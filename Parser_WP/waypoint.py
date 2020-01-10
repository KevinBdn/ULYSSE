""" Classe qui permet d'adapter la trajectoire prise par la liste de waypoints pour obtenir une
nouvelle liste de waypoints dont la trajectoire peut être suivi par Ulysse."""

# Import:
from scipy import signal
from trajectory import *
import pyproj

class Waypoint:

    def __init__(self, name, name_out, radius=3):
        self.file_name = name
        self.radius_waypoint = radius
        self.WP_GPS = [] # List de waypoints extraient du GPS
        self.WP_L93 = [] # List de waypoints convertis en Lambert 93
        self.type_trajectory = []
        self.WP_out = [] # List de waypoints dont les trajectoires ont été adaptées
        self.file_name_out = name_out

    def parse_file(self):
        """
        Extrait les différents waypoints de la mission à partir d'un fichier au format .waypoints.
        """
        file = open(self.file_name,'r+')
        L = file.readlines()
        for i in range(len(L)-1):
            l = L[i+1].split("\t")
            lat,long = float(l[8]),float(l[9])
            self.WP_GPS.append([i,lat,long])
        file.close()

    def convert_GPS2L93(self):
        """
        Convertit toutes les coordonnées des waypoints en entrée en coordonnées Lambert 93.
        """
        # Define a projection with Proj4 notation, in this case we focus on France, correspond to Lambert 93 projection
        isn2004=pyproj.Proj("+init=EPSG:2154")

        self.WP_L93 = []
        for wp in self.WP_GPS:
            lat,long = wp[1],wp[2]
            x,y = isn2004(lat,long)
            self.WP_L93.append([wp[0],x,y])

    def find_trajectory(self):
        """
        Calcul le cap à chaque changement de waypoint. (Le premier et dernier waypoints sont exclus)
        """
        for i in range(len(self.WP_GPS)-2):
            u = (self.WP_GPS[i][1],self.WP_GPS[i][2],self.WP_GPS[i+1][1],self.WP_GPS[i+1][2])
            v = (self.WP_GPS[i+1][1],self.WP_GPS[i+1][2],self.WP_GPS[i+2][1],self.WP_GPS[i+2][2])
            theta = angle(u,v)
            if ((theta >= -180) and (theta <= -165)) or ((theta >= 165) and (theta <= 180)):
                self.type_trajectory.append([1])
            elif ((theta >= -165) and (theta <= -100)) or ((theta >= 100) and (theta <= 165)):
                self.type_trajectory.append([4])
            elif ((theta >= -100) and (theta <= -80)) or ((theta >= 80) and (theta <= 100)):
                self.type_trajectory.append([2])
            else:
                self.type_trajectory.append([3])
            self.type_trajectory[-1].append(theta)

    def convert_L932GPS(self):
        inProj = pyproj.Proj(init='epsg:2154')
        outProj = pyproj.Proj(init='epsg:4326')
        for i in range(len(self.WP_out)):
            x,y = self.WP_out[i][0],self.WP_out[i][1]
            lat,long = pyproj.transform(inProj,outProj,x,y)
            self.WP_out[i] = [long,lat]

    def write_file(self):
    	with open(self.file_name_out,'wt') as f:
    		#f.write('QGC\tWPL\t110\r\n')
    		f.write('QGC WPL 110\r\n')
    		for k,w in enumerate(self.WP_out):
    			f.write('%d\t0\t0\t16\t0\t0\t0\t0\t%.9f\t%.9f\t1.0\t1\r\n' % (k,w[0],w[1]))

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
