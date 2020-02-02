;; Auto-generated. Do not edit!


(when (boundp 'sbg_driver::SbgEkfQuat)
  (if (not (find-package "SBG_DRIVER"))
    (make-package "SBG_DRIVER"))
  (shadow 'SbgEkfQuat (find-package "SBG_DRIVER")))
(unless (find-package "SBG_DRIVER::SBGEKFQUAT")
  (make-package "SBG_DRIVER::SBGEKFQUAT"))

(in-package "ROS")
;;//! \htmlinclude SbgEkfQuat.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass sbg_driver::SbgEkfQuat
  :super ros::object
  :slots (_header _time_stamp _quaternion _accuracy _status ))

(defmethod sbg_driver::SbgEkfQuat
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:time_stamp __time_stamp) 0)
    ((:quaternion __quaternion) (instance geometry_msgs::Quaternion :init))
    ((:accuracy __accuracy) (instance geometry_msgs::Vector3 :init))
    ((:status __status) (instance sbg_driver::SbgEkfStatus :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _time_stamp (round __time_stamp))
   (setq _quaternion __quaternion)
   (setq _accuracy __accuracy)
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
  (:quaternion
   (&rest __quaternion)
   (if (keywordp (car __quaternion))
       (send* _quaternion __quaternion)
     (progn
       (if __quaternion (setq _quaternion (car __quaternion)))
       _quaternion)))
  (:accuracy
   (&rest __accuracy)
   (if (keywordp (car __accuracy))
       (send* _accuracy __accuracy)
     (progn
       (if __accuracy (setq _accuracy (car __accuracy)))
       _accuracy)))
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
    ;; geometry_msgs/Quaternion _quaternion
    (send _quaternion :serialization-length)
    ;; geometry_msgs/Vector3 _accuracy
    (send _accuracy :serialization-length)
    ;; sbg_driver/SbgEkfStatus _status
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
     ;; geometry_msgs/Quaternion _quaternion
       (send _quaternion :serialize s)
     ;; geometry_msgs/Vector3 _accuracy
       (send _accuracy :serialize s)
     ;; sbg_driver/SbgEkfStatus _status
       (send _status :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _time_stamp
     (setq _time_stamp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Quaternion _quaternion
     (send _quaternion :deserialize buf ptr-) (incf ptr- (send _quaternion :serialization-length))
   ;; geometry_msgs/Vector3 _accuracy
     (send _accuracy :deserialize buf ptr-) (incf ptr- (send _accuracy :serialization-length))
   ;; sbg_driver/SbgEkfStatus _status
     (send _status :deserialize buf ptr-) (incf ptr- (send _status :serialization-length))
   ;;
   self)
  )

(setf (get sbg_driver::SbgEkfQuat :md5sum-) "f1257400ac859ad475d8b651b008ba22")
(setf (get sbg_driver::SbgEkfQuat :datatype-) "sbg_driver/SbgEkfQuat")
(setf (get sbg_driver::SbgEkfQuat :definition-)
      "# SBG Ellipse Messages

Header header

#  Time since sensor is powered up us 
uint32 time_stamp

#  Quaternion parameter (ROS order X, Y, Z, W)
geometry_msgs/Quaternion quaternion

#  [Roll, Pitch, Yaw (heading)] angle accuracy (1 sigma) rad 
geometry_msgs/Vector3 accuracy

#  Global solution status
SbgEkfStatus status

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
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

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
MSG: sbg_driver/SbgEkfStatus
# SBG Ellipse Messages
# Submessage

# Defines the Kalman filter computation mode (see the table 4 below)
# 0 UNINITIALIZED	The Kalman filter is not initialized and the returned data are all invalid.
# 1 VERTICAL_GYRO	The Kalman filter only rely on a vertical reference to compute roll and pitch angles. Heading and navigation data drift freely.
# 2 AHRS			A heading reference is available, the Kalman filter provides full orientation but navigation data drift freely.
# 3 NAV_VELOCITY	The Kalman filter computes orientation and velocity. Position is freely integrated from velocity estimation.
# 4 NAV_POSITION	Nominal mode, the Kalman filter computes all parameters (attitude, velocity, position). Absolute position is provided. 
uint8 solution_mode 

# True if Attitude data is reliable (Roll/Pitch error < 0,5 deg)
bool attitude_valid

# True if Heading data is reliable (Heading error < 1 deg)
bool heading_valid

# True if Velocity data is reliable (velocity error < 1.5 m/s)
bool velocity_valid

# True if Position data is reliable (Position error < 10m)
bool position_valid

# True if vertical reference is used in solution (data used and valid since 3s)
bool vert_ref_used

# True if magnetometer is used in solution (data used and valid since 3s)
bool mag_ref_used

# True if GPS velocity is used in solution (data used and valid since 3s)
bool gps1_vel_used

# True if GPS Position is used in solution (data used and valid since 3s)
bool gps1_pos_used

# True if GPS Course is used in solution (data used and valid since 3s)
bool gps1_course_used

# True if GPS True Heading is used in solution (data used and valid since 3s)
bool gps1_hdt_used

# True if GPS2 velocity is used in solution (data used and valid since 3s)
bool gps2_vel_used

# True if GPS2 Position is used in solution (data used and valid since 3s)
bool gps2_pos_used

# True if GPS2 Course is used in solution (data used and valid since 3s)
bool gps2_course_used

# True if GPS2 True Heading is used in solution (data used and valid since 3s)
bool gps2_hdt_used

# True if Odometer is used in solution (data used and valid since 3s)
bool odo_used

")



(provide :sbg_driver/SbgEkfQuat "f1257400ac859ad475d8b651b008ba22")


