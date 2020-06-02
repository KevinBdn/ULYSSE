Utilisation de MAVProxy sur ULYSSE
======================

Configuration
--------

* Une station de controle = un ordinateur portable
	* IP_EXEMPLE : ```10.0.1.88```
	* **MAVproxy** installé
	* **MAVROS** installé

* Autopilot ULYSSE:
	* IP: ```10.0.1.20```
	* Port: ```4003```
	* Protocole: ```tcp```
	
* NUC-17 - Linux - ULYSSE:
	* IP: ```10.0.1.111```
	* **MAVproxy** installé
	* **MAVROS** installé
	* **ros_ulysse** package installé

Etapes
--------

* Relier la station de controle à ULYSSE via le réseau WIFI

* Sur la station de controle:

	* Lancer mavproxy en se connectant à l'autopilot et en ouvrant deux ports UDP - un en local et un sur le NUC-17. Il est tout à fait envisageable d'ouvrir d'avantage de ports en indiquant l'IP de l'appareil destinataire ainsi qu'un nouveau port. Le `out=IP:PORT` ouvre une connexion UDP alors que `out=0.0.0.0:PORT` ouvre une connexion TCP. 
	
			$ mavproxy.py --master=tcp:10.0.1.20:4003 --out=127.0.0.1:14551 --out=10.0.1.111:14552
			

	* Lancer roscore:
	
			$ roscore
	
	* Lancer MAVROS - le remote port est à priori toujours 14555.
	
			$ roslaunch mavros apm2.launch fcu_url:="udp://127.0.0.1:14551@14555"
			
* Sur le NUC-17:

	* Lancer roscore:
	
			$ roscore
			
	* Checker la configuration de **ulysse.launch**:
	
			<launch>
			  <node pkg="diagnostic_aggregator" type="aggregator_node" name="diagnostic_aggregator"> 
			    <rosparam file="$(find ros_ulysse)/cfg/analyzers.yaml" command="load" />
			  </node>
			  <node pkg="ros_ulysse" type="celerity.py" name="celerity"/> 
			  <arg name="fcu_url" default="udp://10.0.1.111:14552@14555" /> # "tcp://10.0.1.20:4003" pour la connection directe à l'autopilote
			  <include file="$(find mavros)/launch/apm.launch">
			    <arg name="fcu_url" value="$(arg fcu_url)" />
			  </include>
			</launch>
			
	* Lancer le package:
	
			$ roslaunch ros_ulysse ulysse.launch
			
Autre - Inversement
-----

On peut inversement lancer **MAVproxy** sur le NUC-17:

* NUC-17:

	* Lancer MAVproxy:
					
			Sortie UDP:
			
			$ mavproxy.py --master=tcp:10.0.1.20:4003 --out=127.0.0.1:14551 --out=10.0.1.88:14552
			
			Sortie TCP:
			
			$ mavproxy.py --master=tcp:10.0.1.20:4003 --out=127.0.0.1:14551 --out=tcpin:0.0.0.0:5762 --out=tcpin:0.0.0.0:5763 --out=tcpin:0.0.0.0:5764 --out=tcpin:0.0.0.0:5765

			
	* Lancer roscore:
	
			$ roscore
			
	* Checker la configuration de **ulysse.launch**:
	
	
			<launch>
			  <node pkg="diagnostic_aggregator" type="aggregator_node" name="diagnostic_aggregator">
			    <rosparam file="$(find ros_ulysse)/cfg/analyzers.yaml" command="load" />
			  </node>

			  <node pkg="ros_ulysse" type="controller.py" name="controller" />
			  <node pkg="ros_ulysse" type="celerity.py" name="celerity"/> 
			  <node pkg="ros_ulysse" type="gps.py" name="gps"/> 


			<!-- "tcp://10.0.1.20:4003" pour la connection directe à l'autopilote; udp://10.0.1.111:14552@14555 pour mavproxy -->
			<!--Mavproxy : $ mavproxy.py -master=tcp:10.0.1.20:4003 -out=127.0.0.1:14551 -out=10.0.1.88:14552-->

			    <arg name="fcu_url" default="udp://127.0.0.1:14551@14555" />
			  <include file="$(find mavros)/launch/apm2.launch">
			    <arg name="fcu_url" value="$(arg fcu_url)" />
			  </include>
			</launch>
			
	* Lancer le package:
	
			$ roslaunch ros_ulysse ulysse.launch
			

* Station de controle:

		
	* Lancer roscore:
	
			$ roscore
	
	* Lancer MAVROS:
	

			$ roslaunch mavros apm2.launch fcu_url:="udp://10.0.1.88:14552@14555"			
		
	OU 
	
	* Lancer Apmplanner:
	
			$ apmplanner2
			-----------------------
			Communication -> Add Link -> UDP
				UDP Port : 14552
				Add IP -> 
					Host (hostname:port):
						10.0.1.88:14555
		