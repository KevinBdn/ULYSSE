;; Auto-generated. Do not edit!


(when (boundp 'sbg_driver::SbgGpsHdt)
  (if (not (find-package "SBG_DRIVER"))
    (make-package "SBG_DRIVER"))
  (shadow 'SbgGpsHdt (find-package "SBG_DRIVER")))
(unless (find-package "SBG_DRIVER::SBGGPSHDT")
  (make-package "SBG_DRIVER::SBGGPSHDT"))

(in-package "ROS")
;;//! \htmlinclude SbgGpsHdt.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass sbg_driver::SbgGpsHdt
  :super ros::object
  :slots (_header _time_stamp _status _tow _true_heading _true_heading_acc _pitch _pitch_acc ))

(defmethod sbg_driver::SbgGpsHdt
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:time_stamp __time_stamp) 0)
    ((:status __status) 0)
    ((:tow __tow) 0)
    ((:true_heading __true_heading) 0.0)
    ((:true_heading_acc __true_heading_acc) 0.0)
    ((:pitch __pitch) 0.0)
    ((:pitch_acc __pitch_acc) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _time_stamp (round __time_stamp))
   (setq _status (round __status))
   (setq _tow (round __tow))
   (setq _true_heading (float __true_heading))
   (setq _true_heading_acc (float __true_heading_acc))
   (setq _pitch (float __pitch))
   (setq _pitch_acc (float __pitch_acc))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:time_stamp
   (&optional __time_stamp)
   (if __time_stamp (setq _time_stamp __time_stamp)) _time_stamp)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:tow
   (&optional __tow)
   (if __tow (setq _tow __tow)) _tow)
  (:true_heading
   (&optional __true_heading)
   (if __true_heading (setq _true_heading __true_heading)) _true_heading)
  (:true_heading_acc
   (&optional __true_heading_acc)
   (if __true_heading_acc (setq _true_heading_acc __true_heading_acc)) _true_heading_acc)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:pitch_acc
   (&optional __pitch_acc)
   (if __pitch_acc (setq _pitch_acc __pitch_acc)) _pitch_acc)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _time_stamp
    4
    ;; uint16 _status
    2
    ;; uint32 _tow
    4
    ;; float32 _true_heading
    4
    ;; float32 _true_heading_acc
    4
    ;; float32 _pitch
    4
    ;; float32 _pitch_acc
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _time_stamp
       (write-long _time_stamp s)
     ;; uint16 _status
       (write-word _status s)
     ;; uint32 _tow
       (write-long _tow s)
     ;; float32 _true_heading
       (sys::poke _true_heading (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _true_heading_acc
       (sys::poke _true_heading_acc (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pitch_acc
       (sys::poke _pitch_acc (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _time_stamp
     (setq _time_stamp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _status
     (setq _status (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint32 _tow
     (setq _tow (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _true_heading
     (setq _true_heading (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _true_heading_acc
     (setq _true_heading_acc (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pitch
     (setq _pitch (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pitch_acc
     (setq _pitch_acc (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get sbg_driver::SbgGpsHdt :md5sum-) "e132ccfa1c1c41e27b0c5998a0ca02cd")
(setf (get sbg_driver::SbgGpsHdt :datatype-) "sbg_driver/SbgGpsHdt")
(setf (get sbg_driver::SbgGpsHdt :definition-)
      "# SBG Ellipse Messages
Header header

# Time since sensor is powered up us 
uint32 time_stamp

# GPS True Heading status.
# 0 SOL_COMPUTED		A valid solution has been computed.
# 1 INSUFFICIENT_OBS	Not enough valid SV to compute a solution.
# 2 INTERNAL_ERROR		An internal error has occurred.
# 3 HEIGHT_LIMIT		The height limit has been exceeded.
uint16 status

# GPS Time of Week ms
uint32 tow

# True heading angle (0 to 360 deg).
float32 true_heading

# 1 sigma True heading estimated accuracy (0 to 360 deg).
float32 true_heading_acc

# Pitch angle from the master to the rover
float32 pitch

# 1 sigma pitch estimated accuracy
float32 pitch_acc

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :sbg_driver/SbgGpsHdt "e132ccfa1c1c41e27b0c5998a0ca02cd")


