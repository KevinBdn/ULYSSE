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
	* **ulysse.launch**: launch _apm.launch_ from mavros package and _diagnostic_aggregator_ for _rqt_robot_monitor_.

* **LOGS/** - Log files
	* **CELERITY**: log file for the celerity computing.
	* **R2SONIC**: Data from R2SONIC.

* **src/** - Sources for python script / ROS nodes
	* **celerity.py**: celerity computing from temperature and conductivity sensor linked in serial.
	* **R2Sonic_acquisition.py**: Get data from the R2SONIC and save it into _.raw_ file.