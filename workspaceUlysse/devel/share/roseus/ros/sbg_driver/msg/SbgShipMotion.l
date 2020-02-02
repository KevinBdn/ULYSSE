;; Auto-generated. Do not edit!


(when (boundp 'sbg_driver::SbgShipMotion)
  (if (not (find-package "SBG_DRIVER"))
    (make-package "SBG_DRIVER"))
  (shadow 'SbgShipMotion (find-package "SBG_DRIVER")))
(unless (find-package "SBG_DRIVER::SBGSHIPMOTION")
  (make-package "SBG_DRIVER::SBGSHIPMOTION"))

(in-package "ROS")
;;//! \htmlinclude SbgShipMotion.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass sbg_driver::SbgShipMotion
  :super ros::object
  :slots (_header _time_stamp _heave_period _ship_motion _acceleration _velocity _status ))

(defmethod sbg_driver::SbgShipMotion
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:time_stamp __time_stamp) 0)
    ((:heave_period __heave_period) 0)
    ((:ship_motion __ship_motion) (instance geometry_msgs::Vector3 :init))
    ((:acceleration __acceleration) (instance geometry_msgs::Vector3 :init))
    ((:velocity __velocity) (instance geometry_msgs::Vector3 :init))
    ((:status __status) (instance sbg_driver::SbgShipMotionStatus :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _time_stamp (round __time_stamp))
   (setq _heave_period (round __heave_period))
   (setq _ship_motion __ship_motion)
   (setq _acceleration __acceleration)
   (setq _velocity __velocity)
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
  (:heave_period
   (&optional __heave_period)
   (if __heave_period (setq _heave_period __heave_period)) _heave_period)
  (:ship_motion
   (&rest __ship_motion)
   (if (keywordp (car __ship_motion))
       (send* _ship_motion __ship_motion)
     (progn
       (if __ship_motion (setq _ship_motion (car __ship_motion)))
       _ship_motion)))
  (:acceleration
   (&rest __acceleration)
   (if (keywordp (car __acceleration))
       (send* _acceleration __acceleration)
     (progn
       (if __acceleration (setq _acceleration (car __acceleration)))
       _acceleration)))
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
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
    ;; uint16 _heave_period
    2
    ;; geometry_msgs/Vector3 _ship_motion
    (send _ship_motion :serialization-length)
    ;; geometry_msgs/Vector3 _acceleration
    (send _acceleration :serialization-length)
    ;; geometry_msgs/Vector3 _velocity
    (send _velocity :serialization-length)
    ;; sbg_driver/SbgShipMotionStatus _status
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
     ;; uint16 _heave_period
       (write-word _heave_period s)
     ;; geometry_msgs/Vector3 _ship_motion
       (send _ship_motion :serialize s)
     ;; geometry_msgs/Vector3 _acceleration
       (send _acceleration :serialize s)
     ;; geometry_msgs/Vector3 _velocity
       (send _velocity :serialize s)
     ;; sbg_driver/SbgShipMotionStatus _status
       (send _status :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _time_stamp
     (setq _time_stamp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _heave_period
     (setq _heave_period (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; geometry_msgs/Vector3 _ship_motion
     (send _ship_motion :deserialize buf ptr-) (incf ptr- (send _ship_motion :serialization-length))
   ;; geometry_msgs/Vector3 _acceleration
     (send _acceleration :deserialize buf ptr-) (incf ptr- (send _acceleration :serialization-length))
   ;; geometry_msgs/Vector3 _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; sbg_driver/SbgShipMotionStatus _status
     (send _status :deserialize buf ptr-) (incf ptr- (send _status :serialization-length))
   ;;
   self)
  )

(setf (get sbg_driver::SbgShipMotion :md5sum-) "f76d2a0b5a6d09d258ebd78ee0233cd0")
(setf (get sbg_driver::SbgShipMotion :datatype-) "sbg_driver/SbgShipMotion")
(setf (get sbg_driver::SbgShipMotion :definition-)
      "# SBG Ellipse Messages
Header header

# Time since sensor is powered up us 
uint32 time_stamp

# Main heave period in seconds. s float 4 4
uint16 heave_period

# [Surge, Sway, Heave (positive down)] at main location (in m)
# Note : Surge & Sway are not fulfilled
geometry_msgs/Vector3 ship_motion

# [Longitudinal, Lateral, Vertical (positive down)] acceleration (in m/s2)
geometry_msgs/Vector3 acceleration

# [Longitudinal, Lateral, Vertical (positive down)] velocity (in m/s)
geometry_msgs/Vector3 velocity

# Ship motion output status
SbgShipMotionStatus status

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
MSG: sbg_driver/SbgShipMotionStatus
# SBG Ellipse Messages
# SbgShipMotionStatus

# True after heave convergence time.
# False in following conditions:
# - Turn occurred and no velocity aiding is available
# - Heave reached higher/lower limits
# - If a step is detected and filter has to re-converge
# - If internal failure
bool heave_valid

# True if heave output is compensated for transient accelerations
bool heave_vel_aided

# True if the swell period is provided in this output
bool period_available

# True if the period returned is assumed to be valid or not.
bool period_valid
")



(provide :sbg_driver/SbgShipMotion "f76d2a0b5a6d09d258ebd78ee0233cd0")


