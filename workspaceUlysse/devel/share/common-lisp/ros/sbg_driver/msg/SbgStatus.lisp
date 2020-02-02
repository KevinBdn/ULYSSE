; Auto-generated. Do not edit!


(cl:in-package sbg_driver-msg)


;//! \htmlinclude SbgStatus.msg.html

(cl:defclass <SbgStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (time_stamp
    :reader time_stamp
    :initarg :time_stamp
    :type cl:integer
    :initform 0)
   (status_general
    :reader status_general
    :initarg :status_general
    :type sbg_driver-msg:SbgStatusGeneral
    :initform (cl:make-instance 'sbg_driver-msg:SbgStatusGeneral))
   (status_com
    :reader status_com
    :initarg :status_com
    :type sbg_driver-msg:SbgStatusCom
    :initform (cl:make-instance 'sbg_driver-msg:SbgStatusCom))
   (status_aiding
    :reader status_aiding
    :initarg :status_aiding
    :type sbg_driver-msg:SbgStatusAiding
    :initform (cl:make-instance 'sbg_driver-msg:SbgStatusAiding)))
)

(cl:defclass SbgStatus (<SbgStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SbgStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SbgStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sbg_driver-msg:<SbgStatus> is deprecated: use sbg_driver-msg:SbgStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SbgStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:header-val is deprecated.  Use sbg_driver-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'time_stamp-val :lambda-list '(m))
(cl:defmethod time_stamp-val ((m <SbgStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:time_stamp-val is deprecated.  Use sbg_driver-msg:time_stamp instead.")
  (time_stamp m))

(cl:ensure-generic-function 'status_general-val :lambda-list '(m))
(cl:defmethod status_general-val ((m <SbgStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:status_general-val is deprecated.  Use sbg_driver-msg:status_general instead.")
  (status_general m))

(cl:ensure-generic-function 'status_com-val :lambda-list '(m))
(cl:defmethod status_com-val ((m <SbgStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:status_com-val is deprecated.  Use sbg_driver-msg:status_com instead.")
  (status_com m))

(cl:ensure-generic-function 'status_aiding-val :lambda-list '(m))
(cl:defmethod status_aiding-val ((m <SbgStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:status_aiding-val is deprecated.  Use sbg_driver-msg:status_aiding instead.")
  (status_aiding m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SbgStatus>) ostream)
  "Serializes a message object of type '<SbgStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time_stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time_stamp)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'status_general) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'status_com) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'status_aiding) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SbgStatus>) istream)
  "Deserializes a message object of type '<SbgStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time_stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time_stamp)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'status_general) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'status_com) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'status_aiding) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SbgStatus>)))
  "Returns string type for a message object of type '<SbgStatus>"
  "sbg_driver/SbgStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SbgStatus)))
  "Returns string type for a message object of type 'SbgStatus"
  "sbg_driver/SbgStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SbgStatus>)))
  "Returns md5sum for a message object of type '<SbgStatus>"
  "1b73c890bd111d40339f4be9a7495e96")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SbgStatus)))
  "Returns md5sum for a message object of type 'SbgStatus"
  "1b73c890bd111d40339f4be9a7495e96")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SbgStatus>)))
  "Returns full string definition for message of type '<SbgStatus>"
  (cl:format cl:nil "# SBG Ellipse Messages~%~%Header header~%~%# Time since sensor is powered up (in us)~%uint32 time_stamp~%~%# General status bitmask and enums~%SbgStatusGeneral status_general~%~%# Communication status bitmask and enums.~%SbgStatusCom status_com~%~%# Aiding equipments status bitmask and enums.~%SbgStatusAiding status_aiding~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sbg_driver/SbgStatusGeneral~%# SBG Ellipse Messages~%# SbgStatus submessage~%~%# General main power~%# True when main power supply is OK.~%bool main_power~%~%# General imu power~%# True when IMU power supply is OK.~%bool imu_power~%~%# General gps power~%# Set to True when GPS power supply is OK.~%bool gps_power~%~%# General Settings~%# True if settings were correctly loaded~%bool settings~%~%# General Temperature~%# True when temperature is within specified limits.~%bool temperature~%================================================================================~%MSG: sbg_driver/SbgStatusCom~%# SBG Ellipse Messages~%# SbgStatus submessage~%~%# PORT A: False in case of low level communication error.~%bool port_a~%~%# PORT B: False in case of low level communication error.~%bool port_b~%~%# PORT C: False in case of low level communication error.~%bool port_c~%~%# PORT D: False in case of low level communication error.~%bool port_d~%~%# PORT E: False in case of low level communication error.~%bool port_e~%~%# PORT A RX: False in case of saturation on PORT A input~%bool port_a_rx~%~%# PORT A TX: False in case of saturation on PORT A output~%bool port_a_tx~%~%# PORT B RX: False in case of saturation on PORT B input~%bool port_b_rx~%~%# PORT B TX: False in case of saturation on PORT B output~%bool port_b_tx~%~%# PORT C RX: False in case of saturation on PORT C input~%bool port_c_rx~%~%# PORT C TX: False in case of saturation on PORT C output~%bool port_c_tx~%~%# PORT D RX: False in case of saturation on PORT D input~%bool port_d_rx~%~%# PORT D TX: False in case of saturation on PORT D output~%bool port_d_tx~%~%# PORT E RX: False in case of saturation on PORT E input~%bool port_e_rx~%~%# PORT E TX: False in case of saturation on PORT E output~%bool port_e_tx~%~%# CAN RX: False in case of saturation on CAN Bus output buffer~%bool can_rx~%~%# CAN TX: False in case of saturation on CAN Bus input buffer~%bool can_tx~%~%# CAN BUS~%# 0 CAN BUS OFF 		Bus OFF operation due to too much errors.~%# 1 CAN BUS TX_RX_ERR 	Transmit or received error.~%# 2 CAN BUS OK 			The CAN bus is working correctly.~%# 3 CAN BUS ERROR 		A general error has occurred on the CAN bus.~%uint8 can_status~%================================================================================~%MSG: sbg_driver/SbgStatusAiding~%# SBG Ellipse Messages~%# SbgStatus submessage~%~%# AIDING_GPS1_POS_RECV true when valid GPS 1 position data is received~%bool gps1_pos_recv~%~%# AIDING_GPS1_VEL_RECV true when valid GPS 1 velocity data is received~%bool gps1_vel_recv~%~%# AIDING_GPS1_HDT_RECV true when valid GPS 1 true heading data is received~%bool gps1_hdt_recv~%~%# AIDING_GPS1_UTC_RECV true when valid GPS 1 UTC time data is received~%bool gps1_utc_recv~%~%# AIDING_MAG_RECV true when valid Magnetometer data is received~%bool mag_recv~%~%# AIDING_ODO_RECV true when Odometer pulse is received~%bool odo_recv~%~%# AIDING_DVL_RECV true when valid DVL data is received~%bool dvl_recv~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SbgStatus)))
  "Returns full string definition for message of type 'SbgStatus"
  (cl:format cl:nil "# SBG Ellipse Messages~%~%Header header~%~%# Time since sensor is powered up (in us)~%uint32 time_stamp~%~%# General status bitmask and enums~%SbgStatusGeneral status_general~%~%# Communication status bitmask and enums.~%SbgStatusCom status_com~%~%# Aiding equipments status bitmask and enums.~%SbgStatusAiding status_aiding~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sbg_driver/SbgStatusGeneral~%# SBG Ellipse Messages~%# SbgStatus submessage~%~%# General main power~%# True when main power supply is OK.~%bool main_power~%~%# General imu power~%# True when IMU power supply is OK.~%bool imu_power~%~%# General gps power~%# Set to True when GPS power supply is OK.~%bool gps_power~%~%# General Settings~%# True if settings were correctly loaded~%bool settings~%~%# General Temperature~%# True when temperature is within specified limits.~%bool temperature~%================================================================================~%MSG: sbg_driver/SbgStatusCom~%# SBG Ellipse Messages~%# SbgStatus submessage~%~%# PORT A: False in case of low level communication error.~%bool port_a~%~%# PORT B: False in case of low level communication error.~%bool port_b~%~%# PORT C: False in case of low level communication error.~%bool port_c~%~%# PORT D: False in case of low level communication error.~%bool port_d~%~%# PORT E: False in case of low level communication error.~%bool port_e~%~%# PORT A RX: False in case of saturation on PORT A input~%bool port_a_rx~%~%# PORT A TX: False in case of saturation on PORT A output~%bool port_a_tx~%~%# PORT B RX: False in case of saturation on PORT B input~%bool port_b_rx~%~%# PORT B TX: False in case of saturation on PORT B output~%bool port_b_tx~%~%# PORT C RX: False in case of saturation on PORT C input~%bool port_c_rx~%~%# PORT C TX: False in case of saturation on PORT C output~%bool port_c_tx~%~%# PORT D RX: False in case of saturation on PORT D input~%bool port_d_rx~%~%# PORT D TX: False in case of saturation on PORT D output~%bool port_d_tx~%~%# PORT E RX: False in case of saturation on PORT E input~%bool port_e_rx~%~%# PORT E TX: False in case of saturation on PORT E output~%bool port_e_tx~%~%# CAN RX: False in case of saturation on CAN Bus output buffer~%bool can_rx~%~%# CAN TX: False in case of saturation on CAN Bus input buffer~%bool can_tx~%~%# CAN BUS~%# 0 CAN BUS OFF 		Bus OFF operation due to too much errors.~%# 1 CAN BUS TX_RX_ERR 	Transmit or received error.~%# 2 CAN BUS OK 			The CAN bus is working correctly.~%# 3 CAN BUS ERROR 		A general error has occurred on the CAN bus.~%uint8 can_status~%================================================================================~%MSG: sbg_driver/SbgStatusAiding~%# SBG Ellipse Messages~%# SbgStatus submessage~%~%# AIDING_GPS1_POS_RECV true when valid GPS 1 position data is received~%bool gps1_pos_recv~%~%# AIDING_GPS1_VEL_RECV true when valid GPS 1 velocity data is received~%bool gps1_vel_recv~%~%# AIDING_GPS1_HDT_RECV true when valid GPS 1 true heading data is received~%bool gps1_hdt_recv~%~%# AIDING_GPS1_UTC_RECV true when valid GPS 1 UTC time data is received~%bool gps1_utc_recv~%~%# AIDING_MAG_RECV true when valid Magnetometer data is received~%bool mag_recv~%~%# AIDING_ODO_RECV true when Odometer pulse is received~%bool odo_recv~%~%# AIDING_DVL_RECV true when valid DVL data is received~%bool dvl_recv~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SbgStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'status_general))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'status_com))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'status_aiding))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SbgStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'SbgStatus
    (cl:cons ':header (header msg))
    (cl:cons ':time_stamp (time_stamp msg))
    (cl:cons ':status_general (status_general msg))
    (cl:cons ':status_com (status_com msg))
    (cl:cons ':status_aiding (status_aiding msg))
))
