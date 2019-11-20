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
	* **anayzers_without_mavros.yaml**: config file for _diagnostic_aggregator_.
	
* **launch/** - Launch files
	* **ulysse.launch**: launch _apm.launch_ from mavros package and, _celerity.py_, _gps.py_ and _diagnostic_aggregator_ for _rqt_robot_monitor_.
	* **ulysse__without_mavros.launch**: launch _celerity.py_, _gps.py_ and _diagnostic_aggregator_ for _rqt_robot_monitor_.

* **LOGS/** - Log files
	* **CELERITY**: log file for the celerity computing.
	* **R2SONIC**: brut data raw file from R2Sonic
	* **GNS_DATA**: NMEA trames from u-blocks

* **src/** - Sources for python script / ROS nodes
	* **celerity.py**: celerity computing from temperature and conductivity sensor linked in serial.
	* **controller.py**: navigation algorithm using _mavros_
	* **celerity.py**: compute SSV and broadcast it by UDP
	* **gps.py**: compute the cap from u-blocks and broadcast it by UDP
	* **R2Sonic_acquisition.py**: catch brut data (binary format) from R2Sonic and save it into log file.