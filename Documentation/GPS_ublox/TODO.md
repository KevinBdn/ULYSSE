GPS u-blox
=====

* Référence: u-blox ZED-F9H
* Doc: Interface Description - Manual p.155-156 (/254 - Ref: UBX-19030118-R1)

En utilisant deux de ces GPS on peut avoir le cap de manière automatique. Le premier GPS fournit la position (trames NMEA) le seond fournit alors le cap (trames UBX-NAV-RELPOSNED) sous la forme d'un message binaire.


Message binaire - little-endian
-------

Composé de :

* **Header**: 2 octets - (**0xB5 0x62**)
* **Class**: 1 octet - (**0x01**)
* **ID**: 1 octet - (**0x3C**)
* **Length**: 2 octets - taille en octets en little endian (**0x40 0x00**=64)
* **Payload** (information utile): voir ci dessous
* **Checksum**: 2 octets

_N.B. : un 2 hexa = 16² = 2⁸ = 1 octet_

**Payload** : 
	
 | Byte offset | Format | Scaling | Name | Unit | Description |
 |-------|-------|------|-----|-----|-----|
 | 20 | I4 | - | relPosLength | cm  | Taille du vecteur formé par les deux GPS |
 | 24 | I4 | 1e-5 | relPosHeading | deg  | Cap du vecteur formé par les deux GPS |
 | 35 | I1 | 0.1 | relPosHPLength | mm  | Taille haute précision du vecteur formé par les deux GPS. La taille totale (distance entre les deux GPS) est alors: relPosLength+(relPosHPLength*1e-2) |
 | 48 | U4 | 0.1 | accLength | mm | Incertitude de la taille du vecteur |
 | 52 | U4 | 1e-5 | accHeading | deg | Incertitude du cap |
 
 On peut donc directement lire c'est données grâce aux offsets sans avoir besoin de parcourir toute la structure. 
 
 Exemple: `data[6+offset]`
 
 * `data[26]`: Distance
 * `data[30]`: Cap
 * `data[41]`: Distance HP
 * Distance totale = `data[26]+data[41]*0.01`
 * `data[54]`: Incertitude distance
 * `data[58]`: Incertitude cap
 
 L'utilité d'avoir la distance du vecteur formé par les deux GPS permet de savoir si les mesures sont aberrantes ou non, car nous connaissons exactement cette valeur.
 
 
 **Checksum**: 

* **CK_A**: Il s'agit de la somme de tous les octets de **Class** (inclus) à **Checksum** exclut combiné avec un &0xFF (afin de n'avoir que 1 octet): `(Class+Id+Length+Payload)&0xFF`.

 Voir p.31 de la doc:
 
	CK_A,CK_B = 0, 0
	for i in range(len(packet)):
	  CK_A = CK_A + packet[i]
	  CK_B = CK_B + CK_A

	# ensure unsigned byte range
	CK_A = CK_A & 0xFF
	CK_B = CK_B & 0xFF
	
NB: Le CK_A fonctionne bien mais pas le CK_B ... voir code `test_checksum.py`

Norme Checksum RFC 1145: https://www.ietf.org/rfc/rfc1145.txt

