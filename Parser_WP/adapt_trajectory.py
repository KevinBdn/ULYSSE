""" Programme qui permet d'adapter la liste des waypoints voulues pour les levés à une liste de waypoints facile à suivre pour le robot Ulysse. """

from waypoint import *
import sys

if __name__ == '__main__':

    if len(sys.argv) == 3:
        file_name = sys.argv[1]
        file_name_out = sys.argv[2]
    else:
        file_name = "survey2.waypoints"
        file_name_out = "test.txt"

    print("--------------------\n")
    print("File name chosen: " + file_name + "\n")

    WP = Waypoint(file_name,file_name_out)

    WP.parse_file()
    WP.convert_GPS2L93()
    WP.find_trajectory()

    print("--------------------\n")
    print("Trajectory type:\n")
    print(WP.type_trajectory)

    print("--------------------\n")
    print("Generate trajectory:\n")
    previous = False
    for i in range(len(WP.type_trajectory)):
        WP.WP_out.append(WP.WP_L93[i])
        if WP.type_trajectory[i][0] == 2 and not(previous):
            previous = True
            traj = Trajectory_right_angle([WP.WP_L93[i+1],WP.WP_L93[i+2]],WP.type_trajectory[i][1])
            traj.generate_WP()
            print("Direction is: " + traj.direction + "\n")
            print("Distance between waypoints is: " + str(traj.distance) + "\n")
            print("Middle is: \n")
            print(traj.middle)
            for wp in traj.waypoints:
                WP.WP_out.append(wp)
        previous = False

    print("--------------------\n")
    print("Convert and add new waypoints:\n")
    WP.convert_L932GPS()

    print("--------------------\n")
    print("Write file:\n")
    WP.write_file()
