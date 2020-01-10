# Noeud Controller

## 1. Topics et services utilisés

### Subscribers
* /mavros/state : état courant d'Ulysse (ARMED, AUTO, MANUAL, LOITER...)
* /mavros/battery : état de la baterrie
* /mavros/mission/waypoint : liste des waypoints du parcours lancé, waypoint courant
* /warning : alerte sur une mauvaise mesure

### Publishers
* /Diagnostics : publication de l'état courant, de l'état de la batterie et du nombre de waypoints sur le parcours en cours
* controller/battery_level/level
* controller/state/mode
* controller/state/armed
* controller/waypoints/number

### Services
* /mavros/mission/set_current
* /mavros/set_mode

## 2 . Informations sur le code

Lorsqu'un warning arrive, la fonction warning_callback() différencie les différents types de warning : l'alerte sur une mauvaise mesure (1) et l'alerte pour la mise en mode loiter du bateau (-1).
* Pour l'alerte  sur une mauvaise mesure, le waypoint courant est enregistré dans la variable wp_enregistre.
La fonction wpt_chang() (appelée à chaque changement de waypoint) au changement du waypoint suivant la réception du warning publie sur le service /mavros/mission/set_current le waypoint précedant l'erreur (wp_enregistre-1). La variable warning est ensuite remise à zéro (état initial).
* Pour la mise en mode loiter, l'état 'HOLD' est publié sur le service mavros/set_mode.

*Attention* :
  rosservice call /mavros/mission/set_current "wp_seq: X"
  L'index 1 et 0 designe le même waypoint, le waypoints 1
