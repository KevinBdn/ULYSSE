SGB Data Brut
=========

* On récupère ici les données brutes binaire du type `SbgECom Logs`
* Voir les paramètres des Output de l'IMU via l'addresse web : `10.0.1.59`. Trois port sont actuellement définis avec trois données de sorties:

	* `1088`: Euler angle EKF (40 Hz) **[DOC: p69]**
	
	* `1089`: Nav EKF (40 Hz) **[DOC: p71]**
	
	* `1090`: UTC (50 Hz) **[DOC: p64]**

Si on sélectionne plusieurs output sur une même sortie ethernet alors plusieurs message binaires seront envoyé sur le même port. Il faudra alors les lire pour les trier.

Les messages binaires on un `header` et une partie `end` **[DOC: p15]**

Chaque data récupérée commence par un `TIME_STAMP` qui est le temps de la création de la trame depuis le démarrage de la centrale. 