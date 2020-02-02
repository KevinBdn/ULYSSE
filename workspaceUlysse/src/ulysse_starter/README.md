ROS packages
============
Installation
------------
* Copy/paste the package **ros_ulysse** in **~/catkin_ws/src/src/**
		
		source ~/.bashrc
		cd ~/catkin_ws
		catkin_make
		
Directories
------------
* **cfg/** - Configuration files 
	* **analyzers.yaml**: config file for _diagnostic_aggregator_.
	
* **launch/** - Launch files
	* **ulysse.launch**: launch _apm.launch_ from mavros package and, _celerity.py_, _ublox_ZED-F9H.py_ , and _diagnostic_aggregator_ for _rqt_robot_monitor_.
