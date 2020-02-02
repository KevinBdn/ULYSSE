;; Auto-generated. Do not edit!


(when (boundp 'sbg_driver::SbgEkfStatus)
  (if (not (find-package "SBG_DRIVER"))
    (make-package "SBG_DRIVER"))
  (shadow 'SbgEkfStatus (find-package "SBG_DRIVER")))
(unless (find-package "SBG_DRIVER::SBGEKFSTATUS")
  (make-package "SBG_DRIVER::SBGEKFSTATUS"))

(in-package "ROS")
;;//! \htmlinclude SbgEkfStatus.msg.html


(defclass sbg_driver::SbgEkfStatus
  :super ros::object
  :slots (_solution_mode _attitude_valid _heading_valid _velocity_valid _position_valid _vert_ref_used _mag_ref_used _gps1_vel_used _gps1_pos_used _gps1_course_used _gps1_hdt_used _gps2_vel_used _gps2_pos_used _gps2_course_used _gps2_hdt_used _odo_used ))

(defmethod sbg_driver::SbgEkfStatus
  (:init
   (&key
    ((:solution_mode __solution_mode) 0)
    ((:attitude_valid __attitude_valid) nil)
    ((:heading_valid __heading_valid) nil)
    ((:velocity_valid __velocity_valid) nil)
    ((:position_valid __position_valid) nil)
    ((:vert_ref_used __vert_ref_used) nil)
    ((:mag_ref_used __mag_ref_used) nil)
    ((:gps1_vel_used __gps1_vel_used) nil)
    ((:gps1_pos_used __gps1_pos_used) nil)
    ((:gps1_course_used __gps1_course_used) nil)
    ((:gps1_hdt_used __gps1_hdt_used) nil)
    ((:gps2_vel_used __gps2_vel_used) nil)
    ((:gps2_pos_used __gps2_pos_used) nil)
    ((:gps2_course_used __gps2_course_used) nil)
    ((:gps2_hdt_used __gps2_hdt_used) nil)
    ((:odo_used __odo_used) nil)
    )
   (send-super :init)
   (setq _solution_mode (round __solution_mode))
   (setq _attitude_valid __attitude_valid)
   (setq _heading_valid __heading_valid)
   (setq _velocity_valid __velocity_valid)
   (setq _position_valid __position_valid)
   (setq _vert_ref_used __vert_ref_used)
   (setq _mag_ref_used __mag_ref_used)
   (setq _gps1_vel_used __gps1_vel_used)
   (setq _gps1_pos_used __gps1_pos_used)
   (setq _gps1_course_used __gps1_course_used)
   (setq _gps1_hdt_used __gps1_hdt_used)
   (setq _gps2_vel_used __gps2_vel_used)
   (setq _gps2_pos_used __gps2_pos_used)
   (setq _gps2_course_used __gps2_course_used)
   (setq _gps2_hdt_used __gps2_hdt_used)
   (setq _odo_used __odo_used)
   self)
  (:solution_mode
   (&optional __solution_mode)
   (if __solution_mode (setq _solution_mode __solution_mode)) _solution_mode)
  (:attitude_valid
   (&optional __attitude_valid)
   (if __attitude_valid (setq _attitude_valid __attitude_valid)) _attitude_valid)
  (:heading_valid
   (&optional __heading_valid)
   (if __heading_valid (setq _heading_valid __heading_valid)) _heading_valid)
  (:velocity_valid
   (&optional __velocity_valid)
   (if __velocity_valid (setq _velocity_valid __velocity_valid)) _velocity_valid)
  (:position_valid
   (&optional __position_valid)
   (if __position_valid (setq _position_valid __position_valid)) _position_valid)
  (:vert_ref_used
   (&optional __vert_ref_used)
   (if __vert_ref_used (setq _vert_ref_used __vert_ref_used)) _vert_ref_used)
  (:mag_ref_used
   (&optional __mag_ref_used)
   (if __mag_ref_used (setq _mag_ref_used __mag_ref_used)) _mag_ref_used)
  (:gps1_vel_used
   (&optional __gps1_vel_used)
   (if __gps1_vel_used (setq _gps1_vel_used __gps1_vel_used)) _gps1_vel_used)
  (:gps1_pos_used
   (&optional __gps1_pos_used)
   (if __gps1_pos_used (setq _gps1_pos_used __gps1_pos_used)) _gps1_pos_used)
  (:gps1_course_used
   (&optional __gps1_course_used)
   (if __gps1_course_used (setq _gps1_course_used __gps1_course_used)) _gps1_course_used)
  (:gps1_hdt_used
   (&optional __gps1_hdt_used)
   (if __gps1_hdt_used (setq _gps1_hdt_used __gps1_hdt_used)) _gps1_hdt_used)
  (:gps2_vel_used
   (&optional __gps2_vel_used)
   (if __gps2_vel_used (setq _gps2_vel_used __gps2_vel_used)) _gps2_vel_used)
  (:gps2_pos_used
   (&optional __gps2_pos_used)
   (if __gps2_pos_used (setq _gps2_pos_used __gps2_pos_used)) _gps2_pos_used)
  (:gps2_course_used
   (&optional __gps2_course_used)
   (if __gps2_course_used (setq _gps2_course_used __gps2_course_used)) _gps2_course_used)
  (:gps2_hdt_used
   (&optional __gps2_hdt_used)
   (if __gps2_hdt_used (setq _gps2_hdt_used __gps2_hdt_used)) _gps2_hdt_used)
  (:odo_used
   (&optional __odo_used)
   (if __odo_used (setq _odo_used __odo_used)) _odo_used)
  (:serialization-length
   ()
   (+
    ;; uint8 _solution_mode
    1
    ;; bool _attitude_valid
    1
    ;; bool _heading_valid
    1
    ;; bool _velocity_valid
    1
    ;; bool _position_valid
    1
    ;; bool _vert_ref_used
    1
    ;; bool _mag_ref_used
    1
    ;; bool _gps1_vel_used
    1
    ;; bool _gps1_pos_used
    1
    ;; bool _gps1_course_used
    1
    ;; bool _gps1_hdt_used
    1
    ;; bool _gps2_vel_used
    1
    ;; bool _gps2_pos_used
    1
    ;; bool _gps2_course_used
    1
    ;; bool _gps2_hdt_used
    1
    ;; bool _odo_used
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _solution_mode
       (write-byte _solution_mode s)
     ;; bool _attitude_valid
       (if _attitude_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _heading_valid
       (if _heading_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _velocity_valid
       (if _velocity_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _position_valid
       (if _position_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _vert_ref_used
       (if _vert_ref_used (write-byte -1 s) (write-byte 0 s))
     ;; bool _mag_ref_used
       (if _mag_ref_used (write-byte -1 s) (write-byte 0 s))
     ;; bool _gps1_vel_used
       (if _gps1_vel_used (write-byte -1 s) (write-byte 0 s))
     ;; bool _gps1_pos_used
       (if _gps1_pos_used (write-byte -1 s) (write-byte 0 s))
     ;; bool _gps1_course_used
       (if _gps1_course_used (write-byte -1 s) (write-byte 0 s))
     ;; bool _gps1_hdt_used
       (if _gps1_hdt_used (write-byte -1 s) (write-byte 0 s))
     ;; bool _gps2_vel_used
       (if _gps2_vel_used (write-byte -1 s) (write-byte 0 s))
     ;; bool _gps2_pos_used
       (if _gps2_pos_used (write-byte -1 s) (write-byte 0 s))
     ;; bool _gps2_course_used
       (if _gps2_course_used (write-byte -1 s) (write-byte 0 s))
     ;; bool _gps2_hdt_used
       (if _gps2_hdt_used (write-byte -1 s) (write-byte 0 s))
     ;; bool _odo_used
       (if _odo_used (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _solution_mode
     (setq _solution_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _attitude_valid
     (setq _attitude_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _heading_valid
     (setq _heading_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _velocity_valid
     (setq _velocity_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _position_valid
     (setq _position_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _vert_ref_used
     (setq _vert_ref_used (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _mag_ref_used
     (setq _mag_ref_used (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _gps1_vel_used
     (setq _gps1_vel_used (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _gps1_pos_used
     (setq _gps1_pos_used (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _gps1_course_used
     (setq _gps1_course_used (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _gps1_hdt_used
     (setq _gps1_hdt_used (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _gps2_vel_used
     (setq _gps2_vel_used (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _gps2_pos_used
     (setq _gps2_pos_used (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _gps2_course_used
     (setq _gps2_course_used (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _gps2_hdt_used
     (setq _gps2_hdt_used (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _odo_used
     (setq _odo_used (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get sbg_driver::SbgEkfStatus :md5sum-) "779a904443daf8f46a24dc18bd3bbedb")
(setf (get sbg_driver::SbgEkfStatus :datatype-) "sbg_driver/SbgEkfStatus")
(setf (get sbg_driver::SbgEkfStatus :definition-)
      "# SBG Ellipse Messages
# Submessage

# Defines the Kalman filter computation mode (see the table 4 below)
# 0 UNINITIALIZED	The Kalman filter is not initialized and the returned data are all invalid.
# 1 VERTICAL_GYRO	The Kalman filter only rely on a vertical reference to compute roll and pitch angles. Heading and navigation data drift freely.
# 2 AHRS			A heading reference is available, the Kalman filter provides full orientation but navigation data drift freely.
# 3 NAV_VELOCITY	The Kalman filter computes orientation and velocity. Position is freely integrated from velocity estimation.
# 4 NAV_POSITION	Nominal mode, the Kalman filter computes all parameters (attitude, velocity, position). Absolute position is provided. 
uint8 solution_mode 

# True if Attitude data is reliable (Roll/Pitch error < 0,5 deg)
bool attitude_valid

# True if Heading data is reliable (Heading error < 1 deg)
bool heading_valid

# True if Velocity data is reliable (velocity error < 1.5 m/s)
bool velocity_valid

# True if Position data is reliable (Position error < 10m)
bool position_valid

# True if vertical reference is used in solution (data used and valid since 3s)
bool vert_ref_used

# True if magnetometer is used in solution (data used and valid since 3s)
bool mag_ref_used

# True if GPS velocity is used in solution (data used and valid since 3s)
bool gps1_vel_used

# True if GPS Position is used in solution (data used and valid since 3s)
bool gps1_pos_used

# True if GPS Course is used in solution (data used and valid since 3s)
bool gps1_course_used

# True if GPS True Heading is used in solution (data used and valid since 3s)
bool gps1_hdt_used

# True if GPS2 velocity is used in solution (data used and valid since 3s)
bool gps2_vel_used

# True if GPS2 Position is used in solution (data used and valid since 3s)
bool gps2_pos_used

# True if GPS2 Course is used in solution (data used and valid since 3s)
bool gps2_course_used

# True if GPS2 True Heading is used in solution (data used and valid since 3s)
bool gps2_hdt_used

# True if Odometer is used in solution (data used and valid since 3s)
bool odo_used

")



(provide :sbg_driver/SbgEkfStatus "779a904443daf8f46a24dc18bd3bbedb")


