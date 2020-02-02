;; Auto-generated. Do not edit!


(when (boundp 'sbg_driver::SbgImuStatus)
  (if (not (find-package "SBG_DRIVER"))
    (make-package "SBG_DRIVER"))
  (shadow 'SbgImuStatus (find-package "SBG_DRIVER")))
(unless (find-package "SBG_DRIVER::SBGIMUSTATUS")
  (make-package "SBG_DRIVER::SBGIMUSTATUS"))

(in-package "ROS")
;;//! \htmlinclude SbgImuStatus.msg.html


(defclass sbg_driver::SbgImuStatus
  :super ros::object
  :slots (_imu_com _imu_status _imu_accel_x _imu_accel_y _imu_accel_z _imu_gyro_x _imu_gyro_y _imu_gyro_z _imu_accels_in_range _imu_gyros_in_range ))

(defmethod sbg_driver::SbgImuStatus
  (:init
   (&key
    ((:imu_com __imu_com) nil)
    ((:imu_status __imu_status) nil)
    ((:imu_accel_x __imu_accel_x) nil)
    ((:imu_accel_y __imu_accel_y) nil)
    ((:imu_accel_z __imu_accel_z) nil)
    ((:imu_gyro_x __imu_gyro_x) nil)
    ((:imu_gyro_y __imu_gyro_y) nil)
    ((:imu_gyro_z __imu_gyro_z) nil)
    ((:imu_accels_in_range __imu_accels_in_range) nil)
    ((:imu_gyros_in_range __imu_gyros_in_range) nil)
    )
   (send-super :init)
   (setq _imu_com __imu_com)
   (setq _imu_status __imu_status)
   (setq _imu_accel_x __imu_accel_x)
   (setq _imu_accel_y __imu_accel_y)
   (setq _imu_accel_z __imu_accel_z)
   (setq _imu_gyro_x __imu_gyro_x)
   (setq _imu_gyro_y __imu_gyro_y)
   (setq _imu_gyro_z __imu_gyro_z)
   (setq _imu_accels_in_range __imu_accels_in_range)
   (setq _imu_gyros_in_range __imu_gyros_in_range)
   self)
  (:imu_com
   (&optional __imu_com)
   (if __imu_com (setq _imu_com __imu_com)) _imu_com)
  (:imu_status
   (&optional __imu_status)
   (if __imu_status (setq _imu_status __imu_status)) _imu_status)
  (:imu_accel_x
   (&optional __imu_accel_x)
   (if __imu_accel_x (setq _imu_accel_x __imu_accel_x)) _imu_accel_x)
  (:imu_accel_y
   (&optional __imu_accel_y)
   (if __imu_accel_y (setq _imu_accel_y __imu_accel_y)) _imu_accel_y)
  (:imu_accel_z
   (&optional __imu_accel_z)
   (if __imu_accel_z (setq _imu_accel_z __imu_accel_z)) _imu_accel_z)
  (:imu_gyro_x
   (&optional __imu_gyro_x)
   (if __imu_gyro_x (setq _imu_gyro_x __imu_gyro_x)) _imu_gyro_x)
  (:imu_gyro_y
   (&optional __imu_gyro_y)
   (if __imu_gyro_y (setq _imu_gyro_y __imu_gyro_y)) _imu_gyro_y)
  (:imu_gyro_z
   (&optional __imu_gyro_z)
   (if __imu_gyro_z (setq _imu_gyro_z __imu_gyro_z)) _imu_gyro_z)
  (:imu_accels_in_range
   (&optional __imu_accels_in_range)
   (if __imu_accels_in_range (setq _imu_accels_in_range __imu_accels_in_range)) _imu_accels_in_range)
  (:imu_gyros_in_range
   (&optional __imu_gyros_in_range)
   (if __imu_gyros_in_range (setq _imu_gyros_in_range __imu_gyros_in_range)) _imu_gyros_in_range)
  (:serialization-length
   ()
   (+
    ;; bool _imu_com
    1
    ;; bool _imu_status
    1
    ;; bool _imu_accel_x
    1
    ;; bool _imu_accel_y
    1
    ;; bool _imu_accel_z
    1
    ;; bool _imu_gyro_x
    1
    ;; bool _imu_gyro_y
    1
    ;; bool _imu_gyro_z
    1
    ;; bool _imu_accels_in_range
    1
    ;; bool _imu_gyros_in_range
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _imu_com
       (if _imu_com (write-byte -1 s) (write-byte 0 s))
     ;; bool _imu_status
       (if _imu_status (write-byte -1 s) (write-byte 0 s))
     ;; bool _imu_accel_x
       (if _imu_accel_x (write-byte -1 s) (write-byte 0 s))
     ;; bool _imu_accel_y
       (if _imu_accel_y (write-byte -1 s) (write-byte 0 s))
     ;; bool _imu_accel_z
       (if _imu_accel_z (write-byte -1 s) (write-byte 0 s))
     ;; bool _imu_gyro_x
       (if _imu_gyro_x (write-byte -1 s) (write-byte 0 s))
     ;; bool _imu_gyro_y
       (if _imu_gyro_y (write-byte -1 s) (write-byte 0 s))
     ;; bool _imu_gyro_z
       (if _imu_gyro_z (write-byte -1 s) (write-byte 0 s))
     ;; bool _imu_accels_in_range
       (if _imu_accels_in_range (write-byte -1 s) (write-byte 0 s))
     ;; bool _imu_gyros_in_range
       (if _imu_gyros_in_range (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _imu_com
     (setq _imu_com (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _imu_status
     (setq _imu_status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _imu_accel_x
     (setq _imu_accel_x (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _imu_accel_y
     (setq _imu_accel_y (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _imu_accel_z
     (setq _imu_accel_z (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _imu_gyro_x
     (setq _imu_gyro_x (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _imu_gyro_y
     (setq _imu_gyro_y (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _imu_gyro_z
     (setq _imu_gyro_z (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _imu_accels_in_range
     (setq _imu_accels_in_range (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _imu_gyros_in_range
     (setq _imu_gyros_in_range (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get sbg_driver::SbgImuStatus :md5sum-) "e9a1bd33215fe69b9523e359cacbe127")
(setf (get sbg_driver::SbgImuStatus :datatype-) "sbg_driver/SbgImuStatus")
(setf (get sbg_driver::SbgImuStatus :definition-)
      "# SBG Ellipse Messages
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

")



(provide :sbg_driver/SbgImuStatus "e9a1bd33215fe69b9523e359cacbe127")


