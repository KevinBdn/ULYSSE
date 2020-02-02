; Auto-generated. Do not edit!


(cl:in-package sbg_driver-msg)


;//! \htmlinclude SbgImuStatus.msg.html

(cl:defclass <SbgImuStatus> (roslisp-msg-protocol:ros-message)
  ((imu_com
    :reader imu_com
    :initarg :imu_com
    :type cl:boolean
    :initform cl:nil)
   (imu_status
    :reader imu_status
    :initarg :imu_status
    :type cl:boolean
    :initform cl:nil)
   (imu_accel_x
    :reader imu_accel_x
    :initarg :imu_accel_x
    :type cl:boolean
    :initform cl:nil)
   (imu_accel_y
    :reader imu_accel_y
    :initarg :imu_accel_y
    :type cl:boolean
    :initform cl:nil)
   (imu_accel_z
    :reader imu_accel_z
    :initarg :imu_accel_z
    :type cl:boolean
    :initform cl:nil)
   (imu_gyro_x
    :reader imu_gyro_x
    :initarg :imu_gyro_x
    :type cl:boolean
    :initform cl:nil)
   (imu_gyro_y
    :reader imu_gyro_y
    :initarg :imu_gyro_y
    :type cl:boolean
    :initform cl:nil)
   (imu_gyro_z
    :reader imu_gyro_z
    :initarg :imu_gyro_z
    :type cl:boolean
    :initform cl:nil)
   (imu_accels_in_range
    :reader imu_accels_in_range
    :initarg :imu_accels_in_range
    :type cl:boolean
    :initform cl:nil)
   (imu_gyros_in_range
    :reader imu_gyros_in_range
    :initarg :imu_gyros_in_range
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SbgImuStatus (<SbgImuStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SbgImuStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SbgImuStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sbg_driver-msg:<SbgImuStatus> is deprecated: use sbg_driver-msg:SbgImuStatus instead.")))

(cl:ensure-generic-function 'imu_com-val :lambda-list '(m))
(cl:defmethod imu_com-val ((m <SbgImuStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:imu_com-val is deprecated.  Use sbg_driver-msg:imu_com instead.")
  (imu_com m))

(cl:ensure-generic-function 'imu_status-val :lambda-list '(m))
(cl:defmethod imu_status-val ((m <SbgImuStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:imu_status-val is deprecated.  Use sbg_driver-msg:imu_status instead.")
  (imu_status m))

(cl:ensure-generic-function 'imu_accel_x-val :lambda-list '(m))
(cl:defmethod imu_accel_x-val ((m <SbgImuStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:imu_accel_x-val is deprecated.  Use sbg_driver-msg:imu_accel_x instead.")
  (imu_accel_x m))

(cl:ensure-generic-function 'imu_accel_y-val :lambda-list '(m))
(cl:defmethod imu_accel_y-val ((m <SbgImuStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:imu_accel_y-val is deprecated.  Use sbg_driver-msg:imu_accel_y instead.")
  (imu_accel_y m))

(cl:ensure-generic-function 'imu_accel_z-val :lambda-list '(m))
(cl:defmethod imu_accel_z-val ((m <SbgImuStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:imu_accel_z-val is deprecated.  Use sbg_driver-msg:imu_accel_z instead.")
  (imu_accel_z m))

(cl:ensure-generic-function 'imu_gyro_x-val :lambda-list '(m))
(cl:defmethod imu_gyro_x-val ((m <SbgImuStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:imu_gyro_x-val is deprecated.  Use sbg_driver-msg:imu_gyro_x instead.")
  (imu_gyro_x m))

(cl:ensure-generic-function 'imu_gyro_y-val :lambda-list '(m))
(cl:defmethod imu_gyro_y-val ((m <SbgImuStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:imu_gyro_y-val is deprecated.  Use sbg_driver-msg:imu_gyro_y instead.")
  (imu_gyro_y m))

(cl:ensure-generic-function 'imu_gyro_z-val :lambda-list '(m))
(cl:defmethod imu_gyro_z-val ((m <SbgImuStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:imu_gyro_z-val is deprecated.  Use sbg_driver-msg:imu_gyro_z instead.")
  (imu_gyro_z m))

(cl:ensure-generic-function 'imu_accels_in_range-val :lambda-list '(m))
(cl:defmethod imu_accels_in_range-val ((m <SbgImuStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:imu_accels_in_range-val is deprecated.  Use sbg_driver-msg:imu_accels_in_range instead.")
  (imu_accels_in_range m))

(cl:ensure-generic-function 'imu_gyros_in_range-val :lambda-list '(m))
(cl:defmethod imu_gyros_in_range-val ((m <SbgImuStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:imu_gyros_in_range-val is deprecated.  Use sbg_driver-msg:imu_gyros_in_range instead.")
  (imu_gyros_in_range m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SbgImuStatus>) ostream)
  "Serializes a message object of type '<SbgImuStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'imu_com) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'imu_status) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'imu_accel_x) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'imu_accel_y) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'imu_accel_z) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'imu_gyro_x) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'imu_gyro_y) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'imu_gyro_z) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'imu_accels_in_range) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'imu_gyros_in_range) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SbgImuStatus>) istream)
  "Deserializes a message object of type '<SbgImuStatus>"
    (cl:setf (cl:slot-value msg 'imu_com) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'imu_status) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'imu_accel_x) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'imu_accel_y) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'imu_accel_z) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'imu_gyro_x) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'imu_gyro_y) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'imu_gyro_z) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'imu_accels_in_range) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'imu_gyros_in_range) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SbgImuStatus>)))
  "Returns string type for a message object of type '<SbgImuStatus>"
  "sbg_driver/SbgImuStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SbgImuStatus)))
  "Returns string type for a message object of type 'SbgImuStatus"
  "sbg_driver/SbgImuStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SbgImuStatus>)))
  "Returns md5sum for a message object of type '<SbgImuStatus>"
  "e9a1bd33215fe69b9523e359cacbe127")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SbgImuStatus)))
  "Returns md5sum for a message object of type 'SbgImuStatus"
  "e9a1bd33215fe69b9523e359cacbe127")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SbgImuStatus>)))
  "Returns full string definition for message of type '<SbgImuStatus>"
  (cl:format cl:nil "# SBG Ellipse Messages~%# Submessage SbgImuData~%~%# True if the communication with the IMU is ok.~%bool imu_com~%~%# True if internal IMU passes Built In Test (Calibration, CPU)~%bool imu_status~%~%# True if accelerometer X passes Built In Test~%bool imu_accel_x~%~%# True if accelerometer Y passes Built In Test~%bool imu_accel_y~%~%# True if accelerometer Z passes Built In Test~%bool imu_accel_z~%~%# True if gyroscope X passes Built In Test~%bool imu_gyro_x~%~%# True if gyroscope Y passes Built In Test~%bool imu_gyro_y~%~%# True if gyroscope Z passes Built In Test~%bool imu_gyro_z~%~%# True if accelerometers are within operating range~%bool imu_accels_in_range~%~%# True if gyroscopes are within operating range~%bool imu_gyros_in_range~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SbgImuStatus)))
  "Returns full string definition for message of type 'SbgImuStatus"
  (cl:format cl:nil "# SBG Ellipse Messages~%# Submessage SbgImuData~%~%# True if the communication with the IMU is ok.~%bool imu_com~%~%# True if internal IMU passes Built In Test (Calibration, CPU)~%bool imu_status~%~%# True if accelerometer X passes Built In Test~%bool imu_accel_x~%~%# True if accelerometer Y passes Built In Test~%bool imu_accel_y~%~%# True if accelerometer Z passes Built In Test~%bool imu_accel_z~%~%# True if gyroscope X passes Built In Test~%bool imu_gyro_x~%~%# True if gyroscope Y passes Built In Test~%bool imu_gyro_y~%~%# True if gyroscope Z passes Built In Test~%bool imu_gyro_z~%~%# True if accelerometers are within operating range~%bool imu_accels_in_range~%~%# True if gyroscopes are within operating range~%bool imu_gyros_in_range~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SbgImuStatus>))
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
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SbgImuStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'SbgImuStatus
    (cl:cons ':imu_com (imu_com msg))
    (cl:cons ':imu_status (imu_status msg))
    (cl:cons ':imu_accel_x (imu_accel_x msg))
    (cl:cons ':imu_accel_y (imu_accel_y msg))
    (cl:cons ':imu_accel_z (imu_accel_z msg))
    (cl:cons ':imu_gyro_x (imu_gyro_x msg))
    (cl:cons ':imu_gyro_y (imu_gyro_y msg))
    (cl:cons ':imu_gyro_z (imu_gyro_z msg))
    (cl:cons ':imu_accels_in_range (imu_accels_in_range msg))
    (cl:cons ':imu_gyros_in_range (imu_gyros_in_range msg))
))
