; Auto-generated. Do not edit!


(cl:in-package sbg_driver-msg)


;//! \htmlinclude SbgStatusGeneral.msg.html

(cl:defclass <SbgStatusGeneral> (roslisp-msg-protocol:ros-message)
  ((main_power
    :reader main_power
    :initarg :main_power
    :type cl:boolean
    :initform cl:nil)
   (imu_power
    :reader imu_power
    :initarg :imu_power
    :type cl:boolean
    :initform cl:nil)
   (gps_power
    :reader gps_power
    :initarg :gps_power
    :type cl:boolean
    :initform cl:nil)
   (settings
    :reader settings
    :initarg :settings
    :type cl:boolean
    :initform cl:nil)
   (temperature
    :reader temperature
    :initarg :temperature
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SbgStatusGeneral (<SbgStatusGeneral>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SbgStatusGeneral>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SbgStatusGeneral)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sbg_driver-msg:<SbgStatusGeneral> is deprecated: use sbg_driver-msg:SbgStatusGeneral instead.")))

(cl:ensure-generic-function 'main_power-val :lambda-list '(m))
(cl:defmethod main_power-val ((m <SbgStatusGeneral>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:main_power-val is deprecated.  Use sbg_driver-msg:main_power instead.")
  (main_power m))

(cl:ensure-generic-function 'imu_power-val :lambda-list '(m))
(cl:defmethod imu_power-val ((m <SbgStatusGeneral>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:imu_power-val is deprecated.  Use sbg_driver-msg:imu_power instead.")
  (imu_power m))

(cl:ensure-generic-function 'gps_power-val :lambda-list '(m))
(cl:defmethod gps_power-val ((m <SbgStatusGeneral>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:gps_power-val is deprecated.  Use sbg_driver-msg:gps_power instead.")
  (gps_power m))

(cl:ensure-generic-function 'settings-val :lambda-list '(m))
(cl:defmethod settings-val ((m <SbgStatusGeneral>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:settings-val is deprecated.  Use sbg_driver-msg:settings instead.")
  (settings m))

(cl:ensure-generic-function 'temperature-val :lambda-list '(m))
(cl:defmethod temperature-val ((m <SbgStatusGeneral>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:temperature-val is deprecated.  Use sbg_driver-msg:temperature instead.")
  (temperature m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SbgStatusGeneral>) ostream)
  "Serializes a message object of type '<SbgStatusGeneral>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'main_power) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'imu_power) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'gps_power) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'settings) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'temperature) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SbgStatusGeneral>) istream)
  "Deserializes a message object of type '<SbgStatusGeneral>"
    (cl:setf (cl:slot-value msg 'main_power) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'imu_power) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'gps_power) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'settings) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'temperature) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SbgStatusGeneral>)))
  "Returns string type for a message object of type '<SbgStatusGeneral>"
  "sbg_driver/SbgStatusGeneral")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SbgStatusGeneral)))
  "Returns string type for a message object of type 'SbgStatusGeneral"
  "sbg_driver/SbgStatusGeneral")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SbgStatusGeneral>)))
  "Returns md5sum for a message object of type '<SbgStatusGeneral>"
  "693fdf7e799b5fc52833d1649c048053")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SbgStatusGeneral)))
  "Returns md5sum for a message object of type 'SbgStatusGeneral"
  "693fdf7e799b5fc52833d1649c048053")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SbgStatusGeneral>)))
  "Returns full string definition for message of type '<SbgStatusGeneral>"
  (cl:format cl:nil "# SBG Ellipse Messages~%# SbgStatus submessage~%~%# General main power~%# True when main power supply is OK.~%bool main_power~%~%# General imu power~%# True when IMU power supply is OK.~%bool imu_power~%~%# General gps power~%# Set to True when GPS power supply is OK.~%bool gps_power~%~%# General Settings~%# True if settings were correctly loaded~%bool settings~%~%# General Temperature~%# True when temperature is within specified limits.~%bool temperature~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SbgStatusGeneral)))
  "Returns full string definition for message of type 'SbgStatusGeneral"
  (cl:format cl:nil "# SBG Ellipse Messages~%# SbgStatus submessage~%~%# General main power~%# True when main power supply is OK.~%bool main_power~%~%# General imu power~%# True when IMU power supply is OK.~%bool imu_power~%~%# General gps power~%# Set to True when GPS power supply is OK.~%bool gps_power~%~%# General Settings~%# True if settings were correctly loaded~%bool settings~%~%# General Temperature~%# True when temperature is within specified limits.~%bool temperature~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SbgStatusGeneral>))
  (cl:+ 0
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SbgStatusGeneral>))
  "Converts a ROS message object to a list"
  (cl:list 'SbgStatusGeneral
    (cl:cons ':main_power (main_power msg))
    (cl:cons ':imu_power (imu_power msg))
    (cl:cons ':gps_power (gps_power msg))
    (cl:cons ':settings (settings msg))
    (cl:cons ':temperature (temperature msg))
))
