Projet Guerlédan : Ulysse
===============

* `Documentation/`: 
	* Documentation utile sur le harware (Sbg, R2Sonic, etc...)
	* Quelques tutoriel (mavlink, sim_vehicle, ...)
	* Quelques informations sur scripts

* `IS/` : 

	* Quelques points d'ingénierie système

* `Parser_WP/`: 

	* Code de conversion d'un fichier waypoint **Qinsy**  en fichier waypoint **Mavlink**.


* `R2SONIC_DATA_BRUTE/`: 

	* Quelques données brutes du multifaisceau et scripts python permettant le traitement de ses données (`pointComputing.py`).

* `SBG_DATA_BRUTE/`: 

	* Quelques données brutes et script python permettant la récupération de ces données.

* `packagesROS/`: 

	* Package ROS à mettre sur Ulysse:
	
	* `ros_ulysse/`: 
	
		* Package principale gérant la navigation grâce au package `mavros`
	
		* Pour lancer le node: `roslaunch ros_ulysse ulysse.launch`
		
		
	* `sbg_ros_driver/` : 
		
		* Package ros permettant de récupérer les données de l'IMU sous forme de topics. 
		>
		
		* `config/sbg_device_udp_default.yaml` à changer en fonction de la configuration du port `eth4` de l'IMU (IP: `10.0.1.59`).
		>
		
		* Pour lancer le node: `roslaunch sbg_driver sbg_device.launch`