IMU Ellipse Ekinox
====

On peut a priori envoyer dans le réseau des trames ASCII souhaitée (la liste est visible dans la doc).

* **CGA message - Doc p.88**

	On récupère grâce à cette trame la Time, Latitude, Longitude, Altitude après le filtre de kalman.
	
		$GPGGA,000010.00,4852.10719,N,00209.42313,E,0,00,0.0,-44.7,M,0.0,M,,,*63<CR><LF>
	
	|Field | Name | Format | Description |
	|---------|---------|-----------|--------------|
	| 1 | Time | hhmmss.ss | UTC Time, current time |
	| 2 | Latitude | ddmm.mmmmm | Latitude: degree + minutes |
	| 4 | Longitude | dddmm.mmmmm | Longitude: degree + minutes|
	| 9 | Altitude MSL | ffff.fff | Altitude above Mean Sea Level in meters |
	| 11 | Undulation | fff.fff | Geoidal separation between WGS-84 and MSL in meters) |
	
	Pour l'altitude il faut faire Field 9 + Field 11.
	
* **PASHR Message - Doc p.98**

	On récupère grâce à cette trame les trois angles d'Euler (Roll, Pitch, Heading) ainsi que leurs incertitudes.
	
		$PASHR,085335.000,224.19,T,-01.26,+00.83,+00.00,0.101,0.113,0.267,1,0*06<CR><LF>
		

	|Field | Name | Format | Description |
	|---------|---------|-----------|--------------|
	|1 | timeUTC | hhmmss.ss | Current UTC time |
	|2 | heading | fff.ff|  Heading angle, in decimal degrees [0 – 360°]|
	|4 | roll | fff.ff | Roll in decimal degrees. From [-180 – 180°]|
	|5 | pitch | fff.ff | Pitch in decimal degrees. From [-90 – 90°]|
	|7 | rollStd | fff.ff | Roll angle standard deviation in decimal degrees|
	|8 | pitchStd | fff.ff | Pitch angle standard deviation in decimal degrees|
	|9 | headingStd | fff.ff | Heading angle standard deviation in decimal degrees |
	

Il faut ensuite synchroniser les temps entre ces trames et le R2Sonic.

* **Remarques**

Il faudra ensuite rajouter la matrice de changement de passage entre la centrale inertielle et le multaisceau.