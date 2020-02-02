; Auto-generated. Do not edit!


(cl:in-package sbg_driver-msg)


;//! \htmlinclude SbgGpsVelStatus.msg.html

(cl:defclass <SbgGpsVelStatus> (roslisp-msg-protocol:ros-message)
  ((vel_status
    :reader vel_status
    :initarg :vel_status
    :type cl:fixnum
    :initform 0)
   (vel_type
    :reader vel_type
    :initarg :vel_type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SbgGpsVelStatus (<SbgGpsVelStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SbgGpsVelStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SbgGpsVelStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sbg_driver-msg:<SbgGpsVelStatus> is deprecated: use sbg_driver-msg:SbgGpsVelStatus instead.")))

(cl:ensure-generic-function 'vel_status-val :lambda-list '(m))
(cl:defmethod vel_status-val ((m <SbgGpsVelStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:vel_status-val is deprecated.  Use sbg_driver-msg:vel_status instead.")
  (vel_status m))

(cl:ensure-generic-function 'vel_type-val :lambda-list '(m))
(cl:defmethod vel_type-val ((m <SbgGpsVelStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:vel_type-val is deprecated.  Use sbg_driver-msg:vel_type instead.")
  (vel_type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SbgGpsVelStatus>) ostream)
  "Serializes a message object of type '<SbgGpsVelStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vel_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vel_type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SbgGpsVelStatus>) istream)
  "Deserializes a message object of type '<SbgGpsVelStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vel_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vel_type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SbgGpsVelStatus>)))
  "Returns string type for a message object of type '<SbgGpsVelStatus>"
  "sbg_driver/SbgGpsVelStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SbgGpsVelStatus)))
  "Returns string type for a message object of type 'SbgGpsVelStatus"
  "sbg_driver/SbgGpsVelStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SbgGpsVelStatus>)))
  "Returns md5sum for a message object of type '<SbgGpsVelStatus>"
  "8c5fcc3c3ffd11ce820539049c166dde")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SbgGpsVelStatus)))
  "Returns md5sum for a message object of type 'SbgGpsVelStatus"
  "8c5fcc3c3ffd11ce820539049c166dde")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SbgGpsVelStatus>)))
  "Returns full string definition for message of type '<SbgGpsVelStatus>"
  (cl:format cl:nil "# SBG Ellipse Messages~%# Submessage~%~%# The raw GPS velocity status~%# 0 SOL_COMPUTED		A valid solution has been computed.~%# 1 INSUFFICIENT_OBS	Not enough valid SV to compute a solution.~%# 2 INTERNAL_ERROR		An internal error has occurred.~%# 3 LIMIT				Velocity limit exceeded.~%uint8 vel_status~%~%# The raw GPS velocity type~%# 0 VEL_NO_SOLUTION		No valid velocity solution available.~%# 1 VEL_UNKNOWN_TYPE	An unknown solution type has been computed.~%# 2 VEL_DOPPLER			A Doppler velocity has been computed.~%# 3 VEL_DIFFERENTIAL	A velocity has been computed between two positions.~%uint8 vel_type~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SbgGpsVelStatus)))
  "Returns full string definition for message of type 'SbgGpsVelStatus"
  (cl:format cl:nil "# SBG Ellipse Messages~%# Submessage~%~%# The raw GPS velocity status~%# 0 SOL_COMPUTED		A valid solution has been computed.~%# 1 INSUFFICIENT_OBS	Not enough valid SV to compute a solution.~%# 2 INTERNAL_ERROR		An internal error has occurred.~%# 3 LIMIT				Velocity limit exceeded.~%uint8 vel_status~%~%# The raw GPS velocity type~%# 0 VEL_NO_SOLUTION		No valid velocity solution available.~%# 1 VEL_UNKNOWN_TYPE	An unknown solution type has been computed.~%# 2 VEL_DOPPLER			A Doppler velocity has been computed.~%# 3 VEL_DIFFERENTIAL	A velocity has been computed between two positions.~%uint8 vel_type~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SbgGpsVelStatus>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SbgGpsVelStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'SbgGpsVelStatus
    (cl:cons ':vel_status (vel_status msg))
    (cl:cons ':vel_type (vel_type msg))
))
