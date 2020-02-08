GNSS - Configuration
====

### Branchement NUC-17

* **GPS AV**: `ttyACM1` bd=`115200`

* **GPS AR**: `ttyACM0` bd=`115200`

### RTKlib

#### Depuis station sol

* **Via `strsvr_qt`**:

	* TCP_client: `193.52.45.41` - port `2534`
	* Outputs configurés sur GPS AV et GPS ARR

* **Via `str2str`**:

	str2str -in tcpcli://193.52.45.41:2534 -out serial://ttyACM1:115200:7:N:1:off -out serial://ttyACM0:115200:7:N:1:off
	

### Lancer le node ROS : `ublox_gps ublox_manual_head_cumputing.py`

A adapter selon le mode de lancement:

	nohup rosrun ublox_gps ublox_manual_head_cumputing.py
	
