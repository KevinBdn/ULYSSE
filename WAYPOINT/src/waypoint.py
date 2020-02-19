""" Classe qui représente la liste des waypoints au format QGC WPL 110."""

# Import:
from scipy import signal
from trajectory import *
import pyproj

class Waypoint:

    def __init__(self, name, name_out, radius=3):
        """
        Arg:
            self.file_name: Name of file containing waypoints to adapt
            self.file_name_out: Name of file with waypoints adapted
            self.WP_GPS and self.WP_out: List of waypoint with coordinates WSG84
            self.WP_L93: List of waypoint with coordinates Lambert 93
            self.type_trajectory: List of trajectory compute with list of waypoint
            self.radius_waypoint: Radius that represent a circle around waypoint where waypoint is considered reached by the robot to counter inertia.
        """
        self.file_name = name
        self.radius_waypoint = radius
        self.WP_GPS = []
        self.WP_L93 = []
        self.type_trajectory = []
        self.WP_out = []
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
        Lambert_93 = pyproj.Proj("epsg:2154")
        WSG_84 = pyproj.Proj("epsg:4326")

        self.WP_L93 = []
        for wp in self.WP_GPS:
            lat,long = wp[1],wp[2]
            x,y = pyproj.transform(WSG_84, Lambert_93,lat,long)
            self.WP_L93.append([wp[0],x,y])

    def find_trajectory(self):
        """
        Calcul le cap à chaque changement de waypoint. (Le premier et dernier waypoints sont exclus)
        """
        for i in range(len(self.WP_GPS)-2):
            u = (self.WP_L93[i+1][1]-self.WP_L93[i][1],self.WP_L93[i+1][2]-self.WP_L93[i][2])
            v = (self.WP_L93[i+2][1]-self.WP_L93[i+1][1],self.WP_L93[i+2][2]-self.WP_L93[i+1][2])

            # Compute angle between u and v:
            theta = atan2(v[1],v[0]) - atan2(u[1],u[0])
            theta = theta/(2*pi)*360
            # Angle between -180° and 180°:
            if theta > 180:
                theta = theta - 360
            elif theta < -180:
                theta = theta + 360

            if ((theta >= -180) and (theta <= -165)) or ((theta >= 165) and (theta <= 180)):
                self.type_trajectory.append(["Half-turn"])
            elif ((theta >= -165) and (theta <= -100)) or ((theta >= 100) and (theta <= 165)):
                self.type_trajectory.append(["Back"])
            elif ((theta >= -100) and (theta <= -80)) or ((theta >= 80) and (theta <= 100)):
                self.type_trajectory.append(["Right-angle"])
            else:
                self.type_trajectory.append(["Ahead"])
            self.type_trajectory[-1].append(theta)

    def convert_L932GPS(self):
        """
        Convertit toutes les coordonnées des waypoints en entrée en coordonnées WSG84.
        """
        inProj = pyproj.Proj(init='epsg:2154')
        outProj = pyproj.Proj(init='epsg:4326')
        for i in range(len(self.WP_out)):
            x,y = self.WP_out[i][0][0],self.WP_out[i][0][1]
            lat,long = pyproj.transform(inProj,outProj,x,y)
            self.WP_out[i] = [long,lat,self.WP_out[i][1]]

    def write_file(self):
        with open(self.file_name_out,'wt') as f:
            #f.write('QGC\tWPL\t110\r\n')
            f.write('QGC WPL 110\r\n')
            for k,w in enumerate(self.WP_out):
                f.write('%d\t0\t0\t16\t%d\t0\t0\t0\t%.9f\t%.9f\t1.0\t1\r\n' % (k,w[2],w[0],w[1]))
