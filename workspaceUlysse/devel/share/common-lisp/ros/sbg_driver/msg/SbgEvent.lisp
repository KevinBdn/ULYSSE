; Auto-generated. Do not edit!


(cl:in-package sbg_driver-msg)


;//! \htmlinclude SbgEvent.msg.html

(cl:defclass <SbgEvent> (roslisp-msg-protocol:ros-message)
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
   (overflow
    :reader overflow
    :initarg :overflow
    :type cl:boolean
    :initform cl:nil)
   (offset_0_valid
    :reader offset_0_valid
    :initarg :offset_0_valid
    :type cl:boolean
    :initform cl:nil)
   (offset_1_valid
    :reader offset_1_valid
    :initarg :offset_1_valid
    :type cl:boolean
    :initform cl:nil)
   (offset_2_valid
    :reader offset_2_valid
    :initarg :offset_2_valid
    :type cl:boolean
    :initform cl:nil)
   (offset_3_valid
    :reader offset_3_valid
    :initarg :offset_3_valid
    :type cl:boolean
    :initform cl:nil)
   (time_offset_0
    :reader time_offset_0
    :initarg :time_offset_0
    :type cl:fixnum
    :initform 0)
   (time_offset_1
    :reader time_offset_1
    :initarg :time_offset_1
    :type cl:fixnum
    :initform 0)
   (time_offset_2
    :reader time_offset_2
    :initarg :time_offset_2
    :type cl:fixnum
    :initform 0)
   (time_offset_3
    :reader time_offset_3
    :initarg :time_offset_3
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SbgEvent (<SbgEvent>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SbgEvent>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SbgEvent)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sbg_driver-msg:<SbgEvent> is deprecated: use sbg_driver-msg:SbgEvent instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SbgEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:header-val is deprecated.  Use sbg_driver-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'time_stamp-val :lambda-list '(m))
(cl:defmethod time_stamp-val ((m <SbgEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:time_stamp-val is deprecated.  Use sbg_driver-msg:time_stamp instead.")
  (time_stamp m))

(cl:ensure-generic-function 'overflow-val :lambda-list '(m))
(cl:defmethod overflow-val ((m <SbgEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:overflow-val is deprecated.  Use sbg_driver-msg:overflow instead.")
  (overflow m))

(cl:ensure-generic-function 'offset_0_valid-val :lambda-list '(m))
(cl:defmethod offset_0_valid-val ((m <SbgEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:offset_0_valid-val is deprecated.  Use sbg_driver-msg:offset_0_valid instead.")
  (offset_0_valid m))

(cl:ensure-generic-function 'offset_1_valid-val :lambda-list '(m))
(cl:defmethod offset_1_valid-val ((m <SbgEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:offset_1_valid-val is deprecated.  Use sbg_driver-msg:offset_1_valid instead.")
  (offset_1_valid m))

(cl:ensure-generic-function 'offset_2_valid-val :lambda-list '(m))
(cl:defmethod offset_2_valid-val ((m <SbgEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:offset_2_valid-val is deprecated.  Use sbg_driver-msg:offset_2_valid instead.")
  (offset_2_valid m))

(cl:ensure-generic-function 'offset_3_valid-val :lambda-list '(m))
(cl:defmethod offset_3_valid-val ((m <SbgEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:offset_3_valid-val is deprecated.  Use sbg_driver-msg:offset_3_valid instead.")
  (offset_3_valid m))

(cl:ensure-generic-function 'time_offset_0-val :lambda-list '(m))
(cl:defmethod time_offset_0-val ((m <SbgEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:time_offset_0-val is deprecated.  Use sbg_driver-msg:time_offset_0 instead.")
  (time_offset_0 m))

(cl:ensure-generic-function 'time_offset_1-val :lambda-list '(m))
(cl:defmethod time_offset_1-val ((m <SbgEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:time_offset_1-val is deprecated.  Use sbg_driver-msg:time_offset_1 instead.")
  (time_offset_1 m))

(cl:ensure-generic-function 'time_offset_2-val :lambda-list '(m))
(cl:defmethod time_offset_2-val ((m <SbgEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:time_offset_2-val is deprecated.  Use sbg_driver-msg:time_offset_2 instead.")
  (time_offset_2 m))

(cl:ensure-generic-function 'time_offset_3-val :lambda-list '(m))
(cl:defmethod time_offset_3-val ((m <SbgEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:time_offset_3-val is deprecated.  Use sbg_driver-msg:time_offset_3 instead.")
  (time_offset_3 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SbgEvent>) ostream)
  "Serializes a message object of type '<SbgEvent>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time_stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time_stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'overflow) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'offset_0_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'offset_1_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'offset_2_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'offset_3_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_offset_0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_offset_0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_offset_1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_offset_1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_offset_2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_offset_2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_offset_3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_offset_3)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SbgEvent>) istream)
  "Deserializes a message object of type '<SbgEvent>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time_stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time_stamp)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'overflow) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'offset_0_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'offset_1_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'offset_2_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'offset_3_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_offset_0)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_offset_0)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_offset_1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_offset_1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_offset_2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_offset_2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_offset_3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_offset_3)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SbgEvent>)))
  "Returns string type for a message object of type '<SbgEvent>"
  "sbg_driver/SbgEvent")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SbgEvent)))
  "Returns string type for a message object of type 'SbgEvent"
  "sbg_driver/SbgEvent")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SbgEvent>)))
  "Returns md5sum for a message object of type '<SbgEvent>"
  "330fcb628fc06f7fd7e2c2276c83adfa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SbgEvent)))
  "Returns md5sum for a message object of type 'SbgEvent"
  "330fcb628fc06f7fd7e2c2276c83adfa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SbgEvent>)))
  "Returns full string definition for message of type '<SbgEvent>"
  (cl:format cl:nil "# SBG Ellipse Messages~%Header header~%~%# Time since sensor is powered up us ~%uint32 time_stamp~%~%# True if we have received events at a higher rate than 1 kHz.~%bool overflow~%~%# True if at least two events have been received.~%bool offset_0_valid~%~%# True if at least three events have been received.~%bool offset_1_valid~%~%# True if at least four events have been received.~%bool offset_2_valid~%~%# True if five events have been received.~%bool offset_3_valid~%~%~%# Time offset for the second received event. (us)~%uint16 time_offset_0~%~%# Time offset for the third received event. (us)~%uint16 time_offset_1~%~%# Time offset for the fourth received event. (us)~%uint16  time_offset_2~%~%# Time offset for the fifth received event. (us)~%uint16  time_offset_3~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SbgEvent)))
  "Returns full string definition for message of type 'SbgEvent"
  (cl:format cl:nil "# SBG Ellipse Messages~%Header header~%~%# Time since sensor is powered up us ~%uint32 time_stamp~%~%# True if we have received events at a higher rate than 1 kHz.~%bool overflow~%~%# True if at least two events have been received.~%bool offset_0_valid~%~%# True if at least three events have been received.~%bool offset_1_valid~%~%# True if at least four events have been received.~%bool offset_2_valid~%~%# True if five events have been received.~%bool offset_3_valid~%~%~%# Time offset for the second received event. (us)~%uint16 time_offset_0~%~%# Time offset for the third received event. (us)~%uint16 time_offset_1~%~%# Time offset for the fourth received event. (us)~%uint16  time_offset_2~%~%# Time offset for the fifth received event. (us)~%uint16  time_offset_3~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SbgEvent>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     1
     1
     1
     1
     1
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SbgEvent>))
  "Converts a ROS message object to a list"
  (cl:list 'SbgEvent
    (cl:cons ':header (header msg))
    (cl:cons ':time_stamp (time_stamp msg))
    (cl:cons ':overflow (overflow msg))
    (cl:cons ':offset_0_valid (offset_0_valid msg))
    (cl:cons ':offset_1_valid (offset_1_valid msg))
    (cl:cons ':offset_2_valid (offset_2_valid msg))
    (cl:cons ':offset_3_valid (offset_3_valid msg))
    (cl:cons ':time_offset_0 (time_offset_0 msg))
    (cl:cons ':time_offset_1 (time_offset_1 msg))
    (cl:cons ':time_offset_2 (time_offset_2 msg))
    (cl:cons ':time_offset_3 (time_offset_3 msg))
))
