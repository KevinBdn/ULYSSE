""" Classe qui permet de créer des waypoints intermédiaires pour lisser une
trajectoire."""

# Import:
from math import *

class Trajectory:

    def __init__(self, name, radius=3):
        self.name = name
        self.radius = radius

class Trajectory_right_angle(Trajectory):

    def __init__(self, WP_L93, theta, name="Right angle"):
        super().__init__(name)
        self.WP = WP_L93 # 2 derniers waypoints, format Lambert 93, qui ont permis le calcul de l'angle de changement de trajectoires
        self.theta = theta

    def generate_WP(self):
        self.distance = sqrt((self.WP[1][0]-self.WP[0][0])**2+(self.WP[1][1]-self.WP[0][1])**2)
        self.middle = [(self.WP[1][0]+self.WP[0][0])/2,(self.WP[1][1]+self.WP[0][1])/2]

        if self.theta <= 0:
            self.direction = "left"
            self.compute_WP_left()
        else:
            self.direction = "right"
            self.compute_WP_right()

    def compute_WP_left(self):
        R = self.distance/2 + self.radius
        phi = (atan2((self.WP[1][1]-self.WP[0][1]),(self.WP[1][0]-self.WP[0][0]))+pi/2)*(180/pi)+180
        self.waypoints = []
        for i in range(5):
            theta = (i+1)/6*180
            P = [self.middle[0]+R*cos(theta+phi),self.middle[1]-R*sin(theta+phi)]
            self.waypoints.append(P)

    def compute_WP_right(self):
        R = self.distance/2 + self.radius
        phi = (atan2((self.WP[1][1]-self.WP[0][1]),(self.WP[1][0]-self.WP[0][0]))+pi/2)*(180/pi)+180
        self.waypoints = []
        for i in range(5):
            theta = (i+1)/6*180
            P = [self.middle[0]+R*cos(-theta+phi),self.middle[1]-R*sin(-theta+phi)]
            self.waypoints.append(P)
