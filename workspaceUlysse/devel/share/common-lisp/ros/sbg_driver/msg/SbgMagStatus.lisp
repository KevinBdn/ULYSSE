; Auto-generated. Do not edit!


(cl:in-package sbg_driver-msg)


;//! \htmlinclude SbgMagStatus.msg.html

(cl:defclass <SbgMagStatus> (roslisp-msg-protocol:ros-message)
  ((mag_x
    :reader mag_x
    :initarg :mag_x
    :type cl:boolean
    :initform cl:nil)
   (mag_y
    :reader mag_y
    :initarg :mag_y
    :type cl:boolean
    :initform cl:nil)
   (mag_z
    :reader mag_z
    :initarg :mag_z
    :type cl:boolean
    :initform cl:nil)
   (accel_x
    :reader accel_x
    :initarg :accel_x
    :type cl:boolean
    :initform cl:nil)
   (accel_y
    :reader accel_y
    :initarg :accel_y
    :type cl:boolean
    :initform cl:nil)
   (accel_z
    :reader accel_z
    :initarg :accel_z
    :type cl:boolean
    :initform cl:nil)
   (mags_in_range
    :reader mags_in_range
    :initarg :mags_in_range
    :type cl:boolean
    :initform cl:nil)
   (accels_in_range
    :reader accels_in_range
    :initarg :accels_in_range
    :type cl:boolean
    :initform cl:nil)
   (calibration
    :reader calibration
    :initarg :calibration
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SbgMagStatus (<SbgMagStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SbgMagStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SbgMagStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sbg_driver-msg:<SbgMagStatus> is deprecated: use sbg_driver-msg:SbgMagStatus instead.")))

(cl:ensure-generic-function 'mag_x-val :lambda-list '(m))
(cl:defmethod mag_x-val ((m <SbgMagStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:mag_x-val is deprecated.  Use sbg_driver-msg:mag_x instead.")
  (mag_x m))

(cl:ensure-generic-function 'mag_y-val :lambda-list '(m))
(cl:defmethod mag_y-val ((m <SbgMagStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:mag_y-val is deprecated.  Use sbg_driver-msg:mag_y instead.")
  (mag_y m))

(cl:ensure-generic-function 'mag_z-val :lambda-list '(m))
(cl:defmethod mag_z-val ((m <SbgMagStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:mag_z-val is deprecated.  Use sbg_driver-msg:mag_z instead.")
  (mag_z m))

(cl:ensure-generic-function 'accel_x-val :lambda-list '(m))
(cl:defmethod accel_x-val ((m <SbgMagStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:accel_x-val is deprecated.  Use sbg_driver-msg:accel_x instead.")
  (accel_x m))

(cl:ensure-generic-function 'accel_y-val :lambda-list '(m))
(cl:defmethod accel_y-val ((m <SbgMagStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:accel_y-val is deprecated.  Use sbg_driver-msg:accel_y instead.")
  (accel_y m))

(cl:ensure-generic-function 'accel_z-val :lambda-list '(m))
(cl:defmethod accel_z-val ((m <SbgMagStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:accel_z-val is deprecated.  Use sbg_driver-msg:accel_z instead.")
  (accel_z m))

(cl:ensure-generic-function 'mags_in_range-val :lambda-list '(m))
(cl:defmethod mags_in_range-val ((m <SbgMagStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:mags_in_range-val is deprecated.  Use sbg_driver-msg:mags_in_range instead.")
  (mags_in_range m))

(cl:ensure-generic-function 'accels_in_range-val :lambda-list '(m))
(cl:defmethod accels_in_range-val ((m <SbgMagStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:accels_in_range-val is deprecated.  Use sbg_driver-msg:accels_in_range instead.")
  (accels_in_range m))

(cl:ensure-generic-function 'calibration-val :lambda-list '(m))
(cl:defmethod calibration-val ((m <SbgMagStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:calibration-val is deprecated.  Use sbg_driver-msg:calibration instead.")
  (calibration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SbgMagStatus>) ostream)
  "Serializes a message object of type '<SbgMagStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'mag_x) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'mag_y) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'mag_z) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'accel_x) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'accel_y) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'accel_z) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'mags_in_range) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'accels_in_range) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'calibration) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SbgMagStatus>) istream)
  "Deserializes a message object of type '<SbgMagStatus>"
    (cl:setf (cl:slot-value msg 'mag_x) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'mag_y) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'mag_z) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'accel_x) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'accel_y) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'accel_z) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'mags_in_range) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'accels_in_range) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'calibration) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SbgMagStatus>)))
  "Returns string type for a message object of type '<SbgMagStatus>"
  "sbg_driver/SbgMagStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SbgMagStatus)))
  "Returns string type for a message object of type 'SbgMagStatus"
  "sbg_driver/SbgMagStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SbgMagStatus>)))
  "Returns md5sum for a message object of type '<SbgMagStatus>"
  "057cf294623d5a0b037fdcc47f99e3c4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SbgMagStatus)))
  "Returns md5sum for a message object of type 'SbgMagStatus"
  "057cf294623d5a0b037fdcc47f99e3c4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SbgMagStatus>)))
  "Returns full string definition for message of type '<SbgMagStatus>"
  (cl:format cl:nil "# SBG Ellipse Messages~%# Submessage~%~%# True if the magnetometer X has passed the self test.~%bool mag_x~%~%# True if the magnetometer Y has passed the self test.~%bool mag_y~%~%# True if the magnetometer Z has passed the self test.~%bool mag_z~%~%# True if the accelerometer X has passed the self test.~%bool accel_x~%~%# True if the accelerometer Y has passed the self test.~%bool accel_y~%~%# True if the accelerometer Z has passed the self test.~%bool accel_z~%~%# True if magnetometer is not saturated~%bool mags_in_range~%~%# True if accelerometer is not saturated~%bool accels_in_range~%~%# True if magnetometer seems to be calibrated~%bool calibration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SbgMagStatus)))
  "Returns full string definition for message of type 'SbgMagStatus"
  (cl:format cl:nil "# SBG Ellipse Messages~%# Submessage~%~%# True if the magnetometer X has passed the self test.~%bool mag_x~%~%# True if the magnetometer Y has passed the self test.~%bool mag_y~%~%# True if the magnetometer Z has passed the self test.~%bool mag_z~%~%# True if the accelerometer X has passed the self test.~%bool accel_x~%~%# True if the accelerometer Y has passed the self test.~%bool accel_y~%~%# True if the accelerometer Z has passed the self test.~%bool accel_z~%~%# True if magnetometer is not saturated~%bool mags_in_range~%~%# True if accelerometer is not saturated~%bool accels_in_range~%~%# True if magnetometer seems to be calibrated~%bool calibration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SbgMagStatus>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SbgMagStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'SbgMagStatus
    (cl:cons ':mag_x (mag_x msg))
    (cl:cons ':mag_y (mag_y msg))
    (cl:cons ':mag_z (mag_z msg))
    (cl:cons ':accel_x (accel_x msg))
    (cl:cons ':accel_y (accel_y msg))
    (cl:cons ':accel_z (accel_z msg))
    (cl:cons ':mags_in_range (mags_in_range msg))
    (cl:cons ':accels_in_range (accels_in_range msg))
    (cl:cons ':calibration (calibration msg))
))
