;; Auto-generated. Do not edit!


(when (boundp 'sbg_driver::SbgOdoVel)
  (if (not (find-package "SBG_DRIVER"))
    (make-package "SBG_DRIVER"))
  (shadow 'SbgOdoVel (find-package "SBG_DRIVER")))
(unless (find-package "SBG_DRIVER::SBGODOVEL")
  (make-package "SBG_DRIVER::SBGODOVEL"))

(in-package "ROS")
;;//! \htmlinclude SbgOdoVel.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass sbg_driver::SbgOdoVel
  :super ros::object
  :slots (_header _time_stamp _status _vel ))

(defmethod sbg_driver::SbgOdoVel
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:time_stamp __time_stamp) 0)
    ((:status __status) nil)
    ((:vel __vel) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _time_stamp (round __time_stamp))
   (setq _status __status)
   (setq _vel (float __vel))
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
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:vel
   (&optional __vel)
   (if __vel (setq _vel __vel)) _vel)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _time_stamp
    4
    ;; bool _status
    1
    ;; float32 _vel
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
     ;; bool _status
       (if _status (write-byte -1 s) (write-byte 0 s))
     ;; float32 _vel
       (sys::poke _vel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _time_stamp
     (setq _time_stamp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _status
     (setq _status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _vel
     (setq _vel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get sbg_driver::SbgOdoVel :md5sum-) "ee0121dfc0d070625fdfebb3cc97e732")
(setf (get sbg_driver::SbgOdoVel :datatype-) "sbg_driver/SbgOdoVel")
(setf (get sbg_driver::SbgOdoVel :definition-)
      "# SBG Ellipse Messages
Header header

# Time since sensor is powered up us 
uint32 time_stamp

# Real Measurement
# True if this log comes from a real pulse measurement
# False if it comes from a timeout
bool status

# Velocity in odometer direction (m/s)
float32 vel

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

")



(provide :sbg_driver/SbgOdoVel "ee0121dfc0d070625fdfebb3cc97e732")


