SSV Computing Package
====

Package ROS permettant de calculer la célérité de surface (SSV) à partir d'un capteur de température et de salinité.

Architecture de dossiers
---

	ssv_computing
	├── LOGS
	│   └── CELERITY
	└── src
	    └── celerity.py

* **LOGS/**: Fichiers log 
	* **CELERITY/**: Fichiers contenant la célérité de surface calculée.
* **src/**:
	* `celerity.py`: Script calculant la célérité de surface.

Node ROS
---

Se lance avec `rosrun`:

	$ rosrun ssv_computing celerity.py

Lance le node `Celerity` qui publie le topic `/ulysse/ssv`et donne le status du node dans le topic `/diagnostics`.

![](../../readme_resources/ssv_node.png)


Configuration sur Ulysse
---

Les trames sont envoyées en UDP Broadcast `10.255.255.255` sur le port `1040`.

* Brancher le capteur via le convertisseur RS232/USB au NUC-17
	* Port `/dev/ttyUSB0`
	* Baudrate `9600`
* Tester le bon fonctionnement du node:
~~~~
sudo netcat -l -k -u 10.255.255.255 1040 
~~~~