Projet Guerlédan : Ulysse
===============

Projet Guerlédan **2019/2020** dont l'objectif est de réaliser un MNT sous ROS via l'USV Ulysse. Le projet a été réalisé par:

* 3 roboticiens:
	* Kévin BEDIN
	* Clément BICHAT
	* Aurélien GRENIER
	
* 3 hydrographes:
	* Ombeline LE GALL
	* Pauline CELTON
	* Aurélie PANETIER
	
Architecture de dossiers
---
	ULYSSE
		├── Bag_files
		├── Documentation
		├── WAYPOINT
		└── workspaceUlysse

* **Bag_files/**:
	* Dossier contenant quelques fichiers bag enregistrés lors de la 2ème semaine de Guerlédan.
	* Contient également un script python permettant de modifier ces fichiers afin de les corriger.
	* Fichier exploitable : `Ligne2_mbes_equi_distant/Ligne2_corrigee.bag`
	
* **Documentation/**: 
	* Documentation utile sur le harware (Sbg, R2Sonic, etc...)
	* Quelques tutoriel (mavlink, sim_vehicle, ...)
	* Quelques codes (decode de packet binaire R2Sonic en C, ...)

* **WAYPOINT/**: 

	* Code de conversion d'un fichier waypoint **Qinsy**  en fichier waypoint **Mavlink**.
	* Permet l'adaptation de la trajectoire des waypoints éditer sur QInsy en une trajectoire plus simple à suivre pour Ulysse.

* **workspaceUlysse/**: 

	* Workspace ROS pour la gestion d'Ulysse et la réalisation de MNT sous ROS.

Configuration d'Ulysse
---

La configuration d'Ulysse est expliquée dans le [README.md](workspaceUlysse/src/ulysse_starter/README.md) du package `ulysse_starter` présent dans le **workspageUlysse**.

	
Lancement d'Ulysse
---
* Avoir le `workspaceUlysse` sur le **NUC-17**.

* Une fois en ssh sur le **NUC-17** (Ulysse) on peut lancer `mavproxy` afin d'avoir plusieurs connexions sur la carte métier (voir le tuto dans le dossier `Documentation/`:

		mavproxy.py --master=tcp:10.0.1.20:4003 --out=127.0.0.1:14551 --out=10.0.1.88:14552
		
* Dans un autre shell du **NUC-17** on lance les nodes ROS mais en paramètrant le _roscore_ en amont, pour se faire il faut utiliser le script `master_init.sh`:

		$ source master_init.sh
		$ roslaunch ulysse_starter ulysse.launch
		
* On peut alors depuis une autre machine du réseau accéder aux _roscore_ ainsi qu'à la carte métier d'Ulysse. Il faut ếtre sûr d'avoir charger un workspace dans lequel les message sbg sont décrits (`source devel/setup.sh`) :

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

* On peut ainsi par exemple sauvergarder le **MNT** en cours d'acquisition:

		$ rosrun mnt xsy_saver.py

* On peut également monitorer le bon fonctionnement des nodes ROS:

		$ rosrun rqt_robot_monitor rqt_robot_monitor
		
* Ou bien la visualisation de l'acquisition en cours:

		$ roslaunch ulysser_starter rviz.launch
						
Rejeu d'un MNT
----

Pour rejouer un MNT réalisé sur un ordinateur contenant ce répertoire GIT:

* **1. Préparer ROS**

Exécuter dans un premeir terminal:

	$ cd workspaceUlysse
	$ catkin_make
	$ source devel/setup.bash
	$ roscore	

* **2. Lancer le fichier bag**

Exécuter dans un second terminal:

	$ cd wokspaceUlysse
	$ source devel/setup.bash
	$ rosparam set use_sim_time true
	$ cd ../Bag_files/Ligne2_mbes_equi_distant
	$ rosbag play Ligne2_corrigee.bag

On pourra utiliser l'option `--clock` dans le `rosbag play` pour intéragir avec les topics publiés.

* **3. Visualiser la mission**

Exécuter dans un troisème terminal:

	$ cd workspaceUlysse
	$ source devel/setup.bash
	$ roslaunch ulysse_starter rviz.launch

