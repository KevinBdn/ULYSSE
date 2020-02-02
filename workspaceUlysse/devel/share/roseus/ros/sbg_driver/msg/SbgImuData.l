;; Auto-generated. Do not edit!


(when (boundp 'sbg_driver::SbgImuData)
  (if (not (find-package "SBG_DRIVER"))
    (make-package "SBG_DRIVER"))
  (shadow 'SbgImuData (find-package "SBG_DRIVER")))
(unless (find-package "SBG_DRIVER::SBGIMUDATA")
  (make-package "SBG_DRIVER::SBGIMUDATA"))

(in-package "ROS")
;;//! \htmlinclude SbgImuData.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass sbg_driver::SbgImuData
  :super ros::object
  :slots (_header _time_stamp _imu_status _accel _gyro _temp _delta_vel _delta_angle ))

(defmethod sbg_driver::SbgImuData
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:time_stamp __time_stamp) 0)
    ((:imu_status __imu_status) (instance sbg_driver::SbgImuStatus :init))
    ((:accel __accel) (instance geometry_msgs::Vector3 :init))
    ((:gyro __gyro) (instance geometry_msgs::Vector3 :init))
    ((:temp __temp) 0.0)
    ((:delta_vel __delta_vel) (instance geometry_msgs::Vector3 :init))
    ((:delta_angle __delta_angle) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _time_stamp (round __time_stamp))
   (setq _imu_status __imu_status)
   (setq _accel __accel)
   (setq _gyro __gyro)
   (setq _temp (float __temp))
   (setq _delta_vel __delta_vel)
   (setq _delta_angle __delta_angle)
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
  (:imu_status
   (&rest __imu_status)
   (if (keywordp (car __imu_status))
       (send* _imu_status __imu_status)
     (progn
       (if __imu_status (setq _imu_status (car __imu_status)))
       _imu_status)))
  (:accel
   (&rest __accel)
   (if (keywordp (car __accel))
       (send* _accel __accel)
     (progn
       (if __accel (setq _accel (car __accel)))
       _accel)))
  (:gyro
   (&rest __gyro)
   (if (keywordp (car __gyro))
       (send* _gyro __gyro)
     (progn
       (if __gyro (setq _gyro (car __gyro)))
       _gyro)))
  (:temp
   (&optional __temp)
   (if __temp (setq _temp __temp)) _temp)
  (:delta_vel
   (&rest __delta_vel)
   (if (keywordp (car __delta_vel))
       (send* _delta_vel __delta_vel)
     (progn
       (if __delta_vel (setq _delta_vel (car __delta_vel)))
       _delta_vel)))
  (:delta_angle
   (&rest __delta_angle)
   (if (keywordp (car __delta_angle))
       (send* _delta_angle __delta_angle)
     (progn
       (if __delta_angle (setq _delta_angle (car __delta_angle)))
       _delta_angle)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _time_stamp
    4
    ;; sbg_driver/SbgImuStatus _imu_status
    (send _imu_status :serialization-length)
    ;; geometry_msgs/Vector3 _accel
    (send _accel :serialization-length)
    ;; geometry_msgs/Vector3 _gyro
    (send _gyro :serialization-length)
    ;; float32 _temp
    4
    ;; geometry_msgs/Vector3 _delta_vel
    (send _delta_vel :serialization-length)
    ;; geometry_msgs/Vector3 _delta_angle
    (send _delta_angle :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _time_stamp
       (write-long _time_stamp s)
     ;; sbg_driver/SbgImuStatus _imu_status
       (send _imu_status :serialize s)
     ;; geometry_msgs/Vector3 _accel
       (send _accel :serialize s)
     ;; geometry_msgs/Vector3 _gyro
       (send _gyro :serialize s)
     ;; float32 _temp
       (sys::poke _temp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/Vector3 _delta_vel
       (send _delta_vel :serialize s)
     ;; geometry_msgs/Vector3 _delta_angle
       (send _delta_angle :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _time_stamp
     (setq _time_stamp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; sbg_driver/SbgImuStatus _imu_status
     (send _imu_status :deserialize buf ptr-) (incf ptr- (send _imu_status :serialization-length))
   ;; geometry_msgs/Vector3 _accel
     (send _accel :deserialize buf ptr-) (incf ptr- (send _accel :serialization-length))
   ;; geometry_msgs/Vector3 _gyro
     (send _gyro :deserialize buf ptr-) (incf ptr- (send _gyro :serialization-length))
   ;; float32 _temp
     (setq _temp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/Vector3 _delta_vel
     (send _delta_vel :deserialize buf ptr-) (incf ptr- (send _delta_vel :serialization-length))
   ;; geometry_msgs/Vector3 _delta_angle
     (send _delta_angle :deserialize buf ptr-) (incf ptr- (send _delta_angle :serialization-length))
   ;;
   self)
  )

(setf (get sbg_driver::SbgImuData :md5sum-) "59cc541d794c367e71030fa700720826")
(setf (get sbg_driver::SbgImuData :datatype-) "sbg_driver/SbgImuData")
(setf (get sbg_driver::SbgImuData :definition-)
      "# SBG Ellipse Messages
Header header

# Time since sensor is powered up us 
uint32 time_stamp

# IMU Status
SbgImuStatus imu_status

# Filtered Accelerometer - X, Y, Z axis m/s2 
geometry_msgs/Vector3 accel

# Filtered Gyroscope - X, Y, Z axis rad/s 
geometry_msgs/Vector3 gyro

# Internal Temperature degC 
float32 temp

# Sculling output - X, Y, Z axis m/s2 
geometry_msgs/Vector3 delta_vel

# Coning output - X, Y, Z axis rad/s 
geometry_msgs/Vector3 delta_angle

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
MSG: sbg_driver/SbgImuStatus
# SBG Ellipse Messages
# Submessage SbgImuData

# True if the communication with the IMU is ok.
bool imu_com

# True if internal IMU passes Built In Test (Calibration, CPU)
bool imu_status

# True if accelerometer X passes Built In Test
bool imu_accel_x

# True if accelerometer Y passes Built In Test
bool imu_accel_y

# True if accelerometer Z passes Built In Test
bool imu_accel_z

# True if gyroscope X passes Built In Test
bool imu_gyro_x

# True if gyroscope Y passes Built In Test
bool imu_gyro_y

# True if gyroscope Z passes Built In Test
bool imu_gyro_z

# True if accelerometers are within operating range
bool imu_accels_in_range

# True if gyroscopes are within operating range
bool imu_gyros_in_range

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



(provide :sbg_driver/SbgImuData "59cc541d794c367e71030fa700720826")


