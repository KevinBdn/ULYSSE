Utilisation de rosbag
====

#### Enregistrer un rosbag

Si l'on souhaite enregistrer tous les topics:
~~~
$ rosbag record -a
~~~

Si l'on souhaite tous les enregistrer sauf certains on utilise l'option `-x`:
~~~
rosbag record -a -x '/mavros/(.*)'
~~~

#### Rejouer un rosbag

**1. Gestion du temps**

Lancer un _roscore_:

	$ rocore
	
Passer le temps en simulation:

	$ rosparam set use_sim_time true

Lancer un rosbag avec l'option `--clock`:

~~~sh
$ rosbag play Ligne2_mbes_equi_distant/2020-02-06-17-27-43.bag --clock
~~~	

**2. Choisir les topics à rejouer**:

On utilise l'option `--topics`

~~~sh
$ rosbag play Ligne2_mbes_equi_distant/2020-02-06-17-27-43.bag --topics /sbg/ekf_nav /sbg/ekf_quat /sbg/utc_time /ulysse/mbes/data --clock
~~~

