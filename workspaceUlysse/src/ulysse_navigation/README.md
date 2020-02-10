Controller package
====

Package ROS permettant de gérer la navigation d'Ulysse via MAVROS.

Architecture de dossiers
---

	ulysse_navigation
	└── src
	    └── controller.py

* **src/**:
	* `controller.py`: Script gérant la navigation.

Node ROS
---

Nécessite de lancer `mavros` en amont:

Se lance avec `rosrun`:

	$ rosrun ulysse_navigation controller.py


![](../../readme_resources/controller_node.png)

