; Auto-generated. Do not edit!


(cl:in-package sbg_driver-msg)


;//! \htmlinclude SbgImuData.msg.html

(cl:defclass <SbgImuData> (roslisp-msg-protocol:ros-message)
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
   (accel
    :reader accel
    :initarg :accel
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (gyro
    :reader gyro
    :initarg :gyro
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (temp
    :reader temp
    :initarg :temp
    :type cl:float
    :initform 0.0)
   (delta_vel
    :reader delta_vel
    :initarg :delta_vel
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (delta_angle
    :reader delta_angle
    :initarg :delta_angle
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass SbgImuData (<SbgImuData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SbgImuData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SbgImuData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sbg_driver-msg:<SbgImuData> is deprecated: use sbg_driver-msg:SbgImuData instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SbgImuData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:header-val is deprecated.  Use sbg_driver-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'time_stamp-val :lambda-list '(m))
(cl:defmethod time_stamp-val ((m <SbgImuData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:time_stamp-val is deprecated.  Use sbg_driver-msg:time_stamp instead.")
  (time_stamp m))

(cl:ensure-generic-function 'imu_status-val :lambda-list '(m))
(cl:defmethod imu_status-val ((m <SbgImuData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:imu_status-val is deprecated.  Use sbg_driver-msg:imu_status instead.")
  (imu_status m))

(cl:ensure-generic-function 'accel-val :lambda-list '(m))
(cl:defmethod accel-val ((m <SbgImuData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:accel-val is deprecated.  Use sbg_driver-msg:accel instead.")
  (accel m))

(cl:ensure-generic-function 'gyro-val :lambda-list '(m))
(cl:defmethod gyro-val ((m <SbgImuData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:gyro-val is deprecated.  Use sbg_driver-msg:gyro instead.")
  (gyro m))

(cl:ensure-generic-function 'temp-val :lambda-list '(m))
(cl:defmethod temp-val ((m <SbgImuData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:temp-val is deprecated.  Use sbg_driver-msg:temp instead.")
  (temp m))

(cl:ensure-generic-function 'delta_vel-val :lambda-list '(m))
(cl:defmethod delta_vel-val ((m <SbgImuData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:delta_vel-val is deprecated.  Use sbg_driver-msg:delta_vel instead.")
  (delta_vel m))

(cl:ensure-generic-function 'delta_angle-val :lambda-list '(m))
(cl:defmethod delta_angle-val ((m <SbgImuData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:delta_angle-val is deprecated.  Use sbg_driver-msg:delta_angle instead.")
  (delta_angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SbgImuData>) ostream)
  "Serializes a message object of type '<SbgImuData>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time_stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time_stamp)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'imu_status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'accel) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gyro) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'temp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'delta_vel) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'delta_angle) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SbgImuData>) istream)
  "Deserializes a message object of type '<SbgImuData>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time_stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time_stamp)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'imu_status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'accel) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gyro) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'temp) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'delta_vel) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'delta_angle) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SbgImuData>)))
  "Returns string type for a message object of type '<SbgImuData>"
  "sbg_driver/SbgImuData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SbgImuData)))
  "Returns string type for a message object of type 'SbgImuData"
  "sbg_driver/SbgImuData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SbgImuData>)))
  "Returns md5sum for a message object of type '<SbgImuData>"
  "59cc541d794c367e71030fa700720826")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SbgImuData)))
  "Returns md5sum for a message object of type 'SbgImuData"
  "59cc541d794c367e71030fa700720826")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SbgImuData>)))
  "Returns full string definition for message of type '<SbgImuData>"
  (cl:format cl:nil "# SBG Ellipse Messages~%Header header~%~%# Time since sensor is powered up us ~%uint32 time_stamp~%~%# IMU Status~%SbgImuStatus imu_status~%~%# Filtered Accelerometer - X, Y, Z axis m/s2 ~%geometry_msgs/Vector3 accel~%~%# Filtered Gyroscope - X, Y, Z axis rad/s ~%geometry_msgs/Vector3 gyro~%~%# Internal Temperature degC ~%float32 temp~%~%# Sculling output - X, Y, Z axis m/s2 ~%geometry_msgs/Vector3 delta_vel~%~%# Coning output - X, Y, Z axis rad/s ~%geometry_msgs/Vector3 delta_angle~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sbg_driver/SbgImuStatus~%# SBG Ellipse Messages~%# Submessage SbgImuData~%~%# True if the communication with the IMU is ok.~%bool imu_com~%~%# True if internal IMU passes Built In Test (Calibration, CPU)~%bool imu_status~%~%# True if accelerometer X passes Built In Test~%bool imu_accel_x~%~%# True if accelerometer Y passes Built In Test~%bool imu_accel_y~%~%# True if accelerometer Z passes Built In Test~%bool imu_accel_z~%~%# True if gyroscope X passes Built In Test~%bool imu_gyro_x~%~%# True if gyroscope Y passes Built In Test~%bool imu_gyro_y~%~%# True if gyroscope Z passes Built In Test~%bool imu_gyro_z~%~%# True if accelerometers are within operating range~%bool imu_accels_in_range~%~%# True if gyroscopes are within operating range~%bool imu_gyros_in_range~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SbgImuData)))
  "Returns full string definition for message of type 'SbgImuData"
  (cl:format cl:nil "# SBG Ellipse Messages~%Header header~%~%# Time since sensor is powered up us ~%uint32 time_stamp~%~%# IMU Status~%SbgImuStatus imu_status~%~%# Filtered Accelerometer - X, Y, Z axis m/s2 ~%geometry_msgs/Vector3 accel~%~%# Filtered Gyroscope - X, Y, Z axis rad/s ~%geometry_msgs/Vector3 gyro~%~%# Internal Temperature degC ~%float32 temp~%~%# Sculling output - X, Y, Z axis m/s2 ~%geometry_msgs/Vector3 delta_vel~%~%# Coning output - X, Y, Z axis rad/s ~%geometry_msgs/Vector3 delta_angle~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sbg_driver/SbgImuStatus~%# SBG Ellipse Messages~%# Submessage SbgImuData~%~%# True if the communication with the IMU is ok.~%bool imu_com~%~%# True if internal IMU passes Built In Test (Calibration, CPU)~%bool imu_status~%~%# True if accelerometer X passes Built In Test~%bool imu_accel_x~%~%# True if accelerometer Y passes Built In Test~%bool imu_accel_y~%~%# True if accelerometer Z passes Built In Test~%bool imu_accel_z~%~%# True if gyroscope X passes Built In Test~%bool imu_gyro_x~%~%# True if gyroscope Y passes Built In Test~%bool imu_gyro_y~%~%# True if gyroscope Z passes Built In Test~%bool imu_gyro_z~%~%# True if accelerometers are within operating range~%bool imu_accels_in_range~%~%# True if gyroscopes are within operating range~%bool imu_gyros_in_range~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SbgImuData>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'imu_status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'accel))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gyro))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'delta_vel))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'delta_angle))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SbgImuData>))
  "Converts a ROS message object to a list"
  (cl:list 'SbgImuData
    (cl:cons ':header (header msg))
    (cl:cons ':time_stamp (time_stamp msg))
    (cl:cons ':imu_status (imu_status msg))
    (cl:cons ':accel (accel msg))
    (cl:cons ':gyro (gyro msg))
    (cl:cons ':temp (temp msg))
    (cl:cons ':delta_vel (delta_vel msg))
    (cl:cons ':delta_angle (delta_angle msg))
))
