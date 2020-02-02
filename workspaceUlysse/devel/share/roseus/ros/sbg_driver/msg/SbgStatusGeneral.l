;; Auto-generated. Do not edit!


(when (boundp 'sbg_driver::SbgStatusGeneral)
  (if (not (find-package "SBG_DRIVER"))
    (make-package "SBG_DRIVER"))
  (shadow 'SbgStatusGeneral (find-package "SBG_DRIVER")))
(unless (find-package "SBG_DRIVER::SBGSTATUSGENERAL")
  (make-package "SBG_DRIVER::SBGSTATUSGENERAL"))

(in-package "ROS")
;;//! \htmlinclude SbgStatusGeneral.msg.html


(defclass sbg_driver::SbgStatusGeneral
  :super ros::object
  :slots (_main_power _imu_power _gps_power _settings _temperature ))

(defmethod sbg_driver::SbgStatusGeneral
  (:init
   (&key
    ((:main_power __main_power) nil)
    ((:imu_power __imu_power) nil)
    ((:gps_power __gps_power) nil)
    ((:settings __settings) nil)
    ((:temperature __temperature) nil)
    )
   (send-super :init)
   (setq _main_power __main_power)
   (setq _imu_power __imu_power)
   (setq _gps_power __gps_power)
   (setq _settings __settings)
   (setq _temperature __temperature)
   self)
  (:main_power
   (&optional __main_power)
   (if __main_power (setq _main_power __main_power)) _main_power)
  (:imu_power
   (&optional __imu_power)
   (if __imu_power (setq _imu_power __imu_power)) _imu_power)
  (:gps_power
   (&optional __gps_power)
   (if __gps_power (setq _gps_power __gps_power)) _gps_power)
  (:settings
   (&optional __settings)
   (if __settings (setq _settings __settings)) _settings)
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:serialization-length
   ()
   (+
    ;; bool _main_power
    1
    ;; bool _imu_power
    1
    ;; bool _gps_power
    1
    ;; bool _settings
    1
    ;; bool _temperature
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _main_power
       (if _main_power (write-byte -1 s) (write-byte 0 s))
     ;; bool _imu_power
       (if _imu_power (write-byte -1 s) (write-byte 0 s))
     ;; bool _gps_power
       (if _gps_power (write-byte -1 s) (write-byte 0 s))
     ;; bool _settings
       (if _settings (write-byte -1 s) (write-byte 0 s))
     ;; bool _temperature
       (if _temperature (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _main_power
     (setq _main_power (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _imu_power
     (setq _imu_power (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _gps_power
     (setq _gps_power (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _settings
     (setq _settings (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _temperature
     (setq _temperature (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get sbg_driver::SbgStatusGeneral :md5sum-) "693fdf7e799b5fc52833d1649c048053")
(setf (get sbg_driver::SbgStatusGeneral :datatype-) "sbg_driver/SbgStatusGeneral")
(setf (get sbg_driver::SbgStatusGeneral :definition-)
      "# SBG Ellipse Messages
# SbgStatus submessage

# General main power
# True when main power supply is OK.
bool main_power

# General imu power
# True when IMU power supply is OK.
bool imu_power

# General gps power
# Set to True when GPS power supply is OK.
bool gps_power

# General Settings
# True if settings were correctly loaded
bool settings

# General Temperature
# True when temperature is within specified limits.
bool temperature
")



(provide :sbg_driver/SbgStatusGeneral "693fdf7e799b5fc52833d1649c048053")


