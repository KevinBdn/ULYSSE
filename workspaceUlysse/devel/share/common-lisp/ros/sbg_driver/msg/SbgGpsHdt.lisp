; Auto-generated. Do not edit!


(cl:in-package sbg_driver-msg)


;//! \htmlinclude SbgGpsHdt.msg.html

(cl:defclass <SbgGpsHdt> (roslisp-msg-protocol:ros-message)
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
    :type cl:fixnum
    :initform 0)
   (tow
    :reader tow
    :initarg :tow
    :type cl:integer
    :initform 0)
   (true_heading
    :reader true_heading
    :initarg :true_heading
    :type cl:float
    :initform 0.0)
   (true_heading_acc
    :reader true_heading_acc
    :initarg :true_heading_acc
    :type cl:float
    :initform 0.0)
   (pitch
    :reader pitch
    :initarg :pitch
    :type cl:float
    :initform 0.0)
   (pitch_acc
    :reader pitch_acc
    :initarg :pitch_acc
    :type cl:float
    :initform 0.0))
)

(cl:defclass SbgGpsHdt (<SbgGpsHdt>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SbgGpsHdt>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SbgGpsHdt)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sbg_driver-msg:<SbgGpsHdt> is deprecated: use sbg_driver-msg:SbgGpsHdt instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SbgGpsHdt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:header-val is deprecated.  Use sbg_driver-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'time_stamp-val :lambda-list '(m))
(cl:defmethod time_stamp-val ((m <SbgGpsHdt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:time_stamp-val is deprecated.  Use sbg_driver-msg:time_stamp instead.")
  (time_stamp m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <SbgGpsHdt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:status-val is deprecated.  Use sbg_driver-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'tow-val :lambda-list '(m))
(cl:defmethod tow-val ((m <SbgGpsHdt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:tow-val is deprecated.  Use sbg_driver-msg:tow instead.")
  (tow m))

(cl:ensure-generic-function 'true_heading-val :lambda-list '(m))
(cl:defmethod true_heading-val ((m <SbgGpsHdt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:true_heading-val is deprecated.  Use sbg_driver-msg:true_heading instead.")
  (true_heading m))

(cl:ensure-generic-function 'true_heading_acc-val :lambda-list '(m))
(cl:defmethod true_heading_acc-val ((m <SbgGpsHdt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:true_heading_acc-val is deprecated.  Use sbg_driver-msg:true_heading_acc instead.")
  (true_heading_acc m))

(cl:ensure-generic-function 'pitch-val :lambda-list '(m))
(cl:defmethod pitch-val ((m <SbgGpsHdt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:pitch-val is deprecated.  Use sbg_driver-msg:pitch instead.")
  (pitch m))

(cl:ensure-generic-function 'pitch_acc-val :lambda-list '(m))
(cl:defmethod pitch_acc-val ((m <SbgGpsHdt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:pitch_acc-val is deprecated.  Use sbg_driver-msg:pitch_acc instead.")
  (pitch_acc m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SbgGpsHdt>) ostream)
  "Serializes a message object of type '<SbgGpsHdt>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time_stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time_stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tow)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tow)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'tow)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'tow)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'true_heading))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'true_heading_acc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pitch_acc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SbgGpsHdt>) istream)
  "Deserializes a message object of type '<SbgGpsHdt>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time_stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time_stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tow)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tow)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'tow)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'tow)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'true_heading) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'true_heading_acc) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pitch) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pitch_acc) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SbgGpsHdt>)))
  "Returns string type for a message object of type '<SbgGpsHdt>"
  "sbg_driver/SbgGpsHdt")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SbgGpsHdt)))
  "Returns string type for a message object of type 'SbgGpsHdt"
  "sbg_driver/SbgGpsHdt")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SbgGpsHdt>)))
  "Returns md5sum for a message object of type '<SbgGpsHdt>"
  "e132ccfa1c1c41e27b0c5998a0ca02cd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SbgGpsHdt)))
  "Returns md5sum for a message object of type 'SbgGpsHdt"
  "e132ccfa1c1c41e27b0c5998a0ca02cd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SbgGpsHdt>)))
  "Returns full string definition for message of type '<SbgGpsHdt>"
  (cl:format cl:nil "# SBG Ellipse Messages~%Header header~%~%# Time since sensor is powered up us ~%uint32 time_stamp~%~%# GPS True Heading status.~%# 0 SOL_COMPUTED		A valid solution has been computed.~%# 1 INSUFFICIENT_OBS	Not enough valid SV to compute a solution.~%# 2 INTERNAL_ERROR		An internal error has occurred.~%# 3 HEIGHT_LIMIT		The height limit has been exceeded.~%uint16 status~%~%# GPS Time of Week ms~%uint32 tow~%~%# True heading angle (0 to 360 deg).~%float32 true_heading~%~%# 1 sigma True heading estimated accuracy (0 to 360 deg).~%float32 true_heading_acc~%~%# Pitch angle from the master to the rover~%float32 pitch~%~%# 1 sigma pitch estimated accuracy~%float32 pitch_acc~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SbgGpsHdt)))
  "Returns full string definition for message of type 'SbgGpsHdt"
  (cl:format cl:nil "# SBG Ellipse Messages~%Header header~%~%# Time since sensor is powered up us ~%uint32 time_stamp~%~%# GPS True Heading status.~%# 0 SOL_COMPUTED		A valid solution has been computed.~%# 1 INSUFFICIENT_OBS	Not enough valid SV to compute a solution.~%# 2 INTERNAL_ERROR		An internal error has occurred.~%# 3 HEIGHT_LIMIT		The height limit has been exceeded.~%uint16 status~%~%# GPS Time of Week ms~%uint32 tow~%~%# True heading angle (0 to 360 deg).~%float32 true_heading~%~%# 1 sigma True heading estimated accuracy (0 to 360 deg).~%float32 true_heading_acc~%~%# Pitch angle from the master to the rover~%float32 pitch~%~%# 1 sigma pitch estimated accuracy~%float32 pitch_acc~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SbgGpsHdt>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     2
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SbgGpsHdt>))
  "Converts a ROS message object to a list"
  (cl:list 'SbgGpsHdt
    (cl:cons ':header (header msg))
    (cl:cons ':time_stamp (time_stamp msg))
    (cl:cons ':status (status msg))
    (cl:cons ':tow (tow msg))
    (cl:cons ':true_heading (true_heading msg))
    (cl:cons ':true_heading_acc (true_heading_acc msg))
    (cl:cons ':pitch (pitch msg))
    (cl:cons ':pitch_acc (pitch_acc msg))
))
