ROS packages
============

Package regroupant les launchs utiles pour faire de la bathymétrie depuis ROS sur Ulysse.
		
Répertoires
------------
* **cfg/** - Fichiers de configuration 
	* **analyzers.yaml**: Fichier de configuration pour _diagnostic_aggregator_.
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

		
Configuration d'Ulysse
-----

* **GPS**
* **SSV**
* **SBG driver**
* **Bras de levier**
* **Mavproxy**