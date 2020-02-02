;; Auto-generated. Do not edit!


(when (boundp 'sbg_driver::SbgStatus)
  (if (not (find-package "SBG_DRIVER"))
    (make-package "SBG_DRIVER"))
  (shadow 'SbgStatus (find-package "SBG_DRIVER")))
(unless (find-package "SBG_DRIVER::SBGSTATUS")
  (make-package "SBG_DRIVER::SBGSTATUS"))

(in-package "ROS")
;;//! \htmlinclude SbgStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass sbg_driver::SbgStatus
  :super ros::object
  :slots (_header _time_stamp _status_general _status_com _status_aiding ))

(defmethod sbg_driver::SbgStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:time_stamp __time_stamp) 0)
    ((:status_general __status_general) (instance sbg_driver::SbgStatusGeneral :init))
    ((:status_com __status_com) (instance sbg_driver::SbgStatusCom :init))
    ((:status_aiding __status_aiding) (instance sbg_driver::SbgStatusAiding :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _time_stamp (round __time_stamp))
   (setq _status_general __status_general)
   (setq _status_com __status_com)
   (setq _status_aiding __status_aiding)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:time_stamp
   (&optional __time_stamp)
   (if __time_stamp (setq _time_stamp __time_stamp)) _time_stamp)
  (:status_general
   (&rest __status_general)
   (if (keywordp (car __status_general))
       (send* _status_general __status_general)
     (progn
       (if __status_general (setq _status_general (car __status_general)))
       _status_general)))
  (:status_com
   (&rest __status_com)
   (if (keywordp (car __status_com))
       (send* _status_com __status_com)
     (progn
       (if __status_com (setq _status_com (car __status_com)))
       _status_com)))
  (:status_aiding
   (&rest __status_aiding)
   (if (keywordp (car __status_aiding))
       (send* _status_aiding __status_aiding)
     (progn
       (if __status_aiding (setq _status_aiding (car __status_aiding)))
       _status_aiding)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _time_stamp
    4
    ;; sbg_driver/SbgStatusGeneral _status_general
    (send _status_general :serialization-length)
    ;; sbg_driver/SbgStatusCom _status_com
    (send _status_com :serialization-length)
    ;; sbg_driver/SbgStatusAiding _status_aiding
    (send _status_aiding :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _time_stamp
       (write-long _time_stamp s)
     ;; sbg_driver/SbgStatusGeneral _status_general
       (send _status_general :serialize s)
     ;; sbg_driver/SbgStatusCom _status_com
       (send _status_com :serialize s)
     ;; sbg_driver/SbgStatusAiding _status_aiding
       (send _status_aiding :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _time_stamp
     (setq _time_stamp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; sbg_driver/SbgStatusGeneral _status_general
     (send _status_general :deserialize buf ptr-) (incf ptr- (send _status_general :serialization-length))
   ;; sbg_driver/SbgStatusCom _status_com
     (send _status_com :deserialize buf ptr-) (incf ptr- (send _status_com :serialization-length))
   ;; sbg_driver/SbgStatusAiding _status_aiding
     (send _status_aiding :deserialize buf ptr-) (incf ptr- (send _status_aiding :serialization-length))
   ;;
   self)
  )

(setf (get sbg_driver::SbgStatus :md5sum-) "1b73c890bd111d40339f4be9a7495e96")
(setf (get sbg_driver::SbgStatus :datatype-) "sbg_driver/SbgStatus")
(setf (get sbg_driver::SbgStatus :definition-)
      "# SBG Ellipse Messages

Header header

# Time since sensor is powered up (in us)
uint32 time_stamp

# General status bitmask and enums
SbgStatusGeneral status_general

# Communication status bitmask and enums.
SbgStatusCom status_com

# Aiding equipments status bitmask and enums.
SbgStatusAiding status_aiding

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: sbg_driver/SbgStatusGeneral
# SBG Ellipse Messages
# SbgStatus submessage

# General main power
# True when main power supply is OK.
bool main_power

# General imu power
# True when IMU power supply is OK.
bool imu_power

# General gps power
# Set to True when GPS power supply is OK.
bool gps_power

# General Settings
# True if settings were correctly loaded
bool settings

# General Temperature
# True when temperature is within specified limits.
bool temperature
================================================================================
MSG: sbg_driver/SbgStatusCom
# SBG Ellipse Messages
# SbgStatus submessage

# PORT A: False in case of low level communication error.
bool port_a

# PORT B: False in case of low level communication error.
bool port_b

# PORT C: False in case of low level communication error.
bool port_c

# PORT D: False in case of low level communication error.
bool port_d

# PORT E: False in case of low level communication error.
bool port_e

# PORT A RX: False in case of saturation on PORT A input
bool port_a_rx

# PORT A TX: False in case of saturation on PORT A output
bool port_a_tx

# PORT B RX: False in case of saturation on PORT B input
bool port_b_rx

# PORT B TX: False in case of saturation on PORT B output
bool port_b_tx

# PORT C RX: False in case of saturation on PORT C input
bool port_c_rx

# PORT C TX: False in case of saturation on PORT C output
bool port_c_tx

# PORT D RX: False in case of saturation on PORT D input
bool port_d_rx

# PORT D TX: False in case of saturation on PORT D output
bool port_d_tx

# PORT E RX: False in case of saturation on PORT E input
bool port_e_rx

# PORT E TX: False in case of saturation on PORT E output
bool port_e_tx

# CAN RX: False in case of saturation on CAN Bus output buffer
bool can_rx

# CAN TX: False in case of saturation on CAN Bus input buffer
bool can_tx

# CAN BUS
# 0 CAN BUS OFF 		Bus OFF operation due to too much errors.
# 1 CAN BUS TX_RX_ERR 	Transmit or received error.
# 2 CAN BUS OK 			The CAN bus is working correctly.
# 3 CAN BUS ERROR 		A general error has occurred on the CAN bus.
uint8 can_status
================================================================================
MSG: sbg_driver/SbgStatusAiding
# SBG Ellipse Messages
# SbgStatus submessage

# AIDING_GPS1_POS_RECV true when valid GPS 1 position data is received
bool gps1_pos_recv

# AIDING_GPS1_VEL_RECV true when valid GPS 1 velocity data is received
bool gps1_vel_recv

# AIDING_GPS1_HDT_RECV true when valid GPS 1 true heading data is received
bool gps1_hdt_recv

# AIDING_GPS1_UTC_RECV true when valid GPS 1 UTC time data is received
bool gps1_utc_recv

# AIDING_MAG_RECV true when valid Magnetometer data is received
bool mag_recv

# AIDING_ODO_RECV true when Odometer pulse is received
bool odo_recv

# AIDING_DVL_RECV true when valid DVL data is received
bool dvl_recv

")



(provide :sbg_driver/SbgStatus "1b73c890bd111d40339f4be9a7495e96")


