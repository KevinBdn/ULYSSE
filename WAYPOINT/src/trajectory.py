""" Classe qui permet de créer des waypoints intermédiaires pour lisser une trajectoire."""

# Import:
from math import *
import numpy as np

class Trajectory:

    def __init__(self, name, radius=3):
        self.name = name
        self.radius = radius

class Trajectory_right_angle(Trajectory):

    def __init__(self, WP_L93, theta, name="Right angle"):
        """
        Arg:
            self.theta: Angle of rotation between two directions when switching from a waypoint to an other one.
        """
        super().__init__(name)
        self.WP = WP_L93
        self.theta = theta

    def generate_WP(self):
        """
        Génère les waypoints en fonction de la direction de rotation.
        """
        self.distance = sqrt((self.WP[1][1]-self.WP[0][1])**2+(self.WP[1][2]-self.WP[0][2])**2)
        self.middle = [(self.WP[1][1]+self.WP[0][1])/2,(self.WP[1][2]+self.WP[0][2])/2]

        if self.theta <= 0:
            self.direction = "right"
            self.compute_WP_left()
        else:
            self.direction = "left"
            self.compute_WP_right()

    def compute_WP_left(self):
        """
        Calcul un arc de cercle pour arrondire une trajectoire.
        """
        R = self.distance/2 + self.radius
        v = (self.WP[0][1]-self.WP[1][1],self.WP[0][2]-self.WP[1][2])
        phi = atan2(v[1],v[0]) - atan2(0,1)
        # Angle between -pi and pi:
        if phi > pi:
            phi = phi - 2*pi
        elif phi < -pi:
            phi = phi + 2*pi
        self.waypoints = []
        for i in range(6):
            theta = (i+1)/6*pi
            P = [self.middle[0]+R*cos(theta+phi),self.middle[1]-R*sin(theta+phi)]
            self.waypoints.append(P)

    def compute_WP_right(self):
        R = self.distance/2 + self.radius
        v = (self.WP[0][1]-self.WP[1][1],self.WP[0][2]-self.WP[1][2])
        phi = atan2(v[1],v[0]) - atan2(0,1)
        # Angle between -pi and pi:
        if phi > pi:
            phi = phi - 2*pi
        elif phi < -pi:
            phi = phi + 2*pi
        self.waypoints = []
        for i in range(6):
            theta = (i+1)/6*pi
            P = [self.middle[0]+R*cos(-theta+phi),self.middle[1]-R*sin(-theta+phi)]
            self.waypoints.append(P)

class Trajectory_half_turn(Trajectory):

    def __init__(self, WP_L93, name="Half-turn"):
        super().__init__(name)
        self.WP = WP_L93

    def generate_WP(self):
        """
        Génère les waypoints en de la direction de rotation. Crée un demi-tour arrondi.
        """
        u = (self.WP[1][1]-self.WP[0][1],self.WP[1][2]-self.WP[0][2])

        self.norm = sqrt((self.WP[1][1]-self.WP[0][1])**2+(self.WP[1][2]-self.WP[0][2])**2)
        self.direction = (u[0]/self.norm,u[1]/self.norm)
        self.middle = (self.WP[0][1]-self.direction[0]*(5+self.radius),self.WP[0][2]-self.direction[1]*(5+self.radius))
        phi = -atan2(u[1],u[0]) + atan2(0,1)
        # Angle between -pi and pi:
        if phi > pi:
            phi = phi - 2*pi
        elif phi < -pi:
            phi = phi + 2*pi
        R = 5 + self.radius

        self.waypoints = []
        for i in range(6):
            theta = (i+1)/6*pi
            P = [self.middle[0]+R*cos(-theta+phi),self.middle[1]-R*sin(-theta+phi)]
            self.waypoints.append(P)

        self.waypoints.append(self.middle)

class Trajectory_back_or_right_angle(Trajectory):

    def __init__(self, WP_L93, theta, name="Back"):
        super().__init__(name)
        self.WP = WP_L93
        self.theta = theta

    def generate_WP(self):
        """
        Génère les waypoints en de la direction de rotation. Crée un presque demi-tour arrondi.
        """
        u = (self.WP[2][1]-self.WP[1][1],self.WP[2][2]-self.WP[1][2])
        v = (self.WP[0][1]-self.WP[1][1],self.WP[0][2]-self.WP[1][2])

        self.norm = sqrt((v[0])**2+(v[1])**2)
        self.direction = (v[0]/self.norm,v[1]/self.norm)

        self.d1 =  (self.WP[1][1]-self.direction[0]*(5+self.radius),self.WP[1][2]-self.direction[1]*(5+self.radius))

        self.norm = sqrt((u[0])**2+(u[1])**2)
        self.direction = (u[0]/self.norm,u[1]/self.norm)
        self.d2 = (self.WP[1][1]-self.direction[0]*(5+self.radius),self.WP[1][2]-self.direction[1]*(5+self.radius))

        self.middle = ((self.d1[0]+self.d2[0])/2,(self.d1[1]+self.d2[1])/2)

        w = (-self.d2[0]+self.d1[0],-self.d2[1]+self.d1[1])
        self.norm = sqrt(w[0]**2+w[1]**2)
        self.direction = (w[0]/self.norm,w[1]/self.norm)

        self.P1 = (self.d1[0]+self.radius*self.direction[0],self.d1[1]+self.radius*self.direction[1])
        self.P2 = (self.d2[0]-self.radius*self.direction[0],self.d2[1]-self.radius*self.direction[1])

        self.waypoints = []
        self.waypoints.append(self.P1)

        phi = -atan2(self.direction[1],self.direction[0]) + atan2(0,1)
        # Angle between -pi and pi:
        if phi > pi:
            phi = phi - 2*pi
        elif phi < -pi:
            phi = phi + 2*pi
        R = self.norm + self.radius
        for i in range(5):
            theta = (i+1)/6*pi
            P = [self.middle[0]+R*cos(np.sign(self.theta)*theta+phi),self.middle[1]-R*sin(np.sign(self.theta)*theta+phi)]
            self.waypoints.append(P)

        self.waypoints.append(self.d2)
