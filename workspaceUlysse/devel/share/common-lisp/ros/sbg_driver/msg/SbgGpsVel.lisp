; Auto-generated. Do not edit!


(cl:in-package sbg_driver-msg)


;//! \htmlinclude SbgGpsVel.msg.html

(cl:defclass <SbgGpsVel> (roslisp-msg-protocol:ros-message)
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
   (status
    :reader status
    :initarg :status
    :type sbg_driver-msg:SbgGpsVelStatus
    :initform (cl:make-instance 'sbg_driver-msg:SbgGpsVelStatus))
   (gps_tow
    :reader gps_tow
    :initarg :gps_tow
    :type cl:integer
    :initform 0)
   (vel
    :reader vel
    :initarg :vel
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (vel_acc
    :reader vel_acc
    :initarg :vel_acc
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (course
    :reader course
    :initarg :course
    :type cl:float
    :initform 0.0)
   (course_acc
    :reader course_acc
    :initarg :course_acc
    :type cl:float
    :initform 0.0))
)

(cl:defclass SbgGpsVel (<SbgGpsVel>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SbgGpsVel>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SbgGpsVel)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sbg_driver-msg:<SbgGpsVel> is deprecated: use sbg_driver-msg:SbgGpsVel instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SbgGpsVel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:header-val is deprecated.  Use sbg_driver-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'time_stamp-val :lambda-list '(m))
(cl:defmethod time_stamp-val ((m <SbgGpsVel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:time_stamp-val is deprecated.  Use sbg_driver-msg:time_stamp instead.")
  (time_stamp m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <SbgGpsVel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:status-val is deprecated.  Use sbg_driver-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'gps_tow-val :lambda-list '(m))
(cl:defmethod gps_tow-val ((m <SbgGpsVel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:gps_tow-val is deprecated.  Use sbg_driver-msg:gps_tow instead.")
  (gps_tow m))

(cl:ensure-generic-function 'vel-val :lambda-list '(m))
(cl:defmethod vel-val ((m <SbgGpsVel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:vel-val is deprecated.  Use sbg_driver-msg:vel instead.")
  (vel m))

(cl:ensure-generic-function 'vel_acc-val :lambda-list '(m))
(cl:defmethod vel_acc-val ((m <SbgGpsVel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:vel_acc-val is deprecated.  Use sbg_driver-msg:vel_acc instead.")
  (vel_acc m))

(cl:ensure-generic-function 'course-val :lambda-list '(m))
(cl:defmethod course-val ((m <SbgGpsVel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:course-val is deprecated.  Use sbg_driver-msg:course instead.")
  (course m))

(cl:ensure-generic-function 'course_acc-val :lambda-list '(m))
(cl:defmethod course_acc-val ((m <SbgGpsVel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:course_acc-val is deprecated.  Use sbg_driver-msg:course_acc instead.")
  (course_acc m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SbgGpsVel>) ostream)
  "Serializes a message object of type '<SbgGpsVel>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time_stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time_stamp)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'status) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gps_tow)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'gps_tow)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'gps_tow)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'gps_tow)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vel) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vel_acc) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'course))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'course_acc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SbgGpsVel>) istream)
  "Deserializes a message object of type '<SbgGpsVel>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time_stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time_stamp)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'status) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gps_tow)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'gps_tow)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'gps_tow)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'gps_tow)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vel) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vel_acc) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'course) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'course_acc) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SbgGpsVel>)))
  "Returns string type for a message object of type '<SbgGpsVel>"
  "sbg_driver/SbgGpsVel")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SbgGpsVel)))
  "Returns string type for a message object of type 'SbgGpsVel"
  "sbg_driver/SbgGpsVel")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SbgGpsVel>)))
  "Returns md5sum for a message object of type '<SbgGpsVel>"
  "4b6a105b6f69fdbdd56b39b3c0c50f0b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SbgGpsVel)))
  "Returns md5sum for a message object of type 'SbgGpsVel"
  "4b6a105b6f69fdbdd56b39b3c0c50f0b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SbgGpsVel>)))
  "Returns full string definition for message of type '<SbgGpsVel>"
  (cl:format cl:nil "# SBG Ellipse Messages~%Header header~%~%#  Time since sensor is powered up us ~%uint32 time_stamp~%~%# GPS velocity fix and status bitmask - ~%SbgGpsVelStatus status~%~%# GPS Time of Week ms ~%uint32 gps_tow~%~%# Velocity in [North, East, Down] direction m/s ~%geometry_msgs/Vector3 vel~%~%# 1 sgima Accuracy in [North, East, Down] direction m/s ~%geometry_msgs/Vector3 vel_acc~%~%# True direction of motion over ground (0 to 360 deg)~%float32 course~%~%# 1 sgima course accuracy (0 to 360 deg).~%float32 course_acc~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sbg_driver/SbgGpsVelStatus~%# SBG Ellipse Messages~%# Submessage~%~%# The raw GPS velocity status~%# 0 SOL_COMPUTED		A valid solution has been computed.~%# 1 INSUFFICIENT_OBS	Not enough valid SV to compute a solution.~%# 2 INTERNAL_ERROR		An internal error has occurred.~%# 3 LIMIT				Velocity limit exceeded.~%uint8 vel_status~%~%# The raw GPS velocity type~%# 0 VEL_NO_SOLUTION		No valid velocity solution available.~%# 1 VEL_UNKNOWN_TYPE	An unknown solution type has been computed.~%# 2 VEL_DOPPLER			A Doppler velocity has been computed.~%# 3 VEL_DIFFERENTIAL	A velocity has been computed between two positions.~%uint8 vel_type~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SbgGpsVel)))
  "Returns full string definition for message of type 'SbgGpsVel"
  (cl:format cl:nil "# SBG Ellipse Messages~%Header header~%~%#  Time since sensor is powered up us ~%uint32 time_stamp~%~%# GPS velocity fix and status bitmask - ~%SbgGpsVelStatus status~%~%# GPS Time of Week ms ~%uint32 gps_tow~%~%# Velocity in [North, East, Down] direction m/s ~%geometry_msgs/Vector3 vel~%~%# 1 sgima Accuracy in [North, East, Down] direction m/s ~%geometry_msgs/Vector3 vel_acc~%~%# True direction of motion over ground (0 to 360 deg)~%float32 course~%~%# 1 sgima course accuracy (0 to 360 deg).~%float32 course_acc~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sbg_driver/SbgGpsVelStatus~%# SBG Ellipse Messages~%# Submessage~%~%# The raw GPS velocity status~%# 0 SOL_COMPUTED		A valid solution has been computed.~%# 1 INSUFFICIENT_OBS	Not enough valid SV to compute a solution.~%# 2 INTERNAL_ERROR		An internal error has occurred.~%# 3 LIMIT				Velocity limit exceeded.~%uint8 vel_status~%~%# The raw GPS velocity type~%# 0 VEL_NO_SOLUTION		No valid velocity solution available.~%# 1 VEL_UNKNOWN_TYPE	An unknown solution type has been computed.~%# 2 VEL_DOPPLER			A Doppler velocity has been computed.~%# 3 VEL_DIFFERENTIAL	A velocity has been computed between two positions.~%uint8 vel_type~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SbgGpsVel>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'status))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vel))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vel_acc))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SbgGpsVel>))
  "Converts a ROS message object to a list"
  (cl:list 'SbgGpsVel
    (cl:cons ':header (header msg))
    (cl:cons ':time_stamp (time_stamp msg))
    (cl:cons ':status (status msg))
    (cl:cons ':gps_tow (gps_tow msg))
    (cl:cons ':vel (vel msg))
    (cl:cons ':vel_acc (vel_acc msg))
    (cl:cons ':course (course msg))
    (cl:cons ':course_acc (course_acc msg))
))
