;; Auto-generated. Do not edit!


(when (boundp 'sbg_driver::SbgStatusAiding)
  (if (not (find-package "SBG_DRIVER"))
    (make-package "SBG_DRIVER"))
  (shadow 'SbgStatusAiding (find-package "SBG_DRIVER")))
(unless (find-package "SBG_DRIVER::SBGSTATUSAIDING")
  (make-package "SBG_DRIVER::SBGSTATUSAIDING"))

(in-package "ROS")
;;//! \htmlinclude SbgStatusAiding.msg.html


(defclass sbg_driver::SbgStatusAiding
  :super ros::object
  :slots (_gps1_pos_recv _gps1_vel_recv _gps1_hdt_recv _gps1_utc_recv _mag_recv _odo_recv _dvl_recv ))

(defmethod sbg_driver::SbgStatusAiding
  (:init
   (&key
    ((:gps1_pos_recv __gps1_pos_recv) nil)
    ((:gps1_vel_recv __gps1_vel_recv) nil)
    ((:gps1_hdt_recv __gps1_hdt_recv) nil)
    ((:gps1_utc_recv __gps1_utc_recv) nil)
    ((:mag_recv __mag_recv) nil)
    ((:odo_recv __odo_recv) nil)
    ((:dvl_recv __dvl_recv) nil)
    )
   (send-super :init)
   (setq _gps1_pos_recv __gps1_pos_recv)
   (setq _gps1_vel_recv __gps1_vel_recv)
   (setq _gps1_hdt_recv __gps1_hdt_recv)
   (setq _gps1_utc_recv __gps1_utc_recv)
   (setq _mag_recv __mag_recv)
   (setq _odo_recv __odo_recv)
   (setq _dvl_recv __dvl_recv)
   self)
  (:gps1_pos_recv
   (&optional __gps1_pos_recv)
   (if __gps1_pos_recv (setq _gps1_pos_recv __gps1_pos_recv)) _gps1_pos_recv)
  (:gps1_vel_recv
   (&optional __gps1_vel_recv)
   (if __gps1_vel_recv (setq _gps1_vel_recv __gps1_vel_recv)) _gps1_vel_recv)
  (:gps1_hdt_recv
   (&optional __gps1_hdt_recv)
   (if __gps1_hdt_recv (setq _gps1_hdt_recv __gps1_hdt_recv)) _gps1_hdt_recv)
  (:gps1_utc_recv
   (&optional __gps1_utc_recv)
   (if __gps1_utc_recv (setq _gps1_utc_recv __gps1_utc_recv)) _gps1_utc_recv)
  (:mag_recv
   (&optional __mag_recv)
   (if __mag_recv (setq _mag_recv __mag_recv)) _mag_recv)
  (:odo_recv
   (&optional __odo_recv)
   (if __odo_recv (setq _odo_recv __odo_recv)) _odo_recv)
  (:dvl_recv
   (&optional __dvl_recv)
   (if __dvl_recv (setq _dvl_recv __dvl_recv)) _dvl_recv)
  (:serialization-length
   ()
   (+
    ;; bool _gps1_pos_recv
    1
    ;; bool _gps1_vel_recv
    1
    ;; bool _gps1_hdt_recv
    1
    ;; bool _gps1_utc_recv
    1
    ;; bool _mag_recv
    1
    ;; bool _odo_recv
    1
    ;; bool _dvl_recv
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _gps1_pos_recv
       (if _gps1_pos_recv (write-byte -1 s) (write-byte 0 s))
     ;; bool _gps1_vel_recv
       (if _gps1_vel_recv (write-byte -1 s) (write-byte 0 s))
     ;; bool _gps1_hdt_recv
       (if _gps1_hdt_recv (write-byte -1 s) (write-byte 0 s))
     ;; bool _gps1_utc_recv
       (if _gps1_utc_recv (write-byte -1 s) (write-byte 0 s))
     ;; bool _mag_recv
       (if _mag_recv (write-byte -1 s) (write-byte 0 s))
     ;; bool _odo_recv
       (if _odo_recv (write-byte -1 s) (write-byte 0 s))
     ;; bool _dvl_recv
       (if _dvl_recv (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _gps1_pos_recv
     (setq _gps1_pos_recv (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _gps1_vel_recv
     (setq _gps1_vel_recv (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _gps1_hdt_recv
     (setq _gps1_hdt_recv (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _gps1_utc_recv
     (setq _gps1_utc_recv (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _mag_recv
     (setq _mag_recv (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _odo_recv
     (setq _odo_recv (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _dvl_recv
     (setq _dvl_recv (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get sbg_driver::SbgStatusAiding :md5sum-) "873fbacbcfa106e3f518a7cd0cce3cfb")
(setf (get sbg_driver::SbgStatusAiding :datatype-) "sbg_driver/SbgStatusAiding")
(setf (get sbg_driver::SbgStatusAiding :definition-)
      "# SBG Ellipse Messages
# SbgStatus submessage

# AIDING_GPS1_POS_RECV true when valid GPS 1 position data is received
bool gps1_pos_recv

# AIDING_GPS1_VEL_RECV true when valid GPS 1 velocity data is received
bool gps1_vel_recv

# AIDING_GPS1_HDT_RECV true when valid GPS 1 true heading data is received
bool gps1_hdt_recv

# AIDING_GPS1_UTC_RECV true when valid GPS 1 UTC time data is received
bool gps1_utc_recv

# AIDING_MAG_RECV true when valid Magnetometer data is received
bool mag_recv

# AIDING_ODO_RECV true when Odometer pulse is received
bool odo_recv

# AIDING_DVL_RECV true when valid DVL data is received
bool dvl_recv

")



(provide :sbg_driver/SbgStatusAiding "873fbacbcfa106e3f518a7cd0cce3cfb")


