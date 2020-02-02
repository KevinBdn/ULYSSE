; Auto-generated. Do not edit!


(cl:in-package sbg_driver-msg)


;//! \htmlinclude SbgAirDataStatus.msg.html

(cl:defclass <SbgAirDataStatus> (roslisp-msg-protocol:ros-message)
  ((is_delay_time
    :reader is_delay_time
    :initarg :is_delay_time
    :type cl:boolean
    :initform cl:nil)
   (pressure_valid
    :reader pressure_valid
    :initarg :pressure_valid
    :type cl:boolean
    :initform cl:nil)
   (altitude_valid
    :reader altitude_valid
    :initarg :altitude_valid
    :type cl:boolean
    :initform cl:nil)
   (pressure_diff_valid
    :reader pressure_diff_valid
    :initarg :pressure_diff_valid
    :type cl:boolean
    :initform cl:nil)
   (air_speed_valid
    :reader air_speed_valid
    :initarg :air_speed_valid
    :type cl:boolean
    :initform cl:nil)
   (air_temperature_valid
    :reader air_temperature_valid
    :initarg :air_temperature_valid
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SbgAirDataStatus (<SbgAirDataStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SbgAirDataStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SbgAirDataStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sbg_driver-msg:<SbgAirDataStatus> is deprecated: use sbg_driver-msg:SbgAirDataStatus instead.")))

(cl:ensure-generic-function 'is_delay_time-val :lambda-list '(m))
(cl:defmethod is_delay_time-val ((m <SbgAirDataStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:is_delay_time-val is deprecated.  Use sbg_driver-msg:is_delay_time instead.")
  (is_delay_time m))

(cl:ensure-generic-function 'pressure_valid-val :lambda-list '(m))
(cl:defmethod pressure_valid-val ((m <SbgAirDataStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:pressure_valid-val is deprecated.  Use sbg_driver-msg:pressure_valid instead.")
  (pressure_valid m))

(cl:ensure-generic-function 'altitude_valid-val :lambda-list '(m))
(cl:defmethod altitude_valid-val ((m <SbgAirDataStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:altitude_valid-val is deprecated.  Use sbg_driver-msg:altitude_valid instead.")
  (altitude_valid m))

(cl:ensure-generic-function 'pressure_diff_valid-val :lambda-list '(m))
(cl:defmethod pressure_diff_valid-val ((m <SbgAirDataStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:pressure_diff_valid-val is deprecated.  Use sbg_driver-msg:pressure_diff_valid instead.")
  (pressure_diff_valid m))

(cl:ensure-generic-function 'air_speed_valid-val :lambda-list '(m))
(cl:defmethod air_speed_valid-val ((m <SbgAirDataStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:air_speed_valid-val is deprecated.  Use sbg_driver-msg:air_speed_valid instead.")
  (air_speed_valid m))

(cl:ensure-generic-function 'air_temperature_valid-val :lambda-list '(m))
(cl:defmethod air_temperature_valid-val ((m <SbgAirDataStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:air_temperature_valid-val is deprecated.  Use sbg_driver-msg:air_temperature_valid instead.")
  (air_temperature_valid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SbgAirDataStatus>) ostream)
  "Serializes a message object of type '<SbgAirDataStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_delay_time) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'pressure_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'altitude_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'pressure_diff_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'air_speed_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'air_temperature_valid) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SbgAirDataStatus>) istream)
  "Deserializes a message object of type '<SbgAirDataStatus>"
    (cl:setf (cl:slot-value msg 'is_delay_time) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'pressure_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'altitude_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'pressure_diff_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'air_speed_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'air_temperature_valid) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SbgAirDataStatus>)))
  "Returns string type for a message object of type '<SbgAirDataStatus>"
  "sbg_driver/SbgAirDataStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SbgAirDataStatus)))
  "Returns string type for a message object of type 'SbgAirDataStatus"
  "sbg_driver/SbgAirDataStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SbgAirDataStatus>)))
  "Returns md5sum for a message object of type '<SbgAirDataStatus>"
  "7a096a0984e0fe096308cfb42a254e4a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SbgAirDataStatus)))
  "Returns md5sum for a message object of type 'SbgAirDataStatus"
  "7a096a0984e0fe096308cfb42a254e4a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SbgAirDataStatus>)))
  "Returns full string definition for message of type '<SbgAirDataStatus>"
  (cl:format cl:nil "# SBG Ellipse Messages~%# Submessage~%~%# True if the time stamp field represents a delay instead of an absolute time stamp.~%bool is_delay_time~%~%# True if the pressure field is filled and valid.~%bool pressure_valid~%~%# True if the barometric altitude field is filled and valid.~%bool altitude_valid~%~%# True if the differential pressure field is filled and valid.~%bool pressure_diff_valid~%~%# True if the true airspeed field is filled and valid.~%bool air_speed_valid~%~%# True if the output air temperature field is filled and valid.~%bool air_temperature_valid~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SbgAirDataStatus)))
  "Returns full string definition for message of type 'SbgAirDataStatus"
  (cl:format cl:nil "# SBG Ellipse Messages~%# Submessage~%~%# True if the time stamp field represents a delay instead of an absolute time stamp.~%bool is_delay_time~%~%# True if the pressure field is filled and valid.~%bool pressure_valid~%~%# True if the barometric altitude field is filled and valid.~%bool altitude_valid~%~%# True if the differential pressure field is filled and valid.~%bool pressure_diff_valid~%~%# True if the true airspeed field is filled and valid.~%bool air_speed_valid~%~%# True if the output air temperature field is filled and valid.~%bool air_temperature_valid~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SbgAirDataStatus>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SbgAirDataStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'SbgAirDataStatus
    (cl:cons ':is_delay_time (is_delay_time msg))
    (cl:cons ':pressure_valid (pressure_valid msg))
    (cl:cons ':altitude_valid (altitude_valid msg))
    (cl:cons ':pressure_diff_valid (pressure_diff_valid msg))
    (cl:cons ':air_speed_valid (air_speed_valid msg))
    (cl:cons ':air_temperature_valid (air_temperature_valid msg))
))
