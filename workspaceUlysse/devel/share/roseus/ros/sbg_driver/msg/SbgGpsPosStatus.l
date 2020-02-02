;; Auto-generated. Do not edit!


(when (boundp 'sbg_driver::SbgGpsPosStatus)
  (if (not (find-package "SBG_DRIVER"))
    (make-package "SBG_DRIVER"))
  (shadow 'SbgGpsPosStatus (find-package "SBG_DRIVER")))
(unless (find-package "SBG_DRIVER::SBGGPSPOSSTATUS")
  (make-package "SBG_DRIVER::SBGGPSPOSSTATUS"))

(in-package "ROS")
;;//! \htmlinclude SbgGpsPosStatus.msg.html


(defclass sbg_driver::SbgGpsPosStatus
  :super ros::object
  :slots (_status _type _gps_l1_used _gps_l2_used _gps_l5_used _glo_l1_used _glo_l2_used ))

(defmethod sbg_driver::SbgGpsPosStatus
  (:init
   (&key
    ((:status __status) 0)
    ((:type __type) 0)
    ((:gps_l1_used __gps_l1_used) nil)
    ((:gps_l2_used __gps_l2_used) nil)
    ((:gps_l5_used __gps_l5_used) nil)
    ((:glo_l1_used __glo_l1_used) nil)
    ((:glo_l2_used __glo_l2_used) nil)
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _type (round __type))
   (setq _gps_l1_used __gps_l1_used)
   (setq _gps_l2_used __gps_l2_used)
   (setq _gps_l5_used __gps_l5_used)
   (setq _glo_l1_used __glo_l1_used)
   (setq _glo_l2_used __glo_l2_used)
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:gps_l1_used
   (&optional __gps_l1_used)
   (if __gps_l1_used (setq _gps_l1_used __gps_l1_used)) _gps_l1_used)
  (:gps_l2_used
   (&optional __gps_l2_used)
   (if __gps_l2_used (setq _gps_l2_used __gps_l2_used)) _gps_l2_used)
  (:gps_l5_used
   (&optional __gps_l5_used)
   (if __gps_l5_used (setq _gps_l5_used __gps_l5_used)) _gps_l5_used)
  (:glo_l1_used
   (&optional __glo_l1_used)
   (if __glo_l1_used (setq _glo_l1_used __glo_l1_used)) _glo_l1_used)
  (:glo_l2_used
   (&optional __glo_l2_used)
   (if __glo_l2_used (setq _glo_l2_used __glo_l2_used)) _glo_l2_used)
  (:serialization-length
   ()
   (+
    ;; uint8 _status
    1
    ;; uint8 _type
    1
    ;; bool _gps_l1_used
    1
    ;; bool _gps_l2_used
    1
    ;; bool _gps_l5_used
    1
    ;; bool _glo_l1_used
    1
    ;; bool _glo_l2_used
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _status
       (write-byte _status s)
     ;; uint8 _type
       (write-byte _type s)
     ;; bool _gps_l1_used
       (if _gps_l1_used (write-byte -1 s) (write-byte 0 s))
     ;; bool _gps_l2_used
       (if _gps_l2_used (write-byte -1 s) (write-byte 0 s))
     ;; bool _gps_l5_used
       (if _gps_l5_used (write-byte -1 s) (write-byte 0 s))
     ;; bool _glo_l1_used
       (if _glo_l1_used (write-byte -1 s) (write-byte 0 s))
     ;; bool _glo_l2_used
       (if _glo_l2_used (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _gps_l1_used
     (setq _gps_l1_used (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _gps_l2_used
     (setq _gps_l2_used (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _gps_l5_used
     (setq _gps_l5_used (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _glo_l1_used
     (setq _glo_l1_used (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _glo_l2_used
     (setq _glo_l2_used (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get sbg_driver::SbgGpsPosStatus :md5sum-) "85506deb3699c6f0e87097da56884a7e")
(setf (get sbg_driver::SbgGpsPosStatus :datatype-) "sbg_driver/SbgGpsPosStatus")
(setf (get sbg_driver::SbgGpsPosStatus :definition-)
      "# SBG Ellipse Messages
# Submessage


# The raw GPS position status
# 0 SOL_COMPUTED		A valid solution has been computed.
# 1 INSUFFICIENT_OBS 	Not enough valid SV to compute a solution.
# 2 INTERNAL_ERROR 		An internal error has occurred.
# 3 HEIGHT_LIMIT 		The height limit has been exceeded.
uint8 status

# The raw GPS position type
# 0 NO_SOLUTION		No valid solution available.
# 1 UNKNOWN_TYPE	An unknown solution type has been computed.
# 2 SINGLE			Single point solution position.
# 3 PSRDIFF			Standard Pseudorange Differential Solution (DGPS).
# 4 SBAS			SBAS satellite used for differential corrections.
# 5 OMNISTAR		Omnistar VBS Position (L1 sub-meter).
# 6 RTK_FLOAT		Floating RTK ambiguity solution (20 cms RTK).
# 7 RTK_INT			Integer RTK ambiguity solution (2 cms RTK).
# 8 PPP_FLOAT		Precise Point Positioning with float ambiguities
# 9 PPP_INT			Precise Point Positioning with fixed ambiguities
# 10 FIXED			Fixed location solution position
uint8 type

# True if GPS L1 is used in the solution
bool gps_l1_used

# True if GPS L2 is used in the solution
bool gps_l2_used

# True if GPS L5 is used in the solution
bool gps_l5_used

# True if GLONASS L1 is used in the solution
bool glo_l1_used

# True if GLONASS L2 is used in the solution
bool glo_l2_used

")



(provide :sbg_driver/SbgGpsPosStatus "85506deb3699c6f0e87097da56884a7e")


