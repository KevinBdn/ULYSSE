;; Auto-generated. Do not edit!


(when (boundp 'sbg_driver::SbgShipMotionStatus)
  (if (not (find-package "SBG_DRIVER"))
    (make-package "SBG_DRIVER"))
  (shadow 'SbgShipMotionStatus (find-package "SBG_DRIVER")))
(unless (find-package "SBG_DRIVER::SBGSHIPMOTIONSTATUS")
  (make-package "SBG_DRIVER::SBGSHIPMOTIONSTATUS"))

(in-package "ROS")
;;//! \htmlinclude SbgShipMotionStatus.msg.html


(defclass sbg_driver::SbgShipMotionStatus
  :super ros::object
  :slots (_heave_valid _heave_vel_aided _period_available _period_valid ))

(defmethod sbg_driver::SbgShipMotionStatus
  (:init
   (&key
    ((:heave_valid __heave_valid) nil)
    ((:heave_vel_aided __heave_vel_aided) nil)
    ((:period_available __period_available) nil)
    ((:period_valid __period_valid) nil)
    )
   (send-super :init)
   (setq _heave_valid __heave_valid)
   (setq _heave_vel_aided __heave_vel_aided)
   (setq _period_available __period_available)
   (setq _period_valid __period_valid)
   self)
  (:heave_valid
   (&optional __heave_valid)
   (if __heave_valid (setq _heave_valid __heave_valid)) _heave_valid)
  (:heave_vel_aided
   (&optional __heave_vel_aided)
   (if __heave_vel_aided (setq _heave_vel_aided __heave_vel_aided)) _heave_vel_aided)
  (:period_available
   (&optional __period_available)
   (if __period_available (setq _period_available __period_available)) _period_available)
  (:period_valid
   (&optional __period_valid)
   (if __period_valid (setq _period_valid __period_valid)) _period_valid)
  (:serialization-length
   ()
   (+
    ;; bool _heave_valid
    1
    ;; bool _heave_vel_aided
    1
    ;; bool _period_available
    1
    ;; bool _period_valid
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _heave_valid
       (if _heave_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _heave_vel_aided
       (if _heave_vel_aided (write-byte -1 s) (write-byte 0 s))
     ;; bool _period_available
       (if _period_available (write-byte -1 s) (write-byte 0 s))
     ;; bool _period_valid
       (if _period_valid (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _heave_valid
     (setq _heave_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _heave_vel_aided
     (setq _heave_vel_aided (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _period_available
     (setq _period_available (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _period_valid
     (setq _period_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get sbg_driver::SbgShipMotionStatus :md5sum-) "a834637d2b283cc5378d30ef92fcf13a")
(setf (get sbg_driver::SbgShipMotionStatus :datatype-) "sbg_driver/SbgShipMotionStatus")
(setf (get sbg_driver::SbgShipMotionStatus :definition-)
      "# SBG Ellipse Messages
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



(provide :sbg_driver/SbgShipMotionStatus "a834637d2b283cc5378d30ef92fcf13a")


