;; Auto-generated. Do not edit!


(when (boundp 'sbg_driver::SbgAirData)
  (if (not (find-package "SBG_DRIVER"))
    (make-package "SBG_DRIVER"))
  (shadow 'SbgAirData (find-package "SBG_DRIVER")))
(unless (find-package "SBG_DRIVER::SBGAIRDATA")
  (make-package "SBG_DRIVER::SBGAIRDATA"))

(in-package "ROS")
;;//! \htmlinclude SbgAirData.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass sbg_driver::SbgAirData
  :super ros::object
  :slots (_header _time_stamp _status _pressure_abs _altitude _pressure_diff _true_air_speed _air_temperature ))

(defmethod sbg_driver::SbgAirData
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:time_stamp __time_stamp) 0)
    ((:status __status) (instance sbg_driver::SbgAirDataStatus :init))
    ((:pressure_abs __pressure_abs) 0.0)
    ((:altitude __altitude) 0.0)
    ((:pressure_diff __pressure_diff) 0.0)
    ((:true_air_speed __true_air_speed) 0.0)
    ((:air_temperature __air_temperature) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _time_stamp (round __time_stamp))
   (setq _status __status)
   (setq _pressure_abs (float __pressure_abs))
   (setq _altitude (float __altitude))
   (setq _pressure_diff (float __pressure_diff))
   (setq _true_air_speed (float __true_air_speed))
   (setq _air_temperature (float __air_temperature))
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
  (:pressure_abs
   (&optional __pressure_abs)
   (if __pressure_abs (setq _pressure_abs __pressure_abs)) _pressure_abs)
  (:altitude
   (&optional __altitude)
   (if __altitude (setq _altitude __altitude)) _altitude)
  (:pressure_diff
   (&optional __pressure_diff)
   (if __pressure_diff (setq _pressure_diff __pressure_diff)) _pressure_diff)
  (:true_air_speed
   (&optional __true_air_speed)
   (if __true_air_speed (setq _true_air_speed __true_air_speed)) _true_air_speed)
  (:air_temperature
   (&optional __air_temperature)
   (if __air_temperature (setq _air_temperature __air_temperature)) _air_temperature)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _time_stamp
    4
    ;; sbg_driver/SbgAirDataStatus _status
    (send _status :serialization-length)
    ;; float64 _pressure_abs
    8
    ;; float64 _altitude
    8
    ;; float64 _pressure_diff
    8
    ;; float64 _true_air_speed
    8
    ;; float64 _air_temperature
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _time_stamp
       (write-long _time_stamp s)
     ;; sbg_driver/SbgAirDataStatus _status
       (send _status :serialize s)
     ;; float64 _pressure_abs
       (sys::poke _pressure_abs (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _altitude
       (sys::poke _altitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pressure_diff
       (sys::poke _pressure_diff (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _true_air_speed
       (sys::poke _true_air_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _air_temperature
       (sys::poke _air_temperature (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _time_stamp
     (setq _time_stamp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; sbg_driver/SbgAirDataStatus _status
     (send _status :deserialize buf ptr-) (incf ptr- (send _status :serialization-length))
   ;; float64 _pressure_abs
     (setq _pressure_abs (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _altitude
     (setq _altitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pressure_diff
     (setq _pressure_diff (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _true_air_speed
     (setq _true_air_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _air_temperature
     (setq _air_temperature (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get sbg_driver::SbgAirData :md5sum-) "f7982abc9b7165b89ea4d8dda93717f9")
(setf (get sbg_driver::SbgAirData :datatype-) "sbg_driver/SbgAirData")
(setf (get sbg_driver::SbgAirData :definition-)
      "# SBG Ellipse Messages
Header header

# Time since sensor is powered up micro s
uint32 time_stamp

# Airdata sensor status
SbgAirDataStatus status

# Raw absolute pressure measured by the barometer sensor in Pascals.
float64 pressure_abs

# Altitude computed from barometric altimeter in meters and positive upward.
float64 altitude

# Raw differential pressure measured by the pitot tube in Pascal.
float64 pressure_diff

# True airspeed measured by a pitot tube in m.s^-1 and positive forward.
float64 true_air_speed

# Outside air temperature in °C that could be used to compute true airspeed from differential pressure.
float64 air_temperature
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
MSG: sbg_driver/SbgAirDataStatus
# SBG Ellipse Messages
# Submessage

# True if the time stamp field represents a delay instead of an absolute time stamp.
bool is_delay_time

# True if the pressure field is filled and valid.
bool pressure_valid

# True if the barometric altitude field is filled and valid.
bool altitude_valid

# True if the differential pressure field is filled and valid.
bool pressure_diff_valid

# True if the true airspeed field is filled and valid.
bool air_speed_valid

# True if the output air temperature field is filled and valid.
bool air_temperature_valid
")



(provide :sbg_driver/SbgAirData "f7982abc9b7165b89ea4d8dda93717f9")


