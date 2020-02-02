; Auto-generated. Do not edit!


(cl:in-package sbg_driver-msg)


;//! \htmlinclude SbgShipMotionStatus.msg.html

(cl:defclass <SbgShipMotionStatus> (roslisp-msg-protocol:ros-message)
  ((heave_valid
    :reader heave_valid
    :initarg :heave_valid
    :type cl:boolean
    :initform cl:nil)
   (heave_vel_aided
    :reader heave_vel_aided
    :initarg :heave_vel_aided
    :type cl:boolean
    :initform cl:nil)
   (period_available
    :reader period_available
    :initarg :period_available
    :type cl:boolean
    :initform cl:nil)
   (period_valid
    :reader period_valid
    :initarg :period_valid
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SbgShipMotionStatus (<SbgShipMotionStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SbgShipMotionStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SbgShipMotionStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sbg_driver-msg:<SbgShipMotionStatus> is deprecated: use sbg_driver-msg:SbgShipMotionStatus instead.")))

(cl:ensure-generic-function 'heave_valid-val :lambda-list '(m))
(cl:defmethod heave_valid-val ((m <SbgShipMotionStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:heave_valid-val is deprecated.  Use sbg_driver-msg:heave_valid instead.")
  (heave_valid m))

(cl:ensure-generic-function 'heave_vel_aided-val :lambda-list '(m))
(cl:defmethod heave_vel_aided-val ((m <SbgShipMotionStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:heave_vel_aided-val is deprecated.  Use sbg_driver-msg:heave_vel_aided instead.")
  (heave_vel_aided m))

(cl:ensure-generic-function 'period_available-val :lambda-list '(m))
(cl:defmethod period_available-val ((m <SbgShipMotionStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:period_available-val is deprecated.  Use sbg_driver-msg:period_available instead.")
  (period_available m))

(cl:ensure-generic-function 'period_valid-val :lambda-list '(m))
(cl:defmethod period_valid-val ((m <SbgShipMotionStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:period_valid-val is deprecated.  Use sbg_driver-msg:period_valid instead.")
  (period_valid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SbgShipMotionStatus>) ostream)
  "Serializes a message object of type '<SbgShipMotionStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'heave_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'heave_vel_aided) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'period_available) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'period_valid) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SbgShipMotionStatus>) istream)
  "Deserializes a message object of type '<SbgShipMotionStatus>"
    (cl:setf (cl:slot-value msg 'heave_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'heave_vel_aided) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'period_available) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'period_valid) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SbgShipMotionStatus>)))
  "Returns string type for a message object of type '<SbgShipMotionStatus>"
  "sbg_driver/SbgShipMotionStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SbgShipMotionStatus)))
  "Returns string type for a message object of type 'SbgShipMotionStatus"
  "sbg_driver/SbgShipMotionStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SbgShipMotionStatus>)))
  "Returns md5sum for a message object of type '<SbgShipMotionStatus>"
  "a834637d2b283cc5378d30ef92fcf13a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SbgShipMotionStatus)))
  "Returns md5sum for a message object of type 'SbgShipMotionStatus"
  "a834637d2b283cc5378d30ef92fcf13a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SbgShipMotionStatus>)))
  "Returns full string definition for message of type '<SbgShipMotionStatus>"
  (cl:format cl:nil "# SBG Ellipse Messages~%# SbgShipMotionStatus~%~%# True after heave convergence time.~%# False in following conditions:~%# - Turn occurred and no velocity aiding is available~%# - Heave reached higher/lower limits~%# - If a step is detected and filter has to re-converge~%# - If internal failure~%bool heave_valid~%~%# True if heave output is compensated for transient accelerations~%bool heave_vel_aided~%~%# True if the swell period is provided in this output~%bool period_available~%~%# True if the period returned is assumed to be valid or not.~%bool period_valid~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SbgShipMotionStatus)))
  "Returns full string definition for message of type 'SbgShipMotionStatus"
  (cl:format cl:nil "# SBG Ellipse Messages~%# SbgShipMotionStatus~%~%# True after heave convergence time.~%# False in following conditions:~%# - Turn occurred and no velocity aiding is available~%# - Heave reached higher/lower limits~%# - If a step is detected and filter has to re-converge~%# - If internal failure~%bool heave_valid~%~%# True if heave output is compensated for transient accelerations~%bool heave_vel_aided~%~%# True if the swell period is provided in this output~%bool period_available~%~%# True if the period returned is assumed to be valid or not.~%bool period_valid~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SbgShipMotionStatus>))
  (cl:+ 0
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SbgShipMotionStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'SbgShipMotionStatus
    (cl:cons ':heave_valid (heave_valid msg))
    (cl:cons ':heave_vel_aided (heave_vel_aided msg))
    (cl:cons ':period_available (period_available msg))
    (cl:cons ':period_valid (period_valid msg))
))
