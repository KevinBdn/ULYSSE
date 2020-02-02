# QGC WPL 110:

    <INDEX> <CURRENT WP> <COORD FRAME> <COMMAND> <PARAM1> <PARAM2> <PARAM3> <PARAM4> <PARAM5/X/LONGITUDE> <PARAM6/Y/LATITUDE> <PARAM7/Z/ALTITUDE> <AUTOCONTINUE>

Exemple:

    0	0	0	16	0	0	0	0	48.201401410	-3.015725510	1.0	1

# Trame mavros/waypoint:

* uint8 frame

`uint8 FRAME_GLOBAL = 0;
uint8 FRAME_LOCAL_NED = 1;
uint8 FRAME_MISSION = 2;
uint8 FRAME_GLOBAL_REL_ALT = 3;
uint8 FRAME_LOCAL_ENU = 4;`

* uint16 command

`uint16 NAV_WAYPOINT = 16;
uint16 NAV_LOITER_UNLIM = 17;
uint16 NAV_LOITER_TURNS = 18;
uint16 NAV_LOITER_TIME = 19;
uint16 NAV_RETURN_TO_LAUNCH = 20;
uint16 NAV_LAND = 21;
uint16 NAV_TAKEOFF = 22;`

* bool is_current
* bool autocontinue
* float32 param1
* float32 param2
* float32 param3
* float32 param4
* float64 x_lat
* float64 y_long
* float64 z_alt
