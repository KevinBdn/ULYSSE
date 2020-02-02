;; Auto-generated. Do not edit!


(when (boundp 'sbg_driver::SbgMagStatus)
  (if (not (find-package "SBG_DRIVER"))
    (make-package "SBG_DRIVER"))
  (shadow 'SbgMagStatus (find-package "SBG_DRIVER")))
(unless (find-package "SBG_DRIVER::SBGMAGSTATUS")
  (make-package "SBG_DRIVER::SBGMAGSTATUS"))

(in-package "ROS")
;;//! \htmlinclude SbgMagStatus.msg.html


(defclass sbg_driver::SbgMagStatus
  :super ros::object
  :slots (_mag_x _mag_y _mag_z _accel_x _accel_y _accel_z _mags_in_range _accels_in_range _calibration ))

(defmethod sbg_driver::SbgMagStatus
  (:init
   (&key
    ((:mag_x __mag_x) nil)
    ((:mag_y __mag_y) nil)
    ((:mag_z __mag_z) nil)
    ((:accel_x __accel_x) nil)
    ((:accel_y __accel_y) nil)
    ((:accel_z __accel_z) nil)
    ((:mags_in_range __mags_in_range) nil)
    ((:accels_in_range __accels_in_range) nil)
    ((:calibration __calibration) nil)
    )
   (send-super :init)
   (setq _mag_x __mag_x)
   (setq _mag_y __mag_y)
   (setq _mag_z __mag_z)
   (setq _accel_x __accel_x)
   (setq _accel_y __accel_y)
   (setq _accel_z __accel_z)
   (setq _mags_in_range __mags_in_range)
   (setq _accels_in_range __accels_in_range)
   (setq _calibration __calibration)
   self)
  (:mag_x
   (&optional __mag_x)
   (if __mag_x (setq _mag_x __mag_x)) _mag_x)
  (:mag_y
   (&optional __mag_y)
   (if __mag_y (setq _mag_y __mag_y)) _mag_y)
  (:mag_z
   (&optional __mag_z)
   (if __mag_z (setq _mag_z __mag_z)) _mag_z)
  (:accel_x
   (&optional __accel_x)
   (if __accel_x (setq _accel_x __accel_x)) _accel_x)
  (:accel_y
   (&optional __accel_y)
   (if __accel_y (setq _accel_y __accel_y)) _accel_y)
  (:accel_z
   (&optional __accel_z)
   (if __accel_z (setq _accel_z __accel_z)) _accel_z)
  (:mags_in_range
   (&optional __mags_in_range)
   (if __mags_in_range (setq _mags_in_range __mags_in_range)) _mags_in_range)
  (:accels_in_range
   (&optional __accels_in_range)
   (if __accels_in_range (setq _accels_in_range __accels_in_range)) _accels_in_range)
  (:calibration
   (&optional __calibration)
   (if __calibration (setq _calibration __calibration)) _calibration)
  (:serialization-length
   ()
   (+
    ;; bool _mag_x
    1
    ;; bool _mag_y
    1
    ;; bool _mag_z
    1
    ;; bool _accel_x
    1
    ;; bool _accel_y
    1
    ;; bool _accel_z
    1
    ;; bool _mags_in_range
    1
    ;; bool _accels_in_range
    1
    ;; bool _calibration
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _mag_x
       (if _mag_x (write-byte -1 s) (write-byte 0 s))
     ;; bool _mag_y
       (if _mag_y (write-byte -1 s) (write-byte 0 s))
     ;; bool _mag_z
       (if _mag_z (write-byte -1 s) (write-byte 0 s))
     ;; bool _accel_x
       (if _accel_x (write-byte -1 s) (write-byte 0 s))
     ;; bool _accel_y
       (if _accel_y (write-byte -1 s) (write-byte 0 s))
     ;; bool _accel_z
       (if _accel_z (write-byte -1 s) (write-byte 0 s))
     ;; bool _mags_in_range
       (if _mags_in_range (write-byte -1 s) (write-byte 0 s))
     ;; bool _accels_in_range
       (if _accels_in_range (write-byte -1 s) (write-byte 0 s))
     ;; bool _calibration
       (if _calibration (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _mag_x
     (setq _mag_x (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _mag_y
     (setq _mag_y (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _mag_z
     (setq _mag_z (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _accel_x
     (setq _accel_x (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _accel_y
     (setq _accel_y (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _accel_z
     (setq _accel_z (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _mags_in_range
     (setq _mags_in_range (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _accels_in_range
     (setq _accels_in_range (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _calibration
     (setq _calibration (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get sbg_driver::SbgMagStatus :md5sum-) "057cf294623d5a0b037fdcc47f99e3c4")
(setf (get sbg_driver::SbgMagStatus :datatype-) "sbg_driver/SbgMagStatus")
(setf (get sbg_driver::SbgMagStatus :definition-)
      "# SBG Ellipse Messages
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



(provide :sbg_driver/SbgMagStatus "057cf294623d5a0b037fdcc47f99e3c4")


