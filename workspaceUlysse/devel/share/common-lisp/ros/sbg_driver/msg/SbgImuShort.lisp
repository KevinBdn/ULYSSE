; Auto-generated. Do not edit!


(cl:in-package sbg_driver-msg)


;//! \htmlinclude SbgImuShort.msg.html

(cl:defclass <SbgImuShort> (roslisp-msg-protocol:ros-message)
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
   (imu_status
    :reader imu_status
    :initarg :imu_status
    :type sbg_driver-msg:SbgImuStatus
    :initform (cl:make-instance 'sbg_driver-msg:SbgImuStatus))
   (delta_velocity
    :reader delta_velocity
    :initarg :delta_velocity
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (delta_angle
    :reader delta_angle
    :initarg :delta_angle
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (temperature
    :reader temperature
    :initarg :temperature
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SbgImuShort (<SbgImuShort>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SbgImuShort>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SbgImuShort)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sbg_driver-msg:<SbgImuShort> is deprecated: use sbg_driver-msg:SbgImuShort instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SbgImuShort>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:header-val is deprecated.  Use sbg_driver-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'time_stamp-val :lambda-list '(m))
(cl:defmethod time_stamp-val ((m <SbgImuShort>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:time_stamp-val is deprecated.  Use sbg_driver-msg:time_stamp instead.")
  (time_stamp m))

(cl:ensure-generic-function 'imu_status-val :lambda-list '(m))
(cl:defmethod imu_status-val ((m <SbgImuShort>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:imu_status-val is deprecated.  Use sbg_driver-msg:imu_status instead.")
  (imu_status m))

(cl:ensure-generic-function 'delta_velocity-val :lambda-list '(m))
(cl:defmethod delta_velocity-val ((m <SbgImuShort>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:delta_velocity-val is deprecated.  Use sbg_driver-msg:delta_velocity instead.")
  (delta_velocity m))

(cl:ensure-generic-function 'delta_angle-val :lambda-list '(m))
(cl:defmethod delta_angle-val ((m <SbgImuShort>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:delta_angle-val is deprecated.  Use sbg_driver-msg:delta_angle instead.")
  (delta_angle m))

(cl:ensure-generic-function 'temperature-val :lambda-list '(m))
(cl:defmethod temperature-val ((m <SbgImuShort>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:temperature-val is deprecated.  Use sbg_driver-msg:temperature instead.")
  (temperature m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SbgImuShort>) ostream)
  "Serializes a message object of type '<SbgImuShort>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time_stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time_stamp)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'imu_status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'delta_velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'delta_angle) ostream)
  (cl:let* ((signed (cl:slot-value msg 'temperature)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SbgImuShort>) istream)
  "Deserializes a message object of type '<SbgImuShort>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time_stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time_stamp)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'imu_status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'delta_velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'delta_angle) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'temperature) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SbgImuShort>)))
  "Returns string type for a message object of type '<SbgImuShort>"
  "sbg_driver/SbgImuShort")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SbgImuShort)))
  "Returns string type for a message object of type 'SbgImuShort"
  "sbg_driver/SbgImuShort")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SbgImuShort>)))
  "Returns md5sum for a message object of type '<SbgImuShort>"
  "3be77ff9ef2640e787db71f0246e7518")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SbgImuShort)))
  "Returns md5sum for a message object of type 'SbgImuShort"
  "3be77ff9ef2640e787db71f0246e7518")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SbgImuShort>)))
  "Returns full string definition for message of type '<SbgImuShort>"
  (cl:format cl:nil "# SBG Ellipse Messages~%Header header~%~%# Time since sensor is powered up us ~%uint32 time_stamp~%~%# IMU Status~%SbgImuStatus imu_status~%~%# X, Y, Z delta velocity. Unit is 1048576 LSB for 1 m.s^-2.~%geometry_msgs/Vector3 delta_velocity~%~%# X, Y, Z delta angle. Unit is 67108864 LSB for 1 rad.s^-1.~%geometry_msgs/Vector3 delta_angle~%~%# IMU average temperature. Unit is 256 LSB for 1°C.~%int16 temperature~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sbg_driver/SbgImuStatus~%# SBG Ellipse Messages~%# Submessage SbgImuData~%~%# True if the communication with the IMU is ok.~%bool imu_com~%~%# True if internal IMU passes Built In Test (Calibration, CPU)~%bool imu_status~%~%# True if accelerometer X passes Built In Test~%bool imu_accel_x~%~%# True if accelerometer Y passes Built In Test~%bool imu_accel_y~%~%# True if accelerometer Z passes Built In Test~%bool imu_accel_z~%~%# True if gyroscope X passes Built In Test~%bool imu_gyro_x~%~%# True if gyroscope Y passes Built In Test~%bool imu_gyro_y~%~%# True if gyroscope Z passes Built In Test~%bool imu_gyro_z~%~%# True if accelerometers are within operating range~%bool imu_accels_in_range~%~%# True if gyroscopes are within operating range~%bool imu_gyros_in_range~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SbgImuShort)))
  "Returns full string definition for message of type 'SbgImuShort"
  (cl:format cl:nil "# SBG Ellipse Messages~%Header header~%~%# Time since sensor is powered up us ~%uint32 time_stamp~%~%# IMU Status~%SbgImuStatus imu_status~%~%# X, Y, Z delta velocity. Unit is 1048576 LSB for 1 m.s^-2.~%geometry_msgs/Vector3 delta_velocity~%~%# X, Y, Z delta angle. Unit is 67108864 LSB for 1 rad.s^-1.~%geometry_msgs/Vector3 delta_angle~%~%# IMU average temperature. Unit is 256 LSB for 1°C.~%int16 temperature~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sbg_driver/SbgImuStatus~%# SBG Ellipse Messages~%# Submessage SbgImuData~%~%# True if the communication with the IMU is ok.~%bool imu_com~%~%# True if internal IMU passes Built In Test (Calibration, CPU)~%bool imu_status~%~%# True if accelerometer X passes Built In Test~%bool imu_accel_x~%~%# True if accelerometer Y passes Built In Test~%bool imu_accel_y~%~%# True if accelerometer Z passes Built In Test~%bool imu_accel_z~%~%# True if gyroscope X passes Built In Test~%bool imu_gyro_x~%~%# True if gyroscope Y passes Built In Test~%bool imu_gyro_y~%~%# True if gyroscope Z passes Built In Test~%bool imu_gyro_z~%~%# True if accelerometers are within operating range~%bool imu_accels_in_range~%~%# True if gyroscopes are within operating range~%bool imu_gyros_in_range~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SbgImuShort>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'imu_status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'delta_velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'delta_angle))
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SbgImuShort>))
  "Converts a ROS message object to a list"
  (cl:list 'SbgImuShort
    (cl:cons ':header (header msg))
    (cl:cons ':time_stamp (time_stamp msg))
    (cl:cons ':imu_status (imu_status msg))
    (cl:cons ':delta_velocity (delta_velocity msg))
    (cl:cons ':delta_angle (delta_angle msg))
    (cl:cons ':temperature (temperature msg))
))
