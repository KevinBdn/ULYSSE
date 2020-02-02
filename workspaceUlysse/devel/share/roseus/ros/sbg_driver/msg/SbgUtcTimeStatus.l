;; Auto-generated. Do not edit!


(when (boundp 'sbg_driver::SbgUtcTimeStatus)
  (if (not (find-package "SBG_DRIVER"))
    (make-package "SBG_DRIVER"))
  (shadow 'SbgUtcTimeStatus (find-package "SBG_DRIVER")))
(unless (find-package "SBG_DRIVER::SBGUTCTIMESTATUS")
  (make-package "SBG_DRIVER::SBGUTCTIMESTATUS"))

(in-package "ROS")
;;//! \htmlinclude SbgUtcTimeStatus.msg.html


(defclass sbg_driver::SbgUtcTimeStatus
  :super ros::object
  :slots (_clock_stable _clock_status _clock_utc_sync _clock_utc_status ))

(defmethod sbg_driver::SbgUtcTimeStatus
  (:init
   (&key
    ((:clock_stable __clock_stable) nil)
    ((:clock_status __clock_status) 0)
    ((:clock_utc_sync __clock_utc_sync) nil)
    ((:clock_utc_status __clock_utc_status) 0)
    )
   (send-super :init)
   (setq _clock_stable __clock_stable)
   (setq _clock_status (round __clock_status))
   (setq _clock_utc_sync __clock_utc_sync)
   (setq _clock_utc_status (round __clock_utc_status))
   self)
  (:clock_stable
   (&optional __clock_stable)
   (if __clock_stable (setq _clock_stable __clock_stable)) _clock_stable)
  (:clock_status
   (&optional __clock_status)
   (if __clock_status (setq _clock_status __clock_status)) _clock_status)
  (:clock_utc_sync
   (&optional __clock_utc_sync)
   (if __clock_utc_sync (setq _clock_utc_sync __clock_utc_sync)) _clock_utc_sync)
  (:clock_utc_status
   (&optional __clock_utc_status)
   (if __clock_utc_status (setq _clock_utc_status __clock_utc_status)) _clock_utc_status)
  (:serialization-length
   ()
   (+
    ;; bool _clock_stable
    1
    ;; uint8 _clock_status
    1
    ;; bool _clock_utc_sync
    1
    ;; uint8 _clock_utc_status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _clock_stable
       (if _clock_stable (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _clock_status
       (write-byte _clock_status s)
     ;; bool _clock_utc_sync
       (if _clock_utc_sync (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _clock_utc_status
       (write-byte _clock_utc_status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _clock_stable
     (setq _clock_stable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _clock_status
     (setq _clock_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _clock_utc_sync
     (setq _clock_utc_sync (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _clock_utc_status
     (setq _clock_utc_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get sbg_driver::SbgUtcTimeStatus :md5sum-) "d140f95192866cb459fe7af2851c8eed")
(setf (get sbg_driver::SbgUtcTimeStatus :datatype-) "sbg_driver/SbgUtcTimeStatus")
(setf (get sbg_driver::SbgUtcTimeStatus :definition-)
      "# SBG Ellipse Messages

# True when a clock input can be used to synchronize the internal clock.
bool clock_stable

# Define the internal clock estimation status
# 0 An error has occurred on the clock estimation.
# 1 The clock is only based on the internal crystal.
# 2 A PPS has been detected and the clock is converging to it.
# 3 The clock has converged to the PPS and is within 500ns.
uint8 clock_status

# True if UTC time is synchronized with a PPS
bool clock_utc_sync

# UTC validity status
# 0 The UTC time is not known, we are just propagating the UTC time internally.
# 1 We have received valid UTC time information but we don't have the leap seconds information.
# 2 We have received valid UTC time data with valid leap seconds.
uint8 clock_utc_status
")



(provide :sbg_driver/SbgUtcTimeStatus "d140f95192866cb459fe7af2851c8eed")


