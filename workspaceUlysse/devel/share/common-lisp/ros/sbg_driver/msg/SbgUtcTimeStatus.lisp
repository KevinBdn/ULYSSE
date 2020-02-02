; Auto-generated. Do not edit!


(cl:in-package sbg_driver-msg)


;//! \htmlinclude SbgUtcTimeStatus.msg.html

(cl:defclass <SbgUtcTimeStatus> (roslisp-msg-protocol:ros-message)
  ((clock_stable
    :reader clock_stable
    :initarg :clock_stable
    :type cl:boolean
    :initform cl:nil)
   (clock_status
    :reader clock_status
    :initarg :clock_status
    :type cl:fixnum
    :initform 0)
   (clock_utc_sync
    :reader clock_utc_sync
    :initarg :clock_utc_sync
    :type cl:boolean
    :initform cl:nil)
   (clock_utc_status
    :reader clock_utc_status
    :initarg :clock_utc_status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SbgUtcTimeStatus (<SbgUtcTimeStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SbgUtcTimeStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SbgUtcTimeStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sbg_driver-msg:<SbgUtcTimeStatus> is deprecated: use sbg_driver-msg:SbgUtcTimeStatus instead.")))

(cl:ensure-generic-function 'clock_stable-val :lambda-list '(m))
(cl:defmethod clock_stable-val ((m <SbgUtcTimeStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:clock_stable-val is deprecated.  Use sbg_driver-msg:clock_stable instead.")
  (clock_stable m))

(cl:ensure-generic-function 'clock_status-val :lambda-list '(m))
(cl:defmethod clock_status-val ((m <SbgUtcTimeStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:clock_status-val is deprecated.  Use sbg_driver-msg:clock_status instead.")
  (clock_status m))

(cl:ensure-generic-function 'clock_utc_sync-val :lambda-list '(m))
(cl:defmethod clock_utc_sync-val ((m <SbgUtcTimeStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:clock_utc_sync-val is deprecated.  Use sbg_driver-msg:clock_utc_sync instead.")
  (clock_utc_sync m))

(cl:ensure-generic-function 'clock_utc_status-val :lambda-list '(m))
(cl:defmethod clock_utc_status-val ((m <SbgUtcTimeStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:clock_utc_status-val is deprecated.  Use sbg_driver-msg:clock_utc_status instead.")
  (clock_utc_status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SbgUtcTimeStatus>) ostream)
  "Serializes a message object of type '<SbgUtcTimeStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'clock_stable) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'clock_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'clock_utc_sync) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'clock_utc_status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SbgUtcTimeStatus>) istream)
  "Deserializes a message object of type '<SbgUtcTimeStatus>"
    (cl:setf (cl:slot-value msg 'clock_stable) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'clock_status)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'clock_utc_sync) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'clock_utc_status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SbgUtcTimeStatus>)))
  "Returns string type for a message object of type '<SbgUtcTimeStatus>"
  "sbg_driver/SbgUtcTimeStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SbgUtcTimeStatus)))
  "Returns string type for a message object of type 'SbgUtcTimeStatus"
  "sbg_driver/SbgUtcTimeStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SbgUtcTimeStatus>)))
  "Returns md5sum for a message object of type '<SbgUtcTimeStatus>"
  "d140f95192866cb459fe7af2851c8eed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SbgUtcTimeStatus)))
  "Returns md5sum for a message object of type 'SbgUtcTimeStatus"
  "d140f95192866cb459fe7af2851c8eed")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SbgUtcTimeStatus>)))
  "Returns full string definition for message of type '<SbgUtcTimeStatus>"
  (cl:format cl:nil "# SBG Ellipse Messages~%~%# True when a clock input can be used to synchronize the internal clock.~%bool clock_stable~%~%# Define the internal clock estimation status~%# 0 An error has occurred on the clock estimation.~%# 1 The clock is only based on the internal crystal.~%# 2 A PPS has been detected and the clock is converging to it.~%# 3 The clock has converged to the PPS and is within 500ns.~%uint8 clock_status~%~%# True if UTC time is synchronized with a PPS~%bool clock_utc_sync~%~%# UTC validity status~%# 0 The UTC time is not known, we are just propagating the UTC time internally.~%# 1 We have received valid UTC time information but we don't have the leap seconds information.~%# 2 We have received valid UTC time data with valid leap seconds.~%uint8 clock_utc_status~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SbgUtcTimeStatus)))
  "Returns full string definition for message of type 'SbgUtcTimeStatus"
  (cl:format cl:nil "# SBG Ellipse Messages~%~%# True when a clock input can be used to synchronize the internal clock.~%bool clock_stable~%~%# Define the internal clock estimation status~%# 0 An error has occurred on the clock estimation.~%# 1 The clock is only based on the internal crystal.~%# 2 A PPS has been detected and the clock is converging to it.~%# 3 The clock has converged to the PPS and is within 500ns.~%uint8 clock_status~%~%# True if UTC time is synchronized with a PPS~%bool clock_utc_sync~%~%# UTC validity status~%# 0 The UTC time is not known, we are just propagating the UTC time internally.~%# 1 We have received valid UTC time information but we don't have the leap seconds information.~%# 2 We have received valid UTC time data with valid leap seconds.~%uint8 clock_utc_status~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SbgUtcTimeStatus>))
  (cl:+ 0
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SbgUtcTimeStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'SbgUtcTimeStatus
    (cl:cons ':clock_stable (clock_stable msg))
    (cl:cons ':clock_status (clock_status msg))
    (cl:cons ':clock_utc_sync (clock_utc_sync msg))
    (cl:cons ':clock_utc_status (clock_utc_status msg))
))
