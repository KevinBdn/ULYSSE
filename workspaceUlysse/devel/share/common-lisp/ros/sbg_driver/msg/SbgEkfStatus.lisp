; Auto-generated. Do not edit!


(cl:in-package sbg_driver-msg)


;//! \htmlinclude SbgEkfStatus.msg.html

(cl:defclass <SbgEkfStatus> (roslisp-msg-protocol:ros-message)
  ((solution_mode
    :reader solution_mode
    :initarg :solution_mode
    :type cl:fixnum
    :initform 0)
   (attitude_valid
    :reader attitude_valid
    :initarg :attitude_valid
    :type cl:boolean
    :initform cl:nil)
   (heading_valid
    :reader heading_valid
    :initarg :heading_valid
    :type cl:boolean
    :initform cl:nil)
   (velocity_valid
    :reader velocity_valid
    :initarg :velocity_valid
    :type cl:boolean
    :initform cl:nil)
   (position_valid
    :reader position_valid
    :initarg :position_valid
    :type cl:boolean
    :initform cl:nil)
   (vert_ref_used
    :reader vert_ref_used
    :initarg :vert_ref_used
    :type cl:boolean
    :initform cl:nil)
   (mag_ref_used
    :reader mag_ref_used
    :initarg :mag_ref_used
    :type cl:boolean
    :initform cl:nil)
   (gps1_vel_used
    :reader gps1_vel_used
    :initarg :gps1_vel_used
    :type cl:boolean
    :initform cl:nil)
   (gps1_pos_used
    :reader gps1_pos_used
    :initarg :gps1_pos_used
    :type cl:boolean
    :initform cl:nil)
   (gps1_course_used
    :reader gps1_course_used
    :initarg :gps1_course_used
    :type cl:boolean
    :initform cl:nil)
   (gps1_hdt_used
    :reader gps1_hdt_used
    :initarg :gps1_hdt_used
    :type cl:boolean
    :initform cl:nil)
   (gps2_vel_used
    :reader gps2_vel_used
    :initarg :gps2_vel_used
    :type cl:boolean
    :initform cl:nil)
   (gps2_pos_used
    :reader gps2_pos_used
    :initarg :gps2_pos_used
    :type cl:boolean
    :initform cl:nil)
   (gps2_course_used
    :reader gps2_course_used
    :initarg :gps2_course_used
    :type cl:boolean
    :initform cl:nil)
   (gps2_hdt_used
    :reader gps2_hdt_used
    :initarg :gps2_hdt_used
    :type cl:boolean
    :initform cl:nil)
   (odo_used
    :reader odo_used
    :initarg :odo_used
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SbgEkfStatus (<SbgEkfStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SbgEkfStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SbgEkfStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sbg_driver-msg:<SbgEkfStatus> is deprecated: use sbg_driver-msg:SbgEkfStatus instead.")))

(cl:ensure-generic-function 'solution_mode-val :lambda-list '(m))
(cl:defmethod solution_mode-val ((m <SbgEkfStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:solution_mode-val is deprecated.  Use sbg_driver-msg:solution_mode instead.")
  (solution_mode m))

(cl:ensure-generic-function 'attitude_valid-val :lambda-list '(m))
(cl:defmethod attitude_valid-val ((m <SbgEkfStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:attitude_valid-val is deprecated.  Use sbg_driver-msg:attitude_valid instead.")
  (attitude_valid m))

(cl:ensure-generic-function 'heading_valid-val :lambda-list '(m))
(cl:defmethod heading_valid-val ((m <SbgEkfStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:heading_valid-val is deprecated.  Use sbg_driver-msg:heading_valid instead.")
  (heading_valid m))

(cl:ensure-generic-function 'velocity_valid-val :lambda-list '(m))
(cl:defmethod velocity_valid-val ((m <SbgEkfStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:velocity_valid-val is deprecated.  Use sbg_driver-msg:velocity_valid instead.")
  (velocity_valid m))

(cl:ensure-generic-function 'position_valid-val :lambda-list '(m))
(cl:defmethod position_valid-val ((m <SbgEkfStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:position_valid-val is deprecated.  Use sbg_driver-msg:position_valid instead.")
  (position_valid m))

(cl:ensure-generic-function 'vert_ref_used-val :lambda-list '(m))
(cl:defmethod vert_ref_used-val ((m <SbgEkfStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:vert_ref_used-val is deprecated.  Use sbg_driver-msg:vert_ref_used instead.")
  (vert_ref_used m))

(cl:ensure-generic-function 'mag_ref_used-val :lambda-list '(m))
(cl:defmethod mag_ref_used-val ((m <SbgEkfStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:mag_ref_used-val is deprecated.  Use sbg_driver-msg:mag_ref_used instead.")
  (mag_ref_used m))

(cl:ensure-generic-function 'gps1_vel_used-val :lambda-list '(m))
(cl:defmethod gps1_vel_used-val ((m <SbgEkfStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:gps1_vel_used-val is deprecated.  Use sbg_driver-msg:gps1_vel_used instead.")
  (gps1_vel_used m))

(cl:ensure-generic-function 'gps1_pos_used-val :lambda-list '(m))
(cl:defmethod gps1_pos_used-val ((m <SbgEkfStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:gps1_pos_used-val is deprecated.  Use sbg_driver-msg:gps1_pos_used instead.")
  (gps1_pos_used m))

(cl:ensure-generic-function 'gps1_course_used-val :lambda-list '(m))
(cl:defmethod gps1_course_used-val ((m <SbgEkfStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:gps1_course_used-val is deprecated.  Use sbg_driver-msg:gps1_course_used instead.")
  (gps1_course_used m))

(cl:ensure-generic-function 'gps1_hdt_used-val :lambda-list '(m))
(cl:defmethod gps1_hdt_used-val ((m <SbgEkfStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:gps1_hdt_used-val is deprecated.  Use sbg_driver-msg:gps1_hdt_used instead.")
  (gps1_hdt_used m))

(cl:ensure-generic-function 'gps2_vel_used-val :lambda-list '(m))
(cl:defmethod gps2_vel_used-val ((m <SbgEkfStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:gps2_vel_used-val is deprecated.  Use sbg_driver-msg:gps2_vel_used instead.")
  (gps2_vel_used m))

(cl:ensure-generic-function 'gps2_pos_used-val :lambda-list '(m))
(cl:defmethod gps2_pos_used-val ((m <SbgEkfStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:gps2_pos_used-val is deprecated.  Use sbg_driver-msg:gps2_pos_used instead.")
  (gps2_pos_used m))

(cl:ensure-generic-function 'gps2_course_used-val :lambda-list '(m))
(cl:defmethod gps2_course_used-val ((m <SbgEkfStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:gps2_course_used-val is deprecated.  Use sbg_driver-msg:gps2_course_used instead.")
  (gps2_course_used m))

(cl:ensure-generic-function 'gps2_hdt_used-val :lambda-list '(m))
(cl:defmethod gps2_hdt_used-val ((m <SbgEkfStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:gps2_hdt_used-val is deprecated.  Use sbg_driver-msg:gps2_hdt_used instead.")
  (gps2_hdt_used m))

(cl:ensure-generic-function 'odo_used-val :lambda-list '(m))
(cl:defmethod odo_used-val ((m <SbgEkfStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:odo_used-val is deprecated.  Use sbg_driver-msg:odo_used instead.")
  (odo_used m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SbgEkfStatus>) ostream)
  "Serializes a message object of type '<SbgEkfStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'solution_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'attitude_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'heading_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'velocity_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'position_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'vert_ref_used) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'mag_ref_used) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'gps1_vel_used) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'gps1_pos_used) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'gps1_course_used) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'gps1_hdt_used) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'gps2_vel_used) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'gps2_pos_used) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'gps2_course_used) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'gps2_hdt_used) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'odo_used) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SbgEkfStatus>) istream)
  "Deserializes a message object of type '<SbgEkfStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'solution_mode)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'attitude_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'heading_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'velocity_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'position_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'vert_ref_used) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'mag_ref_used) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'gps1_vel_used) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'gps1_pos_used) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'gps1_course_used) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'gps1_hdt_used) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'gps2_vel_used) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'gps2_pos_used) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'gps2_course_used) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'gps2_hdt_used) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'odo_used) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SbgEkfStatus>)))
  "Returns string type for a message object of type '<SbgEkfStatus>"
  "sbg_driver/SbgEkfStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SbgEkfStatus)))
  "Returns string type for a message object of type 'SbgEkfStatus"
  "sbg_driver/SbgEkfStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SbgEkfStatus>)))
  "Returns md5sum for a message object of type '<SbgEkfStatus>"
  "779a904443daf8f46a24dc18bd3bbedb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SbgEkfStatus)))
  "Returns md5sum for a message object of type 'SbgEkfStatus"
  "779a904443daf8f46a24dc18bd3bbedb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SbgEkfStatus>)))
  "Returns full string definition for message of type '<SbgEkfStatus>"
  (cl:format cl:nil "# SBG Ellipse Messages~%# Submessage~%~%# Defines the Kalman filter computation mode (see the table 4 below)~%# 0 UNINITIALIZED	The Kalman filter is not initialized and the returned data are all invalid.~%# 1 VERTICAL_GYRO	The Kalman filter only rely on a vertical reference to compute roll and pitch angles. Heading and navigation data drift freely.~%# 2 AHRS			A heading reference is available, the Kalman filter provides full orientation but navigation data drift freely.~%# 3 NAV_VELOCITY	The Kalman filter computes orientation and velocity. Position is freely integrated from velocity estimation.~%# 4 NAV_POSITION	Nominal mode, the Kalman filter computes all parameters (attitude, velocity, position). Absolute position is provided. ~%uint8 solution_mode ~%~%# True if Attitude data is reliable (Roll/Pitch error < 0,5 deg)~%bool attitude_valid~%~%# True if Heading data is reliable (Heading error < 1 deg)~%bool heading_valid~%~%# True if Velocity data is reliable (velocity error < 1.5 m/s)~%bool velocity_valid~%~%# True if Position data is reliable (Position error < 10m)~%bool position_valid~%~%# True if vertical reference is used in solution (data used and valid since 3s)~%bool vert_ref_used~%~%# True if magnetometer is used in solution (data used and valid since 3s)~%bool mag_ref_used~%~%# True if GPS velocity is used in solution (data used and valid since 3s)~%bool gps1_vel_used~%~%# True if GPS Position is used in solution (data used and valid since 3s)~%bool gps1_pos_used~%~%# True if GPS Course is used in solution (data used and valid since 3s)~%bool gps1_course_used~%~%# True if GPS True Heading is used in solution (data used and valid since 3s)~%bool gps1_hdt_used~%~%# True if GPS2 velocity is used in solution (data used and valid since 3s)~%bool gps2_vel_used~%~%# True if GPS2 Position is used in solution (data used and valid since 3s)~%bool gps2_pos_used~%~%# True if GPS2 Course is used in solution (data used and valid since 3s)~%bool gps2_course_used~%~%# True if GPS2 True Heading is used in solution (data used and valid since 3s)~%bool gps2_hdt_used~%~%# True if Odometer is used in solution (data used and valid since 3s)~%bool odo_used~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SbgEkfStatus)))
  "Returns full string definition for message of type 'SbgEkfStatus"
  (cl:format cl:nil "# SBG Ellipse Messages~%# Submessage~%~%# Defines the Kalman filter computation mode (see the table 4 below)~%# 0 UNINITIALIZED	The Kalman filter is not initialized and the returned data are all invalid.~%# 1 VERTICAL_GYRO	The Kalman filter only rely on a vertical reference to compute roll and pitch angles. Heading and navigation data drift freely.~%# 2 AHRS			A heading reference is available, the Kalman filter provides full orientation but navigation data drift freely.~%# 3 NAV_VELOCITY	The Kalman filter computes orientation and velocity. Position is freely integrated from velocity estimation.~%# 4 NAV_POSITION	Nominal mode, the Kalman filter computes all parameters (attitude, velocity, position). Absolute position is provided. ~%uint8 solution_mode ~%~%# True if Attitude data is reliable (Roll/Pitch error < 0,5 deg)~%bool attitude_valid~%~%# True if Heading data is reliable (Heading error < 1 deg)~%bool heading_valid~%~%# True if Velocity data is reliable (velocity error < 1.5 m/s)~%bool velocity_valid~%~%# True if Position data is reliable (Position error < 10m)~%bool position_valid~%~%# True if vertical reference is used in solution (data used and valid since 3s)~%bool vert_ref_used~%~%# True if magnetometer is used in solution (data used and valid since 3s)~%bool mag_ref_used~%~%# True if GPS velocity is used in solution (data used and valid since 3s)~%bool gps1_vel_used~%~%# True if GPS Position is used in solution (data used and valid since 3s)~%bool gps1_pos_used~%~%# True if GPS Course is used in solution (data used and valid since 3s)~%bool gps1_course_used~%~%# True if GPS True Heading is used in solution (data used and valid since 3s)~%bool gps1_hdt_used~%~%# True if GPS2 velocity is used in solution (data used and valid since 3s)~%bool gps2_vel_used~%~%# True if GPS2 Position is used in solution (data used and valid since 3s)~%bool gps2_pos_used~%~%# True if GPS2 Course is used in solution (data used and valid since 3s)~%bool gps2_course_used~%~%# True if GPS2 True Heading is used in solution (data used and valid since 3s)~%bool gps2_hdt_used~%~%# True if Odometer is used in solution (data used and valid since 3s)~%bool odo_used~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SbgEkfStatus>))
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
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SbgEkfStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'SbgEkfStatus
    (cl:cons ':solution_mode (solution_mode msg))
    (cl:cons ':attitude_valid (attitude_valid msg))
    (cl:cons ':heading_valid (heading_valid msg))
    (cl:cons ':velocity_valid (velocity_valid msg))
    (cl:cons ':position_valid (position_valid msg))
    (cl:cons ':vert_ref_used (vert_ref_used msg))
    (cl:cons ':mag_ref_used (mag_ref_used msg))
    (cl:cons ':gps1_vel_used (gps1_vel_used msg))
    (cl:cons ':gps1_pos_used (gps1_pos_used msg))
    (cl:cons ':gps1_course_used (gps1_course_used msg))
    (cl:cons ':gps1_hdt_used (gps1_hdt_used msg))
    (cl:cons ':gps2_vel_used (gps2_vel_used msg))
    (cl:cons ':gps2_pos_used (gps2_pos_used msg))
    (cl:cons ':gps2_course_used (gps2_course_used msg))
    (cl:cons ':gps2_hdt_used (gps2_hdt_used msg))
    (cl:cons ':odo_used (odo_used msg))
))
