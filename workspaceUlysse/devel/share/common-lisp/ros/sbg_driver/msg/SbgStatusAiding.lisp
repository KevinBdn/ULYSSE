; Auto-generated. Do not edit!


(cl:in-package sbg_driver-msg)


;//! \htmlinclude SbgStatusAiding.msg.html

(cl:defclass <SbgStatusAiding> (roslisp-msg-protocol:ros-message)
  ((gps1_pos_recv
    :reader gps1_pos_recv
    :initarg :gps1_pos_recv
    :type cl:boolean
    :initform cl:nil)
   (gps1_vel_recv
    :reader gps1_vel_recv
    :initarg :gps1_vel_recv
    :type cl:boolean
    :initform cl:nil)
   (gps1_hdt_recv
    :reader gps1_hdt_recv
    :initarg :gps1_hdt_recv
    :type cl:boolean
    :initform cl:nil)
   (gps1_utc_recv
    :reader gps1_utc_recv
    :initarg :gps1_utc_recv
    :type cl:boolean
    :initform cl:nil)
   (mag_recv
    :reader mag_recv
    :initarg :mag_recv
    :type cl:boolean
    :initform cl:nil)
   (odo_recv
    :reader odo_recv
    :initarg :odo_recv
    :type cl:boolean
    :initform cl:nil)
   (dvl_recv
    :reader dvl_recv
    :initarg :dvl_recv
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SbgStatusAiding (<SbgStatusAiding>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SbgStatusAiding>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SbgStatusAiding)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sbg_driver-msg:<SbgStatusAiding> is deprecated: use sbg_driver-msg:SbgStatusAiding instead.")))

(cl:ensure-generic-function 'gps1_pos_recv-val :lambda-list '(m))
(cl:defmethod gps1_pos_recv-val ((m <SbgStatusAiding>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:gps1_pos_recv-val is deprecated.  Use sbg_driver-msg:gps1_pos_recv instead.")
  (gps1_pos_recv m))

(cl:ensure-generic-function 'gps1_vel_recv-val :lambda-list '(m))
(cl:defmethod gps1_vel_recv-val ((m <SbgStatusAiding>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:gps1_vel_recv-val is deprecated.  Use sbg_driver-msg:gps1_vel_recv instead.")
  (gps1_vel_recv m))

(cl:ensure-generic-function 'gps1_hdt_recv-val :lambda-list '(m))
(cl:defmethod gps1_hdt_recv-val ((m <SbgStatusAiding>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:gps1_hdt_recv-val is deprecated.  Use sbg_driver-msg:gps1_hdt_recv instead.")
  (gps1_hdt_recv m))

(cl:ensure-generic-function 'gps1_utc_recv-val :lambda-list '(m))
(cl:defmethod gps1_utc_recv-val ((m <SbgStatusAiding>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:gps1_utc_recv-val is deprecated.  Use sbg_driver-msg:gps1_utc_recv instead.")
  (gps1_utc_recv m))

(cl:ensure-generic-function 'mag_recv-val :lambda-list '(m))
(cl:defmethod mag_recv-val ((m <SbgStatusAiding>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:mag_recv-val is deprecated.  Use sbg_driver-msg:mag_recv instead.")
  (mag_recv m))

(cl:ensure-generic-function 'odo_recv-val :lambda-list '(m))
(cl:defmethod odo_recv-val ((m <SbgStatusAiding>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:odo_recv-val is deprecated.  Use sbg_driver-msg:odo_recv instead.")
  (odo_recv m))

(cl:ensure-generic-function 'dvl_recv-val :lambda-list '(m))
(cl:defmethod dvl_recv-val ((m <SbgStatusAiding>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:dvl_recv-val is deprecated.  Use sbg_driver-msg:dvl_recv instead.")
  (dvl_recv m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SbgStatusAiding>) ostream)
  "Serializes a message object of type '<SbgStatusAiding>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'gps1_pos_recv) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'gps1_vel_recv) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'gps1_hdt_recv) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'gps1_utc_recv) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'mag_recv) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'odo_recv) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'dvl_recv) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SbgStatusAiding>) istream)
  "Deserializes a message object of type '<SbgStatusAiding>"
    (cl:setf (cl:slot-value msg 'gps1_pos_recv) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'gps1_vel_recv) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'gps1_hdt_recv) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'gps1_utc_recv) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'mag_recv) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'odo_recv) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'dvl_recv) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SbgStatusAiding>)))
  "Returns string type for a message object of type '<SbgStatusAiding>"
  "sbg_driver/SbgStatusAiding")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SbgStatusAiding)))
  "Returns string type for a message object of type 'SbgStatusAiding"
  "sbg_driver/SbgStatusAiding")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SbgStatusAiding>)))
  "Returns md5sum for a message object of type '<SbgStatusAiding>"
  "873fbacbcfa106e3f518a7cd0cce3cfb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SbgStatusAiding)))
  "Returns md5sum for a message object of type 'SbgStatusAiding"
  "873fbacbcfa106e3f518a7cd0cce3cfb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SbgStatusAiding>)))
  "Returns full string definition for message of type '<SbgStatusAiding>"
  (cl:format cl:nil "# SBG Ellipse Messages~%# SbgStatus submessage~%~%# AIDING_GPS1_POS_RECV true when valid GPS 1 position data is received~%bool gps1_pos_recv~%~%# AIDING_GPS1_VEL_RECV true when valid GPS 1 velocity data is received~%bool gps1_vel_recv~%~%# AIDING_GPS1_HDT_RECV true when valid GPS 1 true heading data is received~%bool gps1_hdt_recv~%~%# AIDING_GPS1_UTC_RECV true when valid GPS 1 UTC time data is received~%bool gps1_utc_recv~%~%# AIDING_MAG_RECV true when valid Magnetometer data is received~%bool mag_recv~%~%# AIDING_ODO_RECV true when Odometer pulse is received~%bool odo_recv~%~%# AIDING_DVL_RECV true when valid DVL data is received~%bool dvl_recv~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SbgStatusAiding)))
  "Returns full string definition for message of type 'SbgStatusAiding"
  (cl:format cl:nil "# SBG Ellipse Messages~%# SbgStatus submessage~%~%# AIDING_GPS1_POS_RECV true when valid GPS 1 position data is received~%bool gps1_pos_recv~%~%# AIDING_GPS1_VEL_RECV true when valid GPS 1 velocity data is received~%bool gps1_vel_recv~%~%# AIDING_GPS1_HDT_RECV true when valid GPS 1 true heading data is received~%bool gps1_hdt_recv~%~%# AIDING_GPS1_UTC_RECV true when valid GPS 1 UTC time data is received~%bool gps1_utc_recv~%~%# AIDING_MAG_RECV true when valid Magnetometer data is received~%bool mag_recv~%~%# AIDING_ODO_RECV true when Odometer pulse is received~%bool odo_recv~%~%# AIDING_DVL_RECV true when valid DVL data is received~%bool dvl_recv~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SbgStatusAiding>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SbgStatusAiding>))
  "Converts a ROS message object to a list"
  (cl:list 'SbgStatusAiding
    (cl:cons ':gps1_pos_recv (gps1_pos_recv msg))
    (cl:cons ':gps1_vel_recv (gps1_vel_recv msg))
    (cl:cons ':gps1_hdt_recv (gps1_hdt_recv msg))
    (cl:cons ':gps1_utc_recv (gps1_utc_recv msg))
    (cl:cons ':mag_recv (mag_recv msg))
    (cl:cons ':odo_recv (odo_recv msg))
    (cl:cons ':dvl_recv (dvl_recv msg))
))
