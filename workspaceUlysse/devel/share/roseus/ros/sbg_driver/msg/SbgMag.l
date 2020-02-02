;; Auto-generated. Do not edit!


(when (boundp 'sbg_driver::SbgMag)
  (if (not (find-package "SBG_DRIVER"))
    (make-package "SBG_DRIVER"))
  (shadow 'SbgMag (find-package "SBG_DRIVER")))
(unless (find-package "SBG_DRIVER::SBGMAG")
  (make-package "SBG_DRIVER::SBGMAG"))

(in-package "ROS")
;;//! \htmlinclude SbgMag.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass sbg_driver::SbgMag
  :super ros::object
  :slots (_header _time_stamp _mag _accel _status ))

(defmethod sbg_driver::SbgMag
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:time_stamp __time_stamp) 0)
    ((:mag __mag) (instance geometry_msgs::Vector3 :init))
    ((:accel __accel) (instance geometry_msgs::Vector3 :init))
    ((:status __status) (instance sbg_driver::SbgMagStatus :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _time_stamp (round __time_stamp))
   (setq _mag __mag)
   (setq _accel __accel)
   (setq _status __status)
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
  (:mag
   (&rest __mag)
   (if (keywordp (car __mag))
       (send* _mag __mag)
     (progn
       (if __mag (setq _mag (car __mag)))
       _mag)))
  (:accel
   (&rest __accel)
   (if (keywordp (car __accel))
       (send* _accel __accel)
     (progn
       (if __accel (setq _accel (car __accel)))
       _accel)))
  (:status
   (&rest __status)
   (if (keywordp (car __status))
       (send* _status __status)
     (progn
       (if __status (setq _status (car __status)))
       _status)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _time_stamp
    4
    ;; geometry_msgs/Vector3 _mag
    (send _mag :serialization-length)
    ;; geometry_msgs/Vector3 _accel
    (send _accel :serialization-length)
    ;; sbg_driver/SbgMagStatus _status
    (send _status :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _time_stamp
       (write-long _time_stamp s)
     ;; geometry_msgs/Vector3 _mag
       (send _mag :serialize s)
     ;; geometry_msgs/Vector3 _accel
       (send _accel :serialize s)
     ;; sbg_driver/SbgMagStatus _status
       (send _status :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _time_stamp
     (setq _time_stamp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Vector3 _mag
     (send _mag :deserialize buf ptr-) (incf ptr- (send _mag :serialization-length))
   ;; geometry_msgs/Vector3 _accel
     (send _accel :deserialize buf ptr-) (incf ptr- (send _accel :serialization-length))
   ;; sbg_driver/SbgMagStatus _status
     (send _status :deserialize buf ptr-) (incf ptr- (send _status :serialization-length))
   ;;
   self)
  )

(setf (get sbg_driver::SbgMag :md5sum-) "de7614c4cbb6cbd430c4a9b79bad88ca")
(setf (get sbg_driver::SbgMag :datatype-) "sbg_driver/SbgMag")
(setf (get sbg_driver::SbgMag :definition-)
      "# SBG Ellipse Messages
Header header

# Time since sensor is powered up (us)
uint32 time_stamp

# Magnetometer output (X, Y, Z)
geometry_msgs/Vector3 mag

# Accelerometer output (X, Y, Z) in m/s2
geometry_msgs/Vector3 accel

# Status
SbgMagStatus status

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
================================================================================
MSG: sbg_driver/SbgMagStatus
# SBG Ellipse Messages
# Submessage

# True if the magnetometer X has passed the self test.
bool mag_x

# True if the magnetometer Y has passed the self test.
bool mag_y

# True if the magnetometer Z has passed the self test.
bool mag_z

# True if the accelerometer X has passed the self test.
bool accel_x

# True if the accelerometer Y has passed the self test.
bool accel_y

# True if the accelerometer Z has passed the self test.
bool accel_z

# True if magnetometer is not saturated
bool mags_in_range

# True if accelerometer is not saturated
bool accels_in_range

# True if magnetometer seems to be calibrated
bool calibration

")



(provide :sbg_driver/SbgMag "de7614c4cbb6cbd430c4a9b79bad88ca")


