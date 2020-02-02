;; Auto-generated. Do not edit!


(when (boundp 'sbg_driver::SbgUtcTime)
  (if (not (find-package "SBG_DRIVER"))
    (make-package "SBG_DRIVER"))
  (shadow 'SbgUtcTime (find-package "SBG_DRIVER")))
(unless (find-package "SBG_DRIVER::SBGUTCTIME")
  (make-package "SBG_DRIVER::SBGUTCTIME"))

(in-package "ROS")
;;//! \htmlinclude SbgUtcTime.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass sbg_driver::SbgUtcTime
  :super ros::object
  :slots (_header _time_stamp _clock_status _year _month _day _hour _min _sec _nanosec _gps_tow ))

(defmethod sbg_driver::SbgUtcTime
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:time_stamp __time_stamp) 0)
    ((:clock_status __clock_status) (instance sbg_driver::SbgUtcTimeStatus :init))
    ((:year __year) 0)
    ((:month __month) 0)
    ((:day __day) 0)
    ((:hour __hour) 0)
    ((:min __min) 0)
    ((:sec __sec) 0)
    ((:nanosec __nanosec) 0)
    ((:gps_tow __gps_tow) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _time_stamp (round __time_stamp))
   (setq _clock_status __clock_status)
   (setq _year (round __year))
   (setq _month (round __month))
   (setq _day (round __day))
   (setq _hour (round __hour))
   (setq _min (round __min))
   (setq _sec (round __sec))
   (setq _nanosec (round __nanosec))
   (setq _gps_tow (round __gps_tow))
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
  (:clock_status
   (&rest __clock_status)
   (if (keywordp (car __clock_status))
       (send* _clock_status __clock_status)
     (progn
       (if __clock_status (setq _clock_status (car __clock_status)))
       _clock_status)))
  (:year
   (&optional __year)
   (if __year (setq _year __year)) _year)
  (:month
   (&optional __month)
   (if __month (setq _month __month)) _month)
  (:day
   (&optional __day)
   (if __day (setq _day __day)) _day)
  (:hour
   (&optional __hour)
   (if __hour (setq _hour __hour)) _hour)
  (:min
   (&optional __min)
   (if __min (setq _min __min)) _min)
  (:sec
   (&optional __sec)
   (if __sec (setq _sec __sec)) _sec)
  (:nanosec
   (&optional __nanosec)
   (if __nanosec (setq _nanosec __nanosec)) _nanosec)
  (:gps_tow
   (&optional __gps_tow)
   (if __gps_tow (setq _gps_tow __gps_tow)) _gps_tow)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _time_stamp
    4
    ;; sbg_driver/SbgUtcTimeStatus _clock_status
    (send _clock_status :serialization-length)
    ;; uint16 _year
    2
    ;; uint8 _month
    1
    ;; uint8 _day
    1
    ;; uint8 _hour
    1
    ;; uint8 _min
    1
    ;; uint8 _sec
    1
    ;; uint32 _nanosec
    4
    ;; uint32 _gps_tow
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _time_stamp
       (write-long _time_stamp s)
     ;; sbg_driver/SbgUtcTimeStatus _clock_status
       (send _clock_status :serialize s)
     ;; uint16 _year
       (write-word _year s)
     ;; uint8 _month
       (write-byte _month s)
     ;; uint8 _day
       (write-byte _day s)
     ;; uint8 _hour
       (write-byte _hour s)
     ;; uint8 _min
       (write-byte _min s)
     ;; uint8 _sec
       (write-byte _sec s)
     ;; uint32 _nanosec
       (write-long _nanosec s)
     ;; uint32 _gps_tow
       (write-long _gps_tow s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _time_stamp
     (setq _time_stamp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; sbg_driver/SbgUtcTimeStatus _clock_status
     (send _clock_status :deserialize buf ptr-) (incf ptr- (send _clock_status :serialization-length))
   ;; uint16 _year
     (setq _year (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _month
     (setq _month (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _day
     (setq _day (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _hour
     (setq _hour (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _min
     (setq _min (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _sec
     (setq _sec (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _nanosec
     (setq _nanosec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _gps_tow
     (setq _gps_tow (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get sbg_driver::SbgUtcTime :md5sum-) "89495f07708fa38e487b6509c4edabaa")
(setf (get sbg_driver::SbgUtcTime :datatype-) "sbg_driver/SbgUtcTime")
(setf (get sbg_driver::SbgUtcTime :definition-)
      "# SBG Ellipse Messages
Header header

# Time since sensor is powered up (us)
uint32 time_stamp

# General UTC time and clock sync status
SbgUtcTimeStatus clock_status

# Year
uint16 year

# Month in Year [1 ... 12]
uint8 month

# Day in Month [1 ... 31]
uint8 day

# Hour in day [0 ... 23]
uint8 hour

# Minute in hour [0 ... 59]
uint8 min

# Second in minute [0 ... 60], Note 60 is when a leap second is added.
uint8 sec

# Nanosecond of second.
uint32 nanosec

# GPS Time of week (ms)
uint32 gps_tow

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
MSG: sbg_driver/SbgUtcTimeStatus
# SBG Ellipse Messages

# True when a clock input can be used to synchronize the internal clock.
bool clock_stable

# Define the internal clock estimation status
# 0 An error has occurred on the clock estimation.
# 1 The clock is only based on the internal crystal.
# 2 A PPS has been detected and the clock is converging to it.
# 3 The clock has converged to the PPS and is within 500ns.
uint8 clock_status

# True if UTC time is synchronized with a PPS
bool clock_utc_sync

# UTC validity status
# 0 The UTC time is not known, we are just propagating the UTC time internally.
# 1 We have received valid UTC time information but we don't have the leap seconds information.
# 2 We have received valid UTC time data with valid leap seconds.
uint8 clock_utc_status
")



(provide :sbg_driver/SbgUtcTime "89495f07708fa38e487b6509c4edabaa")


