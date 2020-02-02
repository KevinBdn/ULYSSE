; Auto-generated. Do not edit!


(cl:in-package sbg_driver-msg)


;//! \htmlinclude SbgGpsRaw.msg.html

(cl:defclass <SbgGpsRaw> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass SbgGpsRaw (<SbgGpsRaw>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SbgGpsRaw>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SbgGpsRaw)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sbg_driver-msg:<SbgGpsRaw> is deprecated: use sbg_driver-msg:SbgGpsRaw instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SbgGpsRaw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:header-val is deprecated.  Use sbg_driver-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <SbgGpsRaw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:data-val is deprecated.  Use sbg_driver-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SbgGpsRaw>) ostream)
  "Serializes a message object of type '<SbgGpsRaw>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SbgGpsRaw>) istream)
  "Deserializes a message object of type '<SbgGpsRaw>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SbgGpsRaw>)))
  "Returns string type for a message object of type '<SbgGpsRaw>"
  "sbg_driver/SbgGpsRaw")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SbgGpsRaw)))
  "Returns string type for a message object of type 'SbgGpsRaw"
  "sbg_driver/SbgGpsRaw")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SbgGpsRaw>)))
  "Returns md5sum for a message object of type '<SbgGpsRaw>"
  "8903b686ebe5db3477e83c6d0bb149f8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SbgGpsRaw)))
  "Returns md5sum for a message object of type 'SbgGpsRaw"
  "8903b686ebe5db3477e83c6d0bb149f8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SbgGpsRaw>)))
  "Returns full string definition for message of type '<SbgGpsRaw>"
  (cl:format cl:nil "# SBG Ellipse Messages~%Header header~%~%# Raw Data~%uint8[] data~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SbgGpsRaw)))
  "Returns full string definition for message of type 'SbgGpsRaw"
  (cl:format cl:nil "# SBG Ellipse Messages~%Header header~%~%# Raw Data~%uint8[] data~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SbgGpsRaw>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SbgGpsRaw>))
  "Converts a ROS message object to a list"
  (cl:list 'SbgGpsRaw
    (cl:cons ':header (header msg))
    (cl:cons ':data (data msg))
))
