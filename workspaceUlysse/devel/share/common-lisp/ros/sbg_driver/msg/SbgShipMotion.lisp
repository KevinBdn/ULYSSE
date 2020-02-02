; Auto-generated. Do not edit!


(cl:in-package sbg_driver-msg)


;//! \htmlinclude SbgShipMotion.msg.html

(cl:defclass <SbgShipMotion> (roslisp-msg-protocol:ros-message)
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
   (heave_period
    :reader heave_period
    :initarg :heave_period
    :type cl:fixnum
    :initform 0)
   (ship_motion
    :reader ship_motion
    :initarg :ship_motion
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (acceleration
    :reader acceleration
    :initarg :acceleration
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (velocity
    :reader velocity
    :initarg :velocity
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (status
    :reader status
    :initarg :status
    :type sbg_driver-msg:SbgShipMotionStatus
    :initform (cl:make-instance 'sbg_driver-msg:SbgShipMotionStatus)))
)

(cl:defclass SbgShipMotion (<SbgShipMotion>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SbgShipMotion>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SbgShipMotion)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sbg_driver-msg:<SbgShipMotion> is deprecated: use sbg_driver-msg:SbgShipMotion instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SbgShipMotion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:header-val is deprecated.  Use sbg_driver-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'time_stamp-val :lambda-list '(m))
(cl:defmethod time_stamp-val ((m <SbgShipMotion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:time_stamp-val is deprecated.  Use sbg_driver-msg:time_stamp instead.")
  (time_stamp m))

(cl:ensure-generic-function 'heave_period-val :lambda-list '(m))
(cl:defmethod heave_period-val ((m <SbgShipMotion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:heave_period-val is deprecated.  Use sbg_driver-msg:heave_period instead.")
  (heave_period m))

(cl:ensure-generic-function 'ship_motion-val :lambda-list '(m))
(cl:defmethod ship_motion-val ((m <SbgShipMotion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:ship_motion-val is deprecated.  Use sbg_driver-msg:ship_motion instead.")
  (ship_motion m))

(cl:ensure-generic-function 'acceleration-val :lambda-list '(m))
(cl:defmethod acceleration-val ((m <SbgShipMotion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:acceleration-val is deprecated.  Use sbg_driver-msg:acceleration instead.")
  (acceleration m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <SbgShipMotion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:velocity-val is deprecated.  Use sbg_driver-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <SbgShipMotion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:status-val is deprecated.  Use sbg_driver-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SbgShipMotion>) ostream)
  "Serializes a message object of type '<SbgShipMotion>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time_stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time_stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'heave_period)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'heave_period)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ship_motion) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acceleration) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'status) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SbgShipMotion>) istream)
  "Deserializes a message object of type '<SbgShipMotion>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time_stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time_stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'heave_period)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'heave_period)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ship_motion) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acceleration) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'status) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SbgShipMotion>)))
  "Returns string type for a message object of type '<SbgShipMotion>"
  "sbg_driver/SbgShipMotion")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SbgShipMotion)))
  "Returns string type for a message object of type 'SbgShipMotion"
  "sbg_driver/SbgShipMotion")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SbgShipMotion>)))
  "Returns md5sum for a message object of type '<SbgShipMotion>"
  "f76d2a0b5a6d09d258ebd78ee0233cd0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SbgShipMotion)))
  "Returns md5sum for a message object of type 'SbgShipMotion"
  "f76d2a0b5a6d09d258ebd78ee0233cd0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SbgShipMotion>)))
  "Returns full string definition for message of type '<SbgShipMotion>"
  (cl:format cl:nil "# SBG Ellipse Messages~%Header header~%~%# Time since sensor is powered up us ~%uint32 time_stamp~%~%# Main heave period in seconds. s float 4 4~%uint16 heave_period~%~%# [Surge, Sway, Heave (positive down)] at main location (in m)~%# Note : Surge & Sway are not fulfilled~%geometry_msgs/Vector3 ship_motion~%~%# [Longitudinal, Lateral, Vertical (positive down)] acceleration (in m/s2)~%geometry_msgs/Vector3 acceleration~%~%# [Longitudinal, Lateral, Vertical (positive down)] velocity (in m/s)~%geometry_msgs/Vector3 velocity~%~%# Ship motion output status~%SbgShipMotionStatus status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: sbg_driver/SbgShipMotionStatus~%# SBG Ellipse Messages~%# SbgShipMotionStatus~%~%# True after heave convergence time.~%# False in following conditions:~%# - Turn occurred and no velocity aiding is available~%# - Heave reached higher/lower limits~%# - If a step is detected and filter has to re-converge~%# - If internal failure~%bool heave_valid~%~%# True if heave output is compensated for transient accelerations~%bool heave_vel_aided~%~%# True if the swell period is provided in this output~%bool period_available~%~%# True if the period returned is assumed to be valid or not.~%bool period_valid~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SbgShipMotion)))
  "Returns full string definition for message of type 'SbgShipMotion"
  (cl:format cl:nil "# SBG Ellipse Messages~%Header header~%~%# Time since sensor is powered up us ~%uint32 time_stamp~%~%# Main heave period in seconds. s float 4 4~%uint16 heave_period~%~%# [Surge, Sway, Heave (positive down)] at main location (in m)~%# Note : Surge & Sway are not fulfilled~%geometry_msgs/Vector3 ship_motion~%~%# [Longitudinal, Lateral, Vertical (positive down)] acceleration (in m/s2)~%geometry_msgs/Vector3 acceleration~%~%# [Longitudinal, Lateral, Vertical (positive down)] velocity (in m/s)~%geometry_msgs/Vector3 velocity~%~%# Ship motion output status~%SbgShipMotionStatus status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: sbg_driver/SbgShipMotionStatus~%# SBG Ellipse Messages~%# SbgShipMotionStatus~%~%# True after heave convergence time.~%# False in following conditions:~%# - Turn occurred and no velocity aiding is available~%# - Heave reached higher/lower limits~%# - If a step is detected and filter has to re-converge~%# - If internal failure~%bool heave_valid~%~%# True if heave output is compensated for transient accelerations~%bool heave_vel_aided~%~%# True if the swell period is provided in this output~%bool period_available~%~%# True if the period returned is assumed to be valid or not.~%bool period_valid~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SbgShipMotion>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ship_motion))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acceleration))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SbgShipMotion>))
  "Converts a ROS message object to a list"
  (cl:list 'SbgShipMotion
    (cl:cons ':header (header msg))
    (cl:cons ':time_stamp (time_stamp msg))
    (cl:cons ':heave_period (heave_period msg))
    (cl:cons ':ship_motion (ship_motion msg))
    (cl:cons ':acceleration (acceleration msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':status (status msg))
))
