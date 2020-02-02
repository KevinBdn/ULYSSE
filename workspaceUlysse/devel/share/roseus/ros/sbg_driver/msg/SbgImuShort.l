;; Auto-generated. Do not edit!


(when (boundp 'sbg_driver::SbgImuShort)
  (if (not (find-package "SBG_DRIVER"))
    (make-package "SBG_DRIVER"))
  (shadow 'SbgImuShort (find-package "SBG_DRIVER")))
(unless (find-package "SBG_DRIVER::SBGIMUSHORT")
  (make-package "SBG_DRIVER::SBGIMUSHORT"))

(in-package "ROS")
;;//! \htmlinclude SbgImuShort.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass sbg_driver::SbgImuShort
  :super ros::object
  :slots (_header _time_stamp _imu_status _delta_velocity _delta_angle _temperature ))

(defmethod sbg_driver::SbgImuShort
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:time_stamp __time_stamp) 0)
    ((:imu_status __imu_status) (instance sbg_driver::SbgImuStatus :init))
    ((:delta_velocity __delta_velocity) (instance geometry_msgs::Vector3 :init))
    ((:delta_angle __delta_angle) (instance geometry_msgs::Vector3 :init))
    ((:temperature __temperature) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _time_stamp (round __time_stamp))
   (setq _imu_status __imu_status)
   (setq _delta_velocity __delta_velocity)
   (setq _delta_angle __delta_angle)
   (setq _temperature (round __temperature))
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
  (:delta_velocity
   (&rest __delta_velocity)
   (if (keywordp (car __delta_velocity))
       (send* _delta_velocity __delta_velocity)
     (progn
       (if __delta_velocity (setq _delta_velocity (car __delta_velocity)))
       _delta_velocity)))
  (:delta_angle
   (&rest __delta_angle)
   (if (keywordp (car __delta_angle))
       (send* _delta_angle __delta_angle)
     (progn
       (if __delta_angle (setq _delta_angle (car __delta_angle)))
       _delta_angle)))
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _time_stamp
    4
    ;; sbg_driver/SbgImuStatus _imu_status
    (send _imu_status :serialization-length)
    ;; geometry_msgs/Vector3 _delta_velocity
    (send _delta_velocity :serialization-length)
    ;; geometry_msgs/Vector3 _delta_angle
    (send _delta_angle :serialization-length)
    ;; int16 _temperature
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
     ;; sbg_driver/SbgImuStatus _imu_status
       (send _imu_status :serialize s)
     ;; geometry_msgs/Vector3 _delta_velocity
       (send _delta_velocity :serialize s)
     ;; geometry_msgs/Vector3 _delta_angle
       (send _delta_angle :serialize s)
     ;; int16 _temperature
       (write-word _temperature s)
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
   ;; geometry_msgs/Vector3 _delta_velocity
     (send _delta_velocity :deserialize buf ptr-) (incf ptr- (send _delta_velocity :serialization-length))
   ;; geometry_msgs/Vector3 _delta_angle
     (send _delta_angle :deserialize buf ptr-) (incf ptr- (send _delta_angle :serialization-length))
   ;; int16 _temperature
     (setq _temperature (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get sbg_driver::SbgImuShort :md5sum-) "3be77ff9ef2640e787db71f0246e7518")
(setf (get sbg_driver::SbgImuShort :datatype-) "sbg_driver/SbgImuShort")
(setf (get sbg_driver::SbgImuShort :definition-)
      "# SBG Ellipse Messages
Header header

# Time since sensor is powered up us 
uint32 time_stamp

# IMU Status
SbgImuStatus imu_status

# X, Y, Z delta velocity. Unit is 1048576 LSB for 1 m.s^-2.
geometry_msgs/Vector3 delta_velocity

# X, Y, Z delta angle. Unit is 67108864 LSB for 1 rad.s^-1.
geometry_msgs/Vector3 delta_angle

# IMU average temperature. Unit is 256 LSB for 1°C.
int16 temperature
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



(provide :sbg_driver/SbgImuShort "3be77ff9ef2640e787db71f0246e7518")


