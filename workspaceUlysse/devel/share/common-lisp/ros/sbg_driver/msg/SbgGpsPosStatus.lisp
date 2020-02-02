; Auto-generated. Do not edit!


(cl:in-package sbg_driver-msg)


;//! \htmlinclude SbgGpsPosStatus.msg.html

(cl:defclass <SbgGpsPosStatus> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (gps_l1_used
    :reader gps_l1_used
    :initarg :gps_l1_used
    :type cl:boolean
    :initform cl:nil)
   (gps_l2_used
    :reader gps_l2_used
    :initarg :gps_l2_used
    :type cl:boolean
    :initform cl:nil)
   (gps_l5_used
    :reader gps_l5_used
    :initarg :gps_l5_used
    :type cl:boolean
    :initform cl:nil)
   (glo_l1_used
    :reader glo_l1_used
    :initarg :glo_l1_used
    :type cl:boolean
    :initform cl:nil)
   (glo_l2_used
    :reader glo_l2_used
    :initarg :glo_l2_used
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SbgGpsPosStatus (<SbgGpsPosStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SbgGpsPosStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SbgGpsPosStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sbg_driver-msg:<SbgGpsPosStatus> is deprecated: use sbg_driver-msg:SbgGpsPosStatus instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <SbgGpsPosStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:status-val is deprecated.  Use sbg_driver-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <SbgGpsPosStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:type-val is deprecated.  Use sbg_driver-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'gps_l1_used-val :lambda-list '(m))
(cl:defmethod gps_l1_used-val ((m <SbgGpsPosStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:gps_l1_used-val is deprecated.  Use sbg_driver-msg:gps_l1_used instead.")
  (gps_l1_used m))

(cl:ensure-generic-function 'gps_l2_used-val :lambda-list '(m))
(cl:defmethod gps_l2_used-val ((m <SbgGpsPosStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:gps_l2_used-val is deprecated.  Use sbg_driver-msg:gps_l2_used instead.")
  (gps_l2_used m))

(cl:ensure-generic-function 'gps_l5_used-val :lambda-list '(m))
(cl:defmethod gps_l5_used-val ((m <SbgGpsPosStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:gps_l5_used-val is deprecated.  Use sbg_driver-msg:gps_l5_used instead.")
  (gps_l5_used m))

(cl:ensure-generic-function 'glo_l1_used-val :lambda-list '(m))
(cl:defmethod glo_l1_used-val ((m <SbgGpsPosStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:glo_l1_used-val is deprecated.  Use sbg_driver-msg:glo_l1_used instead.")
  (glo_l1_used m))

(cl:ensure-generic-function 'glo_l2_used-val :lambda-list '(m))
(cl:defmethod glo_l2_used-val ((m <SbgGpsPosStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:glo_l2_used-val is deprecated.  Use sbg_driver-msg:glo_l2_used instead.")
  (glo_l2_used m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SbgGpsPosStatus>) ostream)
  "Serializes a message object of type '<SbgGpsPosStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'gps_l1_used) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'gps_l2_used) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'gps_l5_used) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'glo_l1_used) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'glo_l2_used) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SbgGpsPosStatus>) istream)
  "Deserializes a message object of type '<SbgGpsPosStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gps_l1_used) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'gps_l2_used) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'gps_l5_used) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'glo_l1_used) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'glo_l2_used) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SbgGpsPosStatus>)))
  "Returns string type for a message object of type '<SbgGpsPosStatus>"
  "sbg_driver/SbgGpsPosStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SbgGpsPosStatus)))
  "Returns string type for a message object of type 'SbgGpsPosStatus"
  "sbg_driver/SbgGpsPosStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SbgGpsPosStatus>)))
  "Returns md5sum for a message object of type '<SbgGpsPosStatus>"
  "85506deb3699c6f0e87097da56884a7e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SbgGpsPosStatus)))
  "Returns md5sum for a message object of type 'SbgGpsPosStatus"
  "85506deb3699c6f0e87097da56884a7e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SbgGpsPosStatus>)))
  "Returns full string definition for message of type '<SbgGpsPosStatus>"
  (cl:format cl:nil "# SBG Ellipse Messages~%# Submessage~%~%~%# The raw GPS position status~%# 0 SOL_COMPUTED		A valid solution has been computed.~%# 1 INSUFFICIENT_OBS 	Not enough valid SV to compute a solution.~%# 2 INTERNAL_ERROR 		An internal error has occurred.~%# 3 HEIGHT_LIMIT 		The height limit has been exceeded.~%uint8 status~%~%# The raw GPS position type~%# 0 NO_SOLUTION		No valid solution available.~%# 1 UNKNOWN_TYPE	An unknown solution type has been computed.~%# 2 SINGLE			Single point solution position.~%# 3 PSRDIFF			Standard Pseudorange Differential Solution (DGPS).~%# 4 SBAS			SBAS satellite used for differential corrections.~%# 5 OMNISTAR		Omnistar VBS Position (L1 sub-meter).~%# 6 RTK_FLOAT		Floating RTK ambiguity solution (20 cms RTK).~%# 7 RTK_INT			Integer RTK ambiguity solution (2 cms RTK).~%# 8 PPP_FLOAT		Precise Point Positioning with float ambiguities~%# 9 PPP_INT			Precise Point Positioning with fixed ambiguities~%# 10 FIXED			Fixed location solution position~%uint8 type~%~%# True if GPS L1 is used in the solution~%bool gps_l1_used~%~%# True if GPS L2 is used in the solution~%bool gps_l2_used~%~%# True if GPS L5 is used in the solution~%bool gps_l5_used~%~%# True if GLONASS L1 is used in the solution~%bool glo_l1_used~%~%# True if GLONASS L2 is used in the solution~%bool glo_l2_used~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SbgGpsPosStatus)))
  "Returns full string definition for message of type 'SbgGpsPosStatus"
  (cl:format cl:nil "# SBG Ellipse Messages~%# Submessage~%~%~%# The raw GPS position status~%# 0 SOL_COMPUTED		A valid solution has been computed.~%# 1 INSUFFICIENT_OBS 	Not enough valid SV to compute a solution.~%# 2 INTERNAL_ERROR 		An internal error has occurred.~%# 3 HEIGHT_LIMIT 		The height limit has been exceeded.~%uint8 status~%~%# The raw GPS position type~%# 0 NO_SOLUTION		No valid solution available.~%# 1 UNKNOWN_TYPE	An unknown solution type has been computed.~%# 2 SINGLE			Single point solution position.~%# 3 PSRDIFF			Standard Pseudorange Differential Solution (DGPS).~%# 4 SBAS			SBAS satellite used for differential corrections.~%# 5 OMNISTAR		Omnistar VBS Position (L1 sub-meter).~%# 6 RTK_FLOAT		Floating RTK ambiguity solution (20 cms RTK).~%# 7 RTK_INT			Integer RTK ambiguity solution (2 cms RTK).~%# 8 PPP_FLOAT		Precise Point Positioning with float ambiguities~%# 9 PPP_INT			Precise Point Positioning with fixed ambiguities~%# 10 FIXED			Fixed location solution position~%uint8 type~%~%# True if GPS L1 is used in the solution~%bool gps_l1_used~%~%# True if GPS L2 is used in the solution~%bool gps_l2_used~%~%# True if GPS L5 is used in the solution~%bool gps_l5_used~%~%# True if GLONASS L1 is used in the solution~%bool glo_l1_used~%~%# True if GLONASS L2 is used in the solution~%bool glo_l2_used~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SbgGpsPosStatus>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SbgGpsPosStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'SbgGpsPosStatus
    (cl:cons ':status (status msg))
    (cl:cons ':type (type msg))
    (cl:cons ':gps_l1_used (gps_l1_used msg))
    (cl:cons ':gps_l2_used (gps_l2_used msg))
    (cl:cons ':gps_l5_used (gps_l5_used msg))
    (cl:cons ':glo_l1_used (glo_l1_used msg))
    (cl:cons ':glo_l2_used (glo_l2_used msg))
))
