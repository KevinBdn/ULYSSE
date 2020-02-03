""" Programme qui permet d'adapter la liste des waypoints voulues pour les levés à une liste de waypoints facile à suivre pour le robot Ulysse. """

from waypoint import *
import sys

if __name__ == '__main__':

    if len(sys.argv) == 3:
        file_name = sys.argv[1]
        file_name_out = sys.argv[2]
    else:
        file_name = "../sources/survey2.waypoints"
        file_name_out = "../sources/survey2.txt"

    print("--------------------\n")
    print("File name chosen: " + file_name + "\n")

    WP = Waypoint(file_name,file_name_out)

    WP.parse_file()
    WP.convert_GPS2L93()

    print("--------------------\n")
    print("Conversion to Lambert 93:\n")
    print(WP.WP_L93)

    WP.find_trajectory()

    print("--------------------\n")
    print("Trajectory type:\n")
    print(WP.type_trajectory)

    print("--------------------\n")
    print("Generate trajectory:\n")
    previous = False
    for i in range(len(WP.type_trajectory)-1):
        if previous == False:
            WP.WP_out.append([WP.WP_L93[i][1::],0])
        else:
            previous = False

        if WP.type_trajectory[i][0] == "Right-angle" and WP.type_trajectory[i+1][0] == "Right-angle":
            previous = True
            traj = Trajectory_right_angle([WP.WP_L93[i+1],WP.WP_L93[i+2]],WP.type_trajectory[i][1],WP.type_trajectory[i][0])
            traj.generate_WP()
            print("Right-angle started from WP n°: " + str(WP.WP_L93[i+1][0]) + "\n")
            print("Direction is: " + traj.direction + "\n")
            print("Distance between waypoints is: " + str(traj.distance) + "\n")
            print("Middle is: \n")
            print(traj.middle)
            print()
            WP.WP_out.append([WP.WP_L93[i+1][1::],0])
            for wp in traj.waypoints:
                WP.WP_out.append([wp,1])

        elif WP.type_trajectory[i][0] == "Half-turn":
            WP.WP_out.append([WP.WP_L93[i+1][1::],0])
            previous = True

            traj = Trajectory_half_turn([WP.WP_L93[i+1],WP.WP_L93[i+2]],WP.type_trajectory[i][0])
            print("Half-turn started at WP n°: " + str(WP.WP_L93[i+1][0]) + "\n")
            traj.generate_WP()

            for wp in traj.waypoints:
                WP.WP_out.append([wp,1])

        elif WP.type_trajectory[i][0] == "Back" or (WP.type_trajectory[i][0] == "Right-angle" and WP.type_trajectory[i][0] != "Right-angle"):
            WP.WP_out.append([WP.WP_L93[i+1][1::],0])
            previous = True

            traj = Trajectory_back_or_right_angle([WP.WP_L93[i],WP.WP_L93[i+1],WP.WP_L93[i+2]],WP.type_trajectory[i][1],WP.type_trajectory[i][0])
            print("Back started at WP n°: " + str(WP.WP_L93[i+1][0]) + "\n")
            traj.generate_WP()

            for wp in traj.waypoints:
                WP.WP_out.append([wp,1])



    WP.WP_out.append([WP.WP_L93[-1][1::],0])

    print("--------------------\n")
    print("Convert and add new waypoints:\n")
    WP.convert_L932GPS()

    print("--------------------\n")
    print("Writing file:\n")
    WP.write_file()
