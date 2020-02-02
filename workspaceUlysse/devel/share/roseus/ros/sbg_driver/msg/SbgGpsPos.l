;; Auto-generated. Do not edit!


(when (boundp 'sbg_driver::SbgGpsPos)
  (if (not (find-package "SBG_DRIVER"))
    (make-package "SBG_DRIVER"))
  (shadow 'SbgGpsPos (find-package "SBG_DRIVER")))
(unless (find-package "SBG_DRIVER::SBGGPSPOS")
  (make-package "SBG_DRIVER::SBGGPSPOS"))

(in-package "ROS")
;;//! \htmlinclude SbgGpsPos.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass sbg_driver::SbgGpsPos
  :super ros::object
  :slots (_header _time_stamp _status _gps_tow _position _undulation _position_accuracy _num_sv_used _base_station_id _diff_age ))

(defmethod sbg_driver::SbgGpsPos
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:time_stamp __time_stamp) 0)
    ((:status __status) (instance sbg_driver::SbgGpsPosStatus :init))
    ((:gps_tow __gps_tow) 0)
    ((:position __position) (instance geometry_msgs::Vector3 :init))
    ((:undulation __undulation) 0.0)
    ((:position_accuracy __position_accuracy) (instance geometry_msgs::Vector3 :init))
    ((:num_sv_used __num_sv_used) 0)
    ((:base_station_id __base_station_id) 0)
    ((:diff_age __diff_age) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _time_stamp (round __time_stamp))
   (setq _status __status)
   (setq _gps_tow (round __gps_tow))
   (setq _position __position)
   (setq _undulation (float __undulation))
   (setq _position_accuracy __position_accuracy)
   (setq _num_sv_used (round __num_sv_used))
   (setq _base_station_id (round __base_station_id))
   (setq _diff_age (round __diff_age))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:time_stamp
   (&optional __time_stamp)
   (if __time_stamp (setq _time_stamp __time_stamp)) _time_stamp)
  (:status
   (&rest __status)
   (if (keywordp (car __status))
       (send* _status __status)
     (progn
       (if __status (setq _status (car __status)))
       _status)))
  (:gps_tow
   (&optional __gps_tow)
   (if __gps_tow (setq _gps_tow __gps_tow)) _gps_tow)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:undulation
   (&optional __undulation)
   (if __undulation (setq _undulation __undulation)) _undulation)
  (:position_accuracy
   (&rest __position_accuracy)
   (if (keywordp (car __position_accuracy))
       (send* _position_accuracy __position_accuracy)
     (progn
       (if __position_accuracy (setq _position_accuracy (car __position_accuracy)))
       _position_accuracy)))
  (:num_sv_used
   (&optional __num_sv_used)
   (if __num_sv_used (setq _num_sv_used __num_sv_used)) _num_sv_used)
  (:base_station_id
   (&optional __base_station_id)
   (if __base_station_id (setq _base_station_id __base_station_id)) _base_station_id)
  (:diff_age
   (&optional __diff_age)
   (if __diff_age (setq _diff_age __diff_age)) _diff_age)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _time_stamp
    4
    ;; sbg_driver/SbgGpsPosStatus _status
    (send _status :serialization-length)
    ;; uint32 _gps_tow
    4
    ;; geometry_msgs/Vector3 _position
    (send _position :serialization-length)
    ;; float32 _undulation
    4
    ;; geometry_msgs/Vector3 _position_accuracy
    (send _position_accuracy :serialization-length)
    ;; uint8 _num_sv_used
    1
    ;; uint16 _base_station_id
    2
    ;; uint16 _diff_age
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _time_stamp
       (write-long _time_stamp s)
     ;; sbg_driver/SbgGpsPosStatus _status
       (send _status :serialize s)
     ;; uint32 _gps_tow
       (write-long _gps_tow s)
     ;; geometry_msgs/Vector3 _position
       (send _position :serialize s)
     ;; float32 _undulation
       (sys::poke _undulation (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/Vector3 _position_accuracy
       (send _position_accuracy :serialize s)
     ;; uint8 _num_sv_used
       (write-byte _num_sv_used s)
     ;; uint16 _base_station_id
       (write-word _base_station_id s)
     ;; uint16 _diff_age
       (write-word _diff_age s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _time_stamp
     (setq _time_stamp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; sbg_driver/SbgGpsPosStatus _status
     (send _status :deserialize buf ptr-) (incf ptr- (send _status :serialization-length))
   ;; uint32 _gps_tow
     (setq _gps_tow (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Vector3 _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; float32 _undulation
     (setq _undulation (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/Vector3 _position_accuracy
     (send _position_accuracy :deserialize buf ptr-) (incf ptr- (send _position_accuracy :serialization-length))
   ;; uint8 _num_sv_used
     (setq _num_sv_used (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _base_station_id
     (setq _base_station_id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _diff_age
     (setq _diff_age (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get sbg_driver::SbgGpsPos :md5sum-) "3f04525840a4c319e4347070d082baf1")
(setf (get sbg_driver::SbgGpsPos :datatype-) "sbg_driver/SbgGpsPos")
(setf (get sbg_driver::SbgGpsPos :definition-)
      "# SBG Ellipse Messages
Header header

#  Time since sensor is powered up us 
uint32 time_stamp

# GPS position fix and status bitmask
SbgGpsPosStatus status

# GPS Time of Week ms
uint32 gps_tow

# [Latitude (positive North deg), Longitude (positive East deg), Altitude (Above Mean Sea Level m)]
geometry_msgs/Vector3 position

# Altitude difference between the geoid and the Ellipsoid (WGS-84 Altitude - MSL Altitude)
# (Height above Ellipsoid = altitude + undulation)
float32 undulation

# Latitude, Longitude, Vertical accuracy m (1 sigma)
geometry_msgs/Vector3 position_accuracy

# Number of space vehicles used in GNSS solution
uint8 num_sv_used

# ID of the DGPS/RTK base station in use
uint16 base_station_id

# Differential data age 0.01 s
uint16 diff_age

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: sbg_driver/SbgGpsPosStatus
# SBG Ellipse Messages
# Submessage


# The raw GPS position status
# 0 SOL_COMPUTED		A valid solution has been computed.
# 1 INSUFFICIENT_OBS 	Not enough valid SV to compute a solution.
# 2 INTERNAL_ERROR 		An internal error has occurred.
# 3 HEIGHT_LIMIT 		The height limit has been exceeded.
uint8 status

# The raw GPS position type
# 0 NO_SOLUTION		No valid solution available.
# 1 UNKNOWN_TYPE	An unknown solution type has been computed.
# 2 SINGLE			Single point solution position.
# 3 PSRDIFF			Standard Pseudorange Differential Solution (DGPS).
# 4 SBAS			SBAS satellite used for differential corrections.
# 5 OMNISTAR		Omnistar VBS Position (L1 sub-meter).
# 6 RTK_FLOAT		Floating RTK ambiguity solution (20 cms RTK).
# 7 RTK_INT			Integer RTK ambiguity solution (2 cms RTK).
# 8 PPP_FLOAT		Precise Point Positioning with float ambiguities
# 9 PPP_INT			Precise Point Positioning with fixed ambiguities
# 10 FIXED			Fixed location solution position
uint8 type

# True if GPS L1 is used in the solution
bool gps_l1_used

# True if GPS L2 is used in the solution
bool gps_l2_used

# True if GPS L5 is used in the solution
bool gps_l5_used

# True if GLONASS L1 is used in the solution
bool glo_l1_used

# True if GLONASS L2 is used in the solution
bool glo_l2_used

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :sbg_driver/SbgGpsPos "3f04525840a4c319e4347070d082baf1")


