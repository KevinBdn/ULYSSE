Projet Guerlédan : Ulysse
===============

### Lancement

* Avoir dans le Worskpace d'Ulysse le package `ros_ulysse`, `sbg_ros_driver`.

* Une fois en ssh sur le **NUC-17** (Ulysse) on peut lancer `mavproxy` afin d'avoir plusieurs connexions sur la carte métier (voir le tuto dans le dossier `Documentation/`:

		mavproxy.py --master=tcp:10.0.1.20:4003 --out=127.0.0.1:14551 --out=10.0.1.111:14551
		
* Dans un autre shell du **NUC-17** on lance les nodes ROS mais en paramètrant le _roscore_ en amont, pour se faire il faut utiliser le script `master_init.sh`:

		$ source master_init.sh
		$ roslaunch ros_ulysse ulysse.launch
		
* On peut alors depuis une autre machine du réseau accéder aux _roscore_ ainsi qu'à la carte métier d'Ulysse. Il faut ếtre sûr d'avoir charger un workspace dans lequel les message sbg sont décrit (`source devel/setup.sh`) :

		$ source client_init.sh #Paramètres pour l'export du roscore
		$ rostopic list
		$ rosrun rqt_robot_monitor rqt_robot_monitor #Diagnostics
		
 	OU bien pour Ardupilot:
 	
 		$ apmplanner2
			-----------------------
			Communication -> Add Link -> UDP
				UDP Port : 14552
				Add IP -> 
					Host (hostname:port):
						10.0.1.88:14555

### Informations
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
		Lance `gps.py`, `celerity.py`, `controller.py`, `diagnostics_aggregator`, `sbg_driver`.
		
	* `sbg_ros_driver/` : 
		
		* Package ros permettant de récupérer les données de l'IMU sous forme de topics. 
		>
		
		* `config/example/sbg_ekinox.yaml` à changer en fonction de la configuration du port `eth4` de l'IMU (IP: `10.0.1.59`).
		>
		
		* Pour lancer le node: `roslaunch sbg_driver sbg_ekinox.launch`