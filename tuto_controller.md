# Noeud Controller

## 1. Topics et services utilisés

### Subscribers
* /mavros/state : état courant d'Ulysse (ARMED, AUTO, MANUAL, LOITER...)
* /mavros/battery : état de la baterrie
* /mavros/mission/Waypoint : liste des waypoints du parcours lancé, waypoints courant
* /warning : alerte sur une mauvaise mesure

### Publishers
* /Diagnostics : publication de l'état courant, de l'état de la batterie et du nombre de waypoints sur le parcours en cours

### Services
* /mavros/mission/set_current

## 2 . Informations sur le code

Lorsqu'un warning arrive, on enregistre le waypoint courant dans la variable wp_enregistre. La fonction fsm() qui est appelé à chaque changement de waypoint, au changement du waypoint publie sur le service /mavros/mission/set_current le waypoint précedant l'erreur (wp_enregistre-1).
