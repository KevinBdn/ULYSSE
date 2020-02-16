ROS packages
============

Package regroupant les launchs utiles pour faire de la bathymétrie depuis ROS sur Ulysse.
		
Architecture de dossiers
------------

	ulysse_starter
	├── cfg
	│   ├── analyzers.yaml
	│   ├── configuration.yaml
	│   └── ulysse.rviz
	└── launch
	    ├── controller.launch
	    ├── imu.launch
	    ├── mbes.launch
	    ├── rosbag_analyzer
	    │   └── rosbag_tf.launch
	    ├── rviz.launch
	    ├── tf_starter.launch
	    ├── ulysse.launch
	    └── xyz_saver.launch


* **cfg/** - Fichiers de configuration 
	* **analyzers.yaml**: Fichier de configuration pour _diagnostic_aggregator_.
	* **configuration.yaml**: Fichier de configuration pour les launchs
	* **ulysse.rviz**: Configuration de RVIZ pour bathymétrie à Guerlédan.
	
* **launch/** - Fichiers de lancement

	* **controller.launch**: Gestion de la navigation
		* **diagnostic_aggregator**: avec la configuration du `/ulysse_starter/cfg/analyzers.yaml`
		* **controller.py**:  Gestion de la navigation dont le retour sur zone. Voir [ulysse_navigation](../ulysse_navigation/README.md).
		* **mavros**: Connexion sur le mavproxy
		
	* **imu.launch**: Gestion de l'IMU SBG ekinox
		* **sbg_driver**: avec la configuration ekinox voir package `/sbg_ros_driver/config/example/ekinox.yaml`. Voir [sbg_driver](../sbg_ros_driver/README.md).
		* **sbg_geonav_tranform**: lance **geonav_transform** et le node **sbg_to_odom** pour la transformation Lat/Long en X/Y. Voir [ulysse_tf](../ulysse_tf/README.md).
		* **ublox_manual_head_cumputing.py**: Gestion des GPS. Voir [ublox_gps](../ublox_gps/README.md).
	
	* **mbes.launch**: Gestion du Multifaisceau R2Sonic2020
		* **mbes_to_ros_from_socket.py**: transformation des données brutes en _PointCloud_ sous ROS. Voir [mbes](../mbes/README.md).
		* **static_transform_publisher**: TF statique entre _imu_ et _mbes_.
		* **celerity.py**: calcul de la SSV. Voir [ssv_computing](../ssv_computing/README.md).
	
	* **rviz.launch**: Lance RVIZ avec la configuration utile à Ulysse lors des acquisitions de Guerlédan.
	
	* **tf_starter.launch**: Lance toutes les TF nécessaires et le marker Ulysse.
		* **sbg_geonav_tranform**: lance **geonav_transform** et le node **sbg_to_odom** pour la transformation Lat/Long en X/Y. Voir [ulysse_tf](../ulysse_tf/README.md).
		* **static_transform_publisher**: TF statique entre _imu_ et _mbes_.
		* **boat_simulator.py**: Marker Ulysse pour la visualisation. Voir [ulysse_tf](../ulysse_tf/README.md).
		
	* **ulysse.launch**: Lance tous les nodes utiles pour la bathymétrie:
		* **diagnostic_aggregator**: avec la configuration du `/ulysse_starter/cfg/analyzers.yaml`
		* **controller.py**: Gestion de la navigation dont le retour sur zone. Voir [ulysse_navigation](../ulysse_navigation/README.md).
		* **celerity.py**: calcul de la SSV. Voir [ssv_computing](../ssv_computing/README.md).
		* **ublox_manual_head_cumputing.py**: Gestion des GPS. Voir [ublox_gps](../ublox_gps/README.md).
		* **mbes_to_ros_from_socket.py**: transformation des données brutes en _PointCloud_ sous ROS. Voir [mbes](../mbes/README.md).
		* **sbg_driver**: avec la configuration ekinox voir package `/sbg_ros_driver/config/example/ekinox.yaml`. Voir [sbg_driver](../sbg_ros_driver/README.md).
		* **tf_starter.launch**: Lance toutes les TF nécessaires et le marker Ulysse. Voir [ulysse_tf](../ulysse_tf/README.md).
		* **mavros**: Connexion sur le mavproxy
		
	* **xyz_saver.launch**: Lance les nodes nécessaire à la fabrication d'un fichier MNT.
		* **mbes.launch**: Gestion du Multifaisceau R2Sonic2020. Voir ci dessus.
		* **imu.launch**: Gestion de l'IMU SBG ekinox. Voir ci dessus.
		* **xyz_saver.py**: Enregistrement du fichier MNT. Voir [mnt](../mnt/README.md).

	* **robag_analyzer/**:
		* **rosbag_tf.launch**: Launch utiliser pour gérer certains rosbag dont les données sont erronées à cause des TF.
		
Configuration d'Ulysse
-----

#### 1. `configuration.yaml`

La configuration se fait via le fichier `cfg/configuration.yaml` du package `ulysse_starter` pour les éléments suivants:

* **GPS**
	* Port séries des ublox
	* Serveur UDP
	* Biais en cap
	
* **SSV**
	* Port série du capteur
	* Serveur UDP
	
* **SVP**
	* Fichier de SVP
	
* **Bras de levier - IMU/MBES**
	* Position en mètre
	* Angles par quaternion

* **Odométrie**
	* Point de référence pour l'odométrie 


#### 2. `sbg_ekinox.yaml`

En ce qui l'IMU, la configuration se fait dans le fichier yaml `config/example/sbg_ekinox.yaml`du package `sbg_ros_driver`. Cette configuration est à changer en fonction de la configuration du port `eth4` de l'IMU (IP: `10.0.1.59`) (configuration actuelle).

#### 3. Mavproxy

**Mavproxy** se lance en local sur le NUC d'Ulysse (sinon il faut changer la configuration dans les launchs). Pour ce faire il suffit de lancer la commande:
~~~~sh
$ mavproxy.py --master=tcp:10.0.1.20:4003 --out=127.0.0.1:14551 
~~~~
