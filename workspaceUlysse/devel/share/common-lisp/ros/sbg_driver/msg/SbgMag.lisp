; Auto-generated. Do not edit!


(cl:in-package sbg_driver-msg)


;//! \htmlinclude SbgMag.msg.html

(cl:defclass <SbgMag> (roslisp-msg-protocol:ros-message)
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
   (mag
    :reader mag
    :initarg :mag
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (accel
    :reader accel
    :initarg :accel
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (status
    :reader status
    :initarg :status
    :type sbg_driver-msg:SbgMagStatus
    :initform (cl:make-instance 'sbg_driver-msg:SbgMagStatus)))
)

(cl:defclass SbgMag (<SbgMag>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SbgMag>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SbgMag)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sbg_driver-msg:<SbgMag> is deprecated: use sbg_driver-msg:SbgMag instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SbgMag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:header-val is deprecated.  Use sbg_driver-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'time_stamp-val :lambda-list '(m))
(cl:defmethod time_stamp-val ((m <SbgMag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:time_stamp-val is deprecated.  Use sbg_driver-msg:time_stamp instead.")
  (time_stamp m))

(cl:ensure-generic-function 'mag-val :lambda-list '(m))
(cl:defmethod mag-val ((m <SbgMag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:mag-val is deprecated.  Use sbg_driver-msg:mag instead.")
  (mag m))

(cl:ensure-generic-function 'accel-val :lambda-list '(m))
(cl:defmethod accel-val ((m <SbgMag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:accel-val is deprecated.  Use sbg_driver-msg:accel instead.")
  (accel m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <SbgMag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:status-val is deprecated.  Use sbg_driver-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SbgMag>) ostream)
  "Serializes a message object of type '<SbgMag>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time_stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time_stamp)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mag) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'accel) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'status) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SbgMag>) istream)
  "Deserializes a message object of type '<SbgMag>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time_stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time_stamp)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mag) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'accel) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'status) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SbgMag>)))
  "Returns string type for a message object of type '<SbgMag>"
  "sbg_driver/SbgMag")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SbgMag)))
  "Returns string type for a message object of type 'SbgMag"
  "sbg_driver/SbgMag")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SbgMag>)))
  "Returns md5sum for a message object of type '<SbgMag>"
  "de7614c4cbb6cbd430c4a9b79bad88ca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SbgMag)))
  "Returns md5sum for a message object of type 'SbgMag"
  "de7614c4cbb6cbd430c4a9b79bad88ca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SbgMag>)))
  "Returns full string definition for message of type '<SbgMag>"
  (cl:format cl:nil "# SBG Ellipse Messages~%Header header~%~%# Time since sensor is powered up (us)~%uint32 time_stamp~%~%# Magnetometer output (X, Y, Z)~%geometry_msgs/Vector3 mag~%~%# Accelerometer output (X, Y, Z) in m/s2~%geometry_msgs/Vector3 accel~%~%# Status~%SbgMagStatus status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: sbg_driver/SbgMagStatus~%# SBG Ellipse Messages~%# Submessage~%~%# True if the magnetometer X has passed the self test.~%bool mag_x~%~%# True if the magnetometer Y has passed the self test.~%bool mag_y~%~%# True if the magnetometer Z has passed the self test.~%bool mag_z~%~%# True if the accelerometer X has passed the self test.~%bool accel_x~%~%# True if the accelerometer Y has passed the self test.~%bool accel_y~%~%# True if the accelerometer Z has passed the self test.~%bool accel_z~%~%# True if magnetometer is not saturated~%bool mags_in_range~%~%# True if accelerometer is not saturated~%bool accels_in_range~%~%# True if magnetometer seems to be calibrated~%bool calibration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SbgMag)))
  "Returns full string definition for message of type 'SbgMag"
  (cl:format cl:nil "# SBG Ellipse Messages~%Header header~%~%# Time since sensor is powered up (us)~%uint32 time_stamp~%~%# Magnetometer output (X, Y, Z)~%geometry_msgs/Vector3 mag~%~%# Accelerometer output (X, Y, Z) in m/s2~%geometry_msgs/Vector3 accel~%~%# Status~%SbgMagStatus status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: sbg_driver/SbgMagStatus~%# SBG Ellipse Messages~%# Submessage~%~%# True if the magnetometer X has passed the self test.~%bool mag_x~%~%# True if the magnetometer Y has passed the self test.~%bool mag_y~%~%# True if the magnetometer Z has passed the self test.~%bool mag_z~%~%# True if the accelerometer X has passed the self test.~%bool accel_x~%~%# True if the accelerometer Y has passed the self test.~%bool accel_y~%~%# True if the accelerometer Z has passed the self test.~%bool accel_z~%~%# True if magnetometer is not saturated~%bool mags_in_range~%~%# True if accelerometer is not saturated~%bool accels_in_range~%~%# True if magnetometer seems to be calibrated~%bool calibration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SbgMag>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mag))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'accel))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SbgMag>))
  "Converts a ROS message object to a list"
  (cl:list 'SbgMag
    (cl:cons ':header (header msg))
    (cl:cons ':time_stamp (time_stamp msg))
    (cl:cons ':mag (mag msg))
    (cl:cons ':accel (accel msg))
    (cl:cons ':status (status msg))
))
