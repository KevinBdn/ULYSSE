Installation et utilisation d'un simulateur
========================

Installation
------------

* Intaller mavproxy

		pip install MAVproxy --user

* Telecharger ardupilot

		git clone ...

* Intaller les simulateurs

		cd ardupilot
		./waf configure
		./waf --program-group bin

* Lancer le Rover (APMrover2)

		cd ardupilot/Tools/autotest
		./sim_vehicle.py -v APMrover2 --map --console

* Lancer un roscore

		roscore

* Lancer mavros

		roslaunch mavros apm.launch fcu_url:=udp://127.0.0.1:14550@

Navigation avec retour sur zone (ROS)
----------------------------------

* Créer un tracé à la main
	* Map > Clic droit > Mission > Draw
	* Enregistrer le ci nécessaire: Console > Mission > Save
	
* Armer 
	
		rosservice call /mavos/cmd/arming "value: true"
	
* Lancer la mission : mode Auto

		rosservice call /mavros/set_mode  "base_mode: 0 
		custom_mode: 'AUTO'" 

* Gérer les waypoints:
	* Voir la liste du parcours:
	
			rostopic echo /mavros/mission/waypoints
			
	* Voir les waypoints déjà atteints:
	
			rostopic echo /mavros/mission/reached
			
	* Choisir le prochain waypoint:
	
			rosservice call /mavros/mission/set_current "wp_seq: X" #X = le numero du waypoint dans l'ordre du parcours
		
	* Bloquer l'avancer de la mission:
		
			rosservice call /mavros/set_mode  "base_mode: 0 
			custom_mode: 'HOLD'" #Remettre 'AUTO' pour continuer

	* Enregistrer la position actuelle le départ de la mission:

			rosservice call /mavros/cmd/set_home "current_gps: true
			latitude: 0.0
			longitude: 0.0
			altitude: 0.0" 
	
	* Aller au départ:
	
			rosservice call /mavros/set_mode  "base_mode: 0 
			custom_mode: 'RTL'" #Retourner au HOME 
			

	* Si Mission terminée pour la relancer depuis le Xeme point:

			rosservice call /mavros/set_mode  "base_mode: 0 
			custom_mode: 'HOLD'" 
			
			rosservice call /mavros/mission/set_current "wp_seq: X" #X = le numero du waypoint dans l'ordre du parcours
			
			rosservice call /mavros/set_mode  "base_mode: 0 
			custom_mode: 'AUTO'" 			