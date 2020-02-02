;; Auto-generated. Do not edit!


(when (boundp 'sbg_driver::SbgAirDataStatus)
  (if (not (find-package "SBG_DRIVER"))
    (make-package "SBG_DRIVER"))
  (shadow 'SbgAirDataStatus (find-package "SBG_DRIVER")))
(unless (find-package "SBG_DRIVER::SBGAIRDATASTATUS")
  (make-package "SBG_DRIVER::SBGAIRDATASTATUS"))

(in-package "ROS")
;;//! \htmlinclude SbgAirDataStatus.msg.html


(defclass sbg_driver::SbgAirDataStatus
  :super ros::object
  :slots (_is_delay_time _pressure_valid _altitude_valid _pressure_diff_valid _air_speed_valid _air_temperature_valid ))

(defmethod sbg_driver::SbgAirDataStatus
  (:init
   (&key
    ((:is_delay_time __is_delay_time) nil)
    ((:pressure_valid __pressure_valid) nil)
    ((:altitude_valid __altitude_valid) nil)
    ((:pressure_diff_valid __pressure_diff_valid) nil)
    ((:air_speed_valid __air_speed_valid) nil)
    ((:air_temperature_valid __air_temperature_valid) nil)
    )
   (send-super :init)
   (setq _is_delay_time __is_delay_time)
   (setq _pressure_valid __pressure_valid)
   (setq _altitude_valid __altitude_valid)
   (setq _pressure_diff_valid __pressure_diff_valid)
   (setq _air_speed_valid __air_speed_valid)
   (setq _air_temperature_valid __air_temperature_valid)
   self)
  (:is_delay_time
   (&optional __is_delay_time)
   (if __is_delay_time (setq _is_delay_time __is_delay_time)) _is_delay_time)
  (:pressure_valid
   (&optional __pressure_valid)
   (if __pressure_valid (setq _pressure_valid __pressure_valid)) _pressure_valid)
  (:altitude_valid
   (&optional __altitude_valid)
   (if __altitude_valid (setq _altitude_valid __altitude_valid)) _altitude_valid)
  (:pressure_diff_valid
   (&optional __pressure_diff_valid)
   (if __pressure_diff_valid (setq _pressure_diff_valid __pressure_diff_valid)) _pressure_diff_valid)
  (:air_speed_valid
   (&optional __air_speed_valid)
   (if __air_speed_valid (setq _air_speed_valid __air_speed_valid)) _air_speed_valid)
  (:air_temperature_valid
   (&optional __air_temperature_valid)
   (if __air_temperature_valid (setq _air_temperature_valid __air_temperature_valid)) _air_temperature_valid)
  (:serialization-length
   ()
   (+
    ;; bool _is_delay_time
    1
    ;; bool _pressure_valid
    1
    ;; bool _altitude_valid
    1
    ;; bool _pressure_diff_valid
    1
    ;; bool _air_speed_valid
    1
    ;; bool _air_temperature_valid
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _is_delay_time
       (if _is_delay_time (write-byte -1 s) (write-byte 0 s))
     ;; bool _pressure_valid
       (if _pressure_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _altitude_valid
       (if _altitude_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _pressure_diff_valid
       (if _pressure_diff_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _air_speed_valid
       (if _air_speed_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _air_temperature_valid
       (if _air_temperature_valid (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _is_delay_time
     (setq _is_delay_time (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _pressure_valid
     (setq _pressure_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _altitude_valid
     (setq _altitude_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _pressure_diff_valid
     (setq _pressure_diff_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _air_speed_valid
     (setq _air_speed_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _air_temperature_valid
     (setq _air_temperature_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get sbg_driver::SbgAirDataStatus :md5sum-) "7a096a0984e0fe096308cfb42a254e4a")
(setf (get sbg_driver::SbgAirDataStatus :datatype-) "sbg_driver/SbgAirDataStatus")
(setf (get sbg_driver::SbgAirDataStatus :definition-)
      "# SBG Ellipse Messages
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



(provide :sbg_driver/SbgAirDataStatus "7a096a0984e0fe096308cfb42a254e4a")


