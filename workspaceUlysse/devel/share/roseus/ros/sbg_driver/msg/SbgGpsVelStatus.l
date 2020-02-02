;; Auto-generated. Do not edit!


(when (boundp 'sbg_driver::SbgGpsVelStatus)
  (if (not (find-package "SBG_DRIVER"))
    (make-package "SBG_DRIVER"))
  (shadow 'SbgGpsVelStatus (find-package "SBG_DRIVER")))
(unless (find-package "SBG_DRIVER::SBGGPSVELSTATUS")
  (make-package "SBG_DRIVER::SBGGPSVELSTATUS"))

(in-package "ROS")
;;//! \htmlinclude SbgGpsVelStatus.msg.html


(defclass sbg_driver::SbgGpsVelStatus
  :super ros::object
  :slots (_vel_status _vel_type ))

(defmethod sbg_driver::SbgGpsVelStatus
  (:init
   (&key
    ((:vel_status __vel_status) 0)
    ((:vel_type __vel_type) 0)
    )
   (send-super :init)
   (setq _vel_status (round __vel_status))
   (setq _vel_type (round __vel_type))
   self)
  (:vel_status
   (&optional __vel_status)
   (if __vel_status (setq _vel_status __vel_status)) _vel_status)
  (:vel_type
   (&optional __vel_type)
   (if __vel_type (setq _vel_type __vel_type)) _vel_type)
  (:serialization-length
   ()
   (+
    ;; uint8 _vel_status
    1
    ;; uint8 _vel_type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _vel_status
       (write-byte _vel_status s)
     ;; uint8 _vel_type
       (write-byte _vel_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _vel_status
     (setq _vel_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _vel_type
     (setq _vel_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get sbg_driver::SbgGpsVelStatus :md5sum-) "8c5fcc3c3ffd11ce820539049c166dde")
(setf (get sbg_driver::SbgGpsVelStatus :datatype-) "sbg_driver/SbgGpsVelStatus")
(setf (get sbg_driver::SbgGpsVelStatus :definition-)
      "# SBG Ellipse Messages
# Submessage

# The raw GPS velocity status
# 0 SOL_COMPUTED		A valid solution has been computed.
# 1 INSUFFICIENT_OBS	Not enough valid SV to compute a solution.
# 2 INTERNAL_ERROR		An internal error has occurred.
# 3 LIMIT				Velocity limit exceeded.
uint8 vel_status

# The raw GPS velocity type
# 0 VEL_NO_SOLUTION		No valid velocity solution available.
# 1 VEL_UNKNOWN_TYPE	An unknown solution type has been computed.
# 2 VEL_DOPPLER			A Doppler velocity has been computed.
# 3 VEL_DIFFERENTIAL	A velocity has been computed between two positions.
uint8 vel_type
")



(provide :sbg_driver/SbgGpsVelStatus "8c5fcc3c3ffd11ce820539049c166dde")


