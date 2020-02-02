; Auto-generated. Do not edit!


(cl:in-package sbg_driver-msg)


;//! \htmlinclude SbgGpsPos.msg.html

(cl:defclass <SbgGpsPos> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (time_stamp
    :reader time_stamp
    :initarg :time_stamp
    :type cl:integer
    :initform 0)
   (status
    :reader status
    :initarg :status
    :type sbg_driver-msg:SbgGpsPosStatus
    :initform (cl:make-instance 'sbg_driver-msg:SbgGpsPosStatus))
   (gps_tow
    :reader gps_tow
    :initarg :gps_tow
    :type cl:integer
    :initform 0)
   (position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (undulation
    :reader undulation
    :initarg :undulation
    :type cl:float
    :initform 0.0)
   (position_accuracy
    :reader position_accuracy
    :initarg :position_accuracy
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (num_sv_used
    :reader num_sv_used
    :initarg :num_sv_used
    :type cl:fixnum
    :initform 0)
   (base_station_id
    :reader base_station_id
    :initarg :base_station_id
    :type cl:fixnum
    :initform 0)
   (diff_age
    :reader diff_age
    :initarg :diff_age
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SbgGpsPos (<SbgGpsPos>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SbgGpsPos>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SbgGpsPos)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sbg_driver-msg:<SbgGpsPos> is deprecated: use sbg_driver-msg:SbgGpsPos instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SbgGpsPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:header-val is deprecated.  Use sbg_driver-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'time_stamp-val :lambda-list '(m))
(cl:defmethod time_stamp-val ((m <SbgGpsPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:time_stamp-val is deprecated.  Use sbg_driver-msg:time_stamp instead.")
  (time_stamp m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <SbgGpsPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:status-val is deprecated.  Use sbg_driver-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'gps_tow-val :lambda-list '(m))
(cl:defmethod gps_tow-val ((m <SbgGpsPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:gps_tow-val is deprecated.  Use sbg_driver-msg:gps_tow instead.")
  (gps_tow m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <SbgGpsPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:position-val is deprecated.  Use sbg_driver-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'undulation-val :lambda-list '(m))
(cl:defmethod undulation-val ((m <SbgGpsPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:undulation-val is deprecated.  Use sbg_driver-msg:undulation instead.")
  (undulation m))

(cl:ensure-generic-function 'position_accuracy-val :lambda-list '(m))
(cl:defmethod position_accuracy-val ((m <SbgGpsPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:position_accuracy-val is deprecated.  Use sbg_driver-msg:position_accuracy instead.")
  (position_accuracy m))

(cl:ensure-generic-function 'num_sv_used-val :lambda-list '(m))
(cl:defmethod num_sv_used-val ((m <SbgGpsPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:num_sv_used-val is deprecated.  Use sbg_driver-msg:num_sv_used instead.")
  (num_sv_used m))

(cl:ensure-generic-function 'base_station_id-val :lambda-list '(m))
(cl:defmethod base_station_id-val ((m <SbgGpsPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:base_station_id-val is deprecated.  Use sbg_driver-msg:base_station_id instead.")
  (base_station_id m))

(cl:ensure-generic-function 'diff_age-val :lambda-list '(m))
(cl:defmethod diff_age-val ((m <SbgGpsPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:diff_age-val is deprecated.  Use sbg_driver-msg:diff_age instead.")
  (diff_age m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SbgGpsPos>) ostream)
  "Serializes a message object of type '<SbgGpsPos>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time_stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time_stamp)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'status) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gps_tow)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'gps_tow)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'gps_tow)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'gps_tow)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'undulation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position_accuracy) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_sv_used)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'base_station_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'base_station_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'diff_age)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'diff_age)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SbgGpsPos>) istream)
  "Deserializes a message object of type '<SbgGpsPos>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time_stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time_stamp)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'status) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gps_tow)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'gps_tow)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'gps_tow)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'gps_tow)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'undulation) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position_accuracy) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_sv_used)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'base_station_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'base_station_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'diff_age)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'diff_age)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SbgGpsPos>)))
  "Returns string type for a message object of type '<SbgGpsPos>"
  "sbg_driver/SbgGpsPos")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SbgGpsPos)))
  "Returns string type for a message object of type 'SbgGpsPos"
  "sbg_driver/SbgGpsPos")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SbgGpsPos>)))
  "Returns md5sum for a message object of type '<SbgGpsPos>"
  "3f04525840a4c319e4347070d082baf1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SbgGpsPos)))
  "Returns md5sum for a message object of type 'SbgGpsPos"
  "3f04525840a4c319e4347070d082baf1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SbgGpsPos>)))
  "Returns full string definition for message of type '<SbgGpsPos>"
  (cl:format cl:nil "# SBG Ellipse Messages~%Header header~%~%#  Time since sensor is powered up us ~%uint32 time_stamp~%~%# GPS position fix and status bitmask~%SbgGpsPosStatus status~%~%# GPS Time of Week ms~%uint32 gps_tow~%~%# [Latitude (positive North deg), Longitude (positive East deg), Altitude (Above Mean Sea Level m)]~%geometry_msgs/Vector3 position~%~%# Altitude difference between the geoid and the Ellipsoid (WGS-84 Altitude - MSL Altitude)~%# (Height above Ellipsoid = altitude + undulation)~%float32 undulation~%~%# Latitude, Longitude, Vertical accuracy m (1 sigma)~%geometry_msgs/Vector3 position_accuracy~%~%# Number of space vehicles used in GNSS solution~%uint8 num_sv_used~%~%# ID of the DGPS/RTK base station in use~%uint16 base_station_id~%~%# Differential data age 0.01 s~%uint16 diff_age~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sbg_driver/SbgGpsPosStatus~%# SBG Ellipse Messages~%# Submessage~%~%~%# The raw GPS position status~%# 0 SOL_COMPUTED		A valid solution has been computed.~%# 1 INSUFFICIENT_OBS 	Not enough valid SV to compute a solution.~%# 2 INTERNAL_ERROR 		An internal error has occurred.~%# 3 HEIGHT_LIMIT 		The height limit has been exceeded.~%uint8 status~%~%# The raw GPS position type~%# 0 NO_SOLUTION		No valid solution available.~%# 1 UNKNOWN_TYPE	An unknown solution type has been computed.~%# 2 SINGLE			Single point solution position.~%# 3 PSRDIFF			Standard Pseudorange Differential Solution (DGPS).~%# 4 SBAS			SBAS satellite used for differential corrections.~%# 5 OMNISTAR		Omnistar VBS Position (L1 sub-meter).~%# 6 RTK_FLOAT		Floating RTK ambiguity solution (20 cms RTK).~%# 7 RTK_INT			Integer RTK ambiguity solution (2 cms RTK).~%# 8 PPP_FLOAT		Precise Point Positioning with float ambiguities~%# 9 PPP_INT			Precise Point Positioning with fixed ambiguities~%# 10 FIXED			Fixed location solution position~%uint8 type~%~%# True if GPS L1 is used in the solution~%bool gps_l1_used~%~%# True if GPS L2 is used in the solution~%bool gps_l2_used~%~%# True if GPS L5 is used in the solution~%bool gps_l5_used~%~%# True if GLONASS L1 is used in the solution~%bool glo_l1_used~%~%# True if GLONASS L2 is used in the solution~%bool glo_l2_used~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SbgGpsPos)))
  "Returns full string definition for message of type 'SbgGpsPos"
  (cl:format cl:nil "# SBG Ellipse Messages~%Header header~%~%#  Time since sensor is powered up us ~%uint32 time_stamp~%~%# GPS position fix and status bitmask~%SbgGpsPosStatus status~%~%# GPS Time of Week ms~%uint32 gps_tow~%~%# [Latitude (positive North deg), Longitude (positive East deg), Altitude (Above Mean Sea Level m)]~%geometry_msgs/Vector3 position~%~%# Altitude difference between the geoid and the Ellipsoid (WGS-84 Altitude - MSL Altitude)~%# (Height above Ellipsoid = altitude + undulation)~%float32 undulation~%~%# Latitude, Longitude, Vertical accuracy m (1 sigma)~%geometry_msgs/Vector3 position_accuracy~%~%# Number of space vehicles used in GNSS solution~%uint8 num_sv_used~%~%# ID of the DGPS/RTK base station in use~%uint16 base_station_id~%~%# Differential data age 0.01 s~%uint16 diff_age~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sbg_driver/SbgGpsPosStatus~%# SBG Ellipse Messages~%# Submessage~%~%~%# The raw GPS position status~%# 0 SOL_COMPUTED		A valid solution has been computed.~%# 1 INSUFFICIENT_OBS 	Not enough valid SV to compute a solution.~%# 2 INTERNAL_ERROR 		An internal error has occurred.~%# 3 HEIGHT_LIMIT 		The height limit has been exceeded.~%uint8 status~%~%# The raw GPS position type~%# 0 NO_SOLUTION		No valid solution available.~%# 1 UNKNOWN_TYPE	An unknown solution type has been computed.~%# 2 SINGLE			Single point solution position.~%# 3 PSRDIFF			Standard Pseudorange Differential Solution (DGPS).~%# 4 SBAS			SBAS satellite used for differential corrections.~%# 5 OMNISTAR		Omnistar VBS Position (L1 sub-meter).~%# 6 RTK_FLOAT		Floating RTK ambiguity solution (20 cms RTK).~%# 7 RTK_INT			Integer RTK ambiguity solution (2 cms RTK).~%# 8 PPP_FLOAT		Precise Point Positioning with float ambiguities~%# 9 PPP_INT			Precise Point Positioning with fixed ambiguities~%# 10 FIXED			Fixed location solution position~%uint8 type~%~%# True if GPS L1 is used in the solution~%bool gps_l1_used~%~%# True if GPS L2 is used in the solution~%bool gps_l2_used~%~%# True if GPS L5 is used in the solution~%bool gps_l5_used~%~%# True if GLONASS L1 is used in the solution~%bool glo_l1_used~%~%# True if GLONASS L2 is used in the solution~%bool glo_l2_used~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SbgGpsPos>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'status))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position_accuracy))
     1
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SbgGpsPos>))
  "Converts a ROS message object to a list"
  (cl:list 'SbgGpsPos
    (cl:cons ':header (header msg))
    (cl:cons ':time_stamp (time_stamp msg))
    (cl:cons ':status (status msg))
    (cl:cons ':gps_tow (gps_tow msg))
    (cl:cons ':position (position msg))
    (cl:cons ':undulation (undulation msg))
    (cl:cons ':position_accuracy (position_accuracy msg))
    (cl:cons ':num_sv_used (num_sv_used msg))
    (cl:cons ':base_station_id (base_station_id msg))
    (cl:cons ':diff_age (diff_age msg))
))
