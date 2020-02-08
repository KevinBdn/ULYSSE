ROS packages
============

Package regroupant les launchs utiles pour faire de la bathymétrie depuis ROS sur Ulysse
		
Répertoires
------------
* **cfg/** - Fichiers de configuration 
	* **analyzers.yaml**: Fichier de configuration pour _diagnostic_aggregator_.
	* **ulysse.rviz**: Configuration de RVIZ pour bathymétrie à Guerlédan.
	
* **launch/** - Fichiers de lancement

	* **controller.launch**: Gestion de la navigation
		* **diagnostic_aggregator**: avec la configuration du `/ulysse_starter/cfg/analyzers.yaml`
		* **controller.py**: `/ulysse_navigation/src/controller.py` - Gestion de la navigation et dont le retour sur zone
		* **mavros**: Connexion sur le mavproxy
		
	* **imu.launch**: Gestion de l'IMU SBG ekinox
		* **sbg_driver**: avec la configuration ekinox voir package `/sbg_ros_driver/config/example/ekinox.yaml`
		* **sbg_geonav_tranform**: lance **geonav_transform** et le node **sbg_to_odom** pour la transformation Lat/Long en X/Y. Voir `/ulysse_tf/launch/sbg_geonav_transform.launch`
		* **ublox_manual_head_cumputing.py**: Gestion des GPS voir `/ublox_gps/src/ublox_manual_head_cumputing.py`.
	
	* **mbes.launch**: Gestion du Multifaisceau R2Sonic2020
		* **mbes_to_ros_from_socket.py**: transformation des données brutes en _PointCloud_ sous ROS. Voir `/mbes/srs/MBES_manager/ mbes_to_ros_from_socket.py`.
		* **static_transform_publisher**: TF statique entre _imu_ et _mbes_.
		* **celerity.py**: calcul de la SSV. Voir `/ssv_computing/src/celerity.py`.
	
	* **rviz.launch**: Lance RVIZ avec la configuration utile à Ulysse lors des acquisitions de Guerlédan.
	
	* **tf_starter.launch**: Lance toutes les TF nécessaires et le marker Ulysse.
		* **sbg_geonav_tranform**: lance **geonav_transform** et le node **sbg_to_odom** pour la transformation Lat/Long en X/Y. Voir `/ulysse_tf/launch/sbg_geonav_transform.launch`
		* **static_transform_publisher**: TF statique entre _imu_ et _mbes_.
		* **boat_simulator.py**: Marker Ulysse pour la visualisation. Voir `/ulysse_tf/src/Ulysse_marker/boat_simulator.py`.
		
	* **ulysse.launch**: Lance tous les nodes utiles pour la bathymétrie:
		* **diagnostic_aggregator**: avec la configuration du `/ulysse_starter/cfg/analyzers.yaml`
		* **controller.py**: `/ulysse_navigation/src/controller.py` - Gestion de la navigation et dont le retour sur zone
		* **celerity.py**: calcul de la SSV. Voir `/ssv_computing/src/celerity.py`.
		* **ublox_manual_head_cumputing.py**: Gestion des GPS voir `/ublox_gps/src/ublox_manual_head_cumputing.py`.
		* **mbes_to_ros_from_socket.py**: transformation des données brutes en _PointCloud_ sous ROS. Voir `/mbes/srs/MBES_manager/ mbes_to_ros_from_socket.py`.
		* **sbg_driver**: avec la configuration ekinox voir package `/sbg_ros_driver/config/example/ekinox.yaml`
		* **tf_starter.launch**: Lance toutes les TF nécessaires et le marker Ulysse. Voir `/ulysse_starter/launch/tf_starter.launch`.
		* **mavros**: Connexion sur le mavproxy
		
	* **xyz_saver.launch**: Lance les nodes nécessaire à la fabrication d'un fichier MNT.
		* **mbes.launch**: Gestion du Multifaisceau R2Sonic2020. Voir `/ulysse_starter/launch/mbes.launch`.
		* **imu.launch**: Gestion de l'IMU SBG ekinox. Voir `/ulysse_starter/launch/imu.launch`.
		* **xyz_saver.py**: Enregistrement du fichier MNT. Voir `/mbes/src/XYZ/xyz_saver.py`.

		