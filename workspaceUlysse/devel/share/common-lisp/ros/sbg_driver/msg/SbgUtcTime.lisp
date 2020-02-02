; Auto-generated. Do not edit!


(cl:in-package sbg_driver-msg)


;//! \htmlinclude SbgUtcTime.msg.html

(cl:defclass <SbgUtcTime> (roslisp-msg-protocol:ros-message)
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
   (clock_status
    :reader clock_status
    :initarg :clock_status
    :type sbg_driver-msg:SbgUtcTimeStatus
    :initform (cl:make-instance 'sbg_driver-msg:SbgUtcTimeStatus))
   (year
    :reader year
    :initarg :year
    :type cl:fixnum
    :initform 0)
   (month
    :reader month
    :initarg :month
    :type cl:fixnum
    :initform 0)
   (day
    :reader day
    :initarg :day
    :type cl:fixnum
    :initform 0)
   (hour
    :reader hour
    :initarg :hour
    :type cl:fixnum
    :initform 0)
   (min
    :reader min
    :initarg :min
    :type cl:fixnum
    :initform 0)
   (sec
    :reader sec
    :initarg :sec
    :type cl:fixnum
    :initform 0)
   (nanosec
    :reader nanosec
    :initarg :nanosec
    :type cl:integer
    :initform 0)
   (gps_tow
    :reader gps_tow
    :initarg :gps_tow
    :type cl:integer
    :initform 0))
)

(cl:defclass SbgUtcTime (<SbgUtcTime>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SbgUtcTime>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SbgUtcTime)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sbg_driver-msg:<SbgUtcTime> is deprecated: use sbg_driver-msg:SbgUtcTime instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SbgUtcTime>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:header-val is deprecated.  Use sbg_driver-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'time_stamp-val :lambda-list '(m))
(cl:defmethod time_stamp-val ((m <SbgUtcTime>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:time_stamp-val is deprecated.  Use sbg_driver-msg:time_stamp instead.")
  (time_stamp m))

(cl:ensure-generic-function 'clock_status-val :lambda-list '(m))
(cl:defmethod clock_status-val ((m <SbgUtcTime>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:clock_status-val is deprecated.  Use sbg_driver-msg:clock_status instead.")
  (clock_status m))

(cl:ensure-generic-function 'year-val :lambda-list '(m))
(cl:defmethod year-val ((m <SbgUtcTime>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:year-val is deprecated.  Use sbg_driver-msg:year instead.")
  (year m))

(cl:ensure-generic-function 'month-val :lambda-list '(m))
(cl:defmethod month-val ((m <SbgUtcTime>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:month-val is deprecated.  Use sbg_driver-msg:month instead.")
  (month m))

(cl:ensure-generic-function 'day-val :lambda-list '(m))
(cl:defmethod day-val ((m <SbgUtcTime>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:day-val is deprecated.  Use sbg_driver-msg:day instead.")
  (day m))

(cl:ensure-generic-function 'hour-val :lambda-list '(m))
(cl:defmethod hour-val ((m <SbgUtcTime>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:hour-val is deprecated.  Use sbg_driver-msg:hour instead.")
  (hour m))

(cl:ensure-generic-function 'min-val :lambda-list '(m))
(cl:defmethod min-val ((m <SbgUtcTime>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:min-val is deprecated.  Use sbg_driver-msg:min instead.")
  (min m))

(cl:ensure-generic-function 'sec-val :lambda-list '(m))
(cl:defmethod sec-val ((m <SbgUtcTime>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:sec-val is deprecated.  Use sbg_driver-msg:sec instead.")
  (sec m))

(cl:ensure-generic-function 'nanosec-val :lambda-list '(m))
(cl:defmethod nanosec-val ((m <SbgUtcTime>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:nanosec-val is deprecated.  Use sbg_driver-msg:nanosec instead.")
  (nanosec m))

(cl:ensure-generic-function 'gps_tow-val :lambda-list '(m))
(cl:defmethod gps_tow-val ((m <SbgUtcTime>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:gps_tow-val is deprecated.  Use sbg_driver-msg:gps_tow instead.")
  (gps_tow m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SbgUtcTime>) ostream)
  "Serializes a message object of type '<SbgUtcTime>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time_stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time_stamp)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'clock_status) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'year)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'year)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'month)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'day)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hour)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'min)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nanosec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'nanosec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'nanosec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'nanosec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gps_tow)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'gps_tow)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'gps_tow)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'gps_tow)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SbgUtcTime>) istream)
  "Deserializes a message object of type '<SbgUtcTime>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time_stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time_stamp)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'clock_status) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'year)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'year)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'month)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'day)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hour)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'min)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nanosec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'nanosec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'nanosec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'nanosec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gps_tow)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'gps_tow)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'gps_tow)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'gps_tow)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SbgUtcTime>)))
  "Returns string type for a message object of type '<SbgUtcTime>"
  "sbg_driver/SbgUtcTime")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SbgUtcTime)))
  "Returns string type for a message object of type 'SbgUtcTime"
  "sbg_driver/SbgUtcTime")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SbgUtcTime>)))
  "Returns md5sum for a message object of type '<SbgUtcTime>"
  "89495f07708fa38e487b6509c4edabaa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SbgUtcTime)))
  "Returns md5sum for a message object of type 'SbgUtcTime"
  "89495f07708fa38e487b6509c4edabaa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SbgUtcTime>)))
  "Returns full string definition for message of type '<SbgUtcTime>"
  (cl:format cl:nil "# SBG Ellipse Messages~%Header header~%~%# Time since sensor is powered up (us)~%uint32 time_stamp~%~%# General UTC time and clock sync status~%SbgUtcTimeStatus clock_status~%~%# Year~%uint16 year~%~%# Month in Year [1 ... 12]~%uint8 month~%~%# Day in Month [1 ... 31]~%uint8 day~%~%# Hour in day [0 ... 23]~%uint8 hour~%~%# Minute in hour [0 ... 59]~%uint8 min~%~%# Second in minute [0 ... 60], Note 60 is when a leap second is added.~%uint8 sec~%~%# Nanosecond of second.~%uint32 nanosec~%~%# GPS Time of week (ms)~%uint32 gps_tow~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sbg_driver/SbgUtcTimeStatus~%# SBG Ellipse Messages~%~%# True when a clock input can be used to synchronize the internal clock.~%bool clock_stable~%~%# Define the internal clock estimation status~%# 0 An error has occurred on the clock estimation.~%# 1 The clock is only based on the internal crystal.~%# 2 A PPS has been detected and the clock is converging to it.~%# 3 The clock has converged to the PPS and is within 500ns.~%uint8 clock_status~%~%# True if UTC time is synchronized with a PPS~%bool clock_utc_sync~%~%# UTC validity status~%# 0 The UTC time is not known, we are just propagating the UTC time internally.~%# 1 We have received valid UTC time information but we don't have the leap seconds information.~%# 2 We have received valid UTC time data with valid leap seconds.~%uint8 clock_utc_status~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SbgUtcTime)))
  "Returns full string definition for message of type 'SbgUtcTime"
  (cl:format cl:nil "# SBG Ellipse Messages~%Header header~%~%# Time since sensor is powered up (us)~%uint32 time_stamp~%~%# General UTC time and clock sync status~%SbgUtcTimeStatus clock_status~%~%# Year~%uint16 year~%~%# Month in Year [1 ... 12]~%uint8 month~%~%# Day in Month [1 ... 31]~%uint8 day~%~%# Hour in day [0 ... 23]~%uint8 hour~%~%# Minute in hour [0 ... 59]~%uint8 min~%~%# Second in minute [0 ... 60], Note 60 is when a leap second is added.~%uint8 sec~%~%# Nanosecond of second.~%uint32 nanosec~%~%# GPS Time of week (ms)~%uint32 gps_tow~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sbg_driver/SbgUtcTimeStatus~%# SBG Ellipse Messages~%~%# True when a clock input can be used to synchronize the internal clock.~%bool clock_stable~%~%# Define the internal clock estimation status~%# 0 An error has occurred on the clock estimation.~%# 1 The clock is only based on the internal crystal.~%# 2 A PPS has been detected and the clock is converging to it.~%# 3 The clock has converged to the PPS and is within 500ns.~%uint8 clock_status~%~%# True if UTC time is synchronized with a PPS~%bool clock_utc_sync~%~%# UTC validity status~%# 0 The UTC time is not known, we are just propagating the UTC time internally.~%# 1 We have received valid UTC time information but we don't have the leap seconds information.~%# 2 We have received valid UTC time data with valid leap seconds.~%uint8 clock_utc_status~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SbgUtcTime>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'clock_status))
     2
     1
     1
     1
     1
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SbgUtcTime>))
  "Converts a ROS message object to a list"
  (cl:list 'SbgUtcTime
    (cl:cons ':header (header msg))
    (cl:cons ':time_stamp (time_stamp msg))
    (cl:cons ':clock_status (clock_status msg))
    (cl:cons ':year (year msg))
    (cl:cons ':month (month msg))
    (cl:cons ':day (day msg))
    (cl:cons ':hour (hour msg))
    (cl:cons ':min (min msg))
    (cl:cons ':sec (sec msg))
    (cl:cons ':nanosec (nanosec msg))
    (cl:cons ':gps_tow (gps_tow msg))
))
