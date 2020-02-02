;; Auto-generated. Do not edit!


(when (boundp 'sbg_driver::SbgEvent)
  (if (not (find-package "SBG_DRIVER"))
    (make-package "SBG_DRIVER"))
  (shadow 'SbgEvent (find-package "SBG_DRIVER")))
(unless (find-package "SBG_DRIVER::SBGEVENT")
  (make-package "SBG_DRIVER::SBGEVENT"))

(in-package "ROS")
;;//! \htmlinclude SbgEvent.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass sbg_driver::SbgEvent
  :super ros::object
  :slots (_header _time_stamp _overflow _offset_0_valid _offset_1_valid _offset_2_valid _offset_3_valid _time_offset_0 _time_offset_1 _time_offset_2 _time_offset_3 ))

(defmethod sbg_driver::SbgEvent
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:time_stamp __time_stamp) 0)
    ((:overflow __overflow) nil)
    ((:offset_0_valid __offset_0_valid) nil)
    ((:offset_1_valid __offset_1_valid) nil)
    ((:offset_2_valid __offset_2_valid) nil)
    ((:offset_3_valid __offset_3_valid) nil)
    ((:time_offset_0 __time_offset_0) 0)
    ((:time_offset_1 __time_offset_1) 0)
    ((:time_offset_2 __time_offset_2) 0)
    ((:time_offset_3 __time_offset_3) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _time_stamp (round __time_stamp))
   (setq _overflow __overflow)
   (setq _offset_0_valid __offset_0_valid)
   (setq _offset_1_valid __offset_1_valid)
   (setq _offset_2_valid __offset_2_valid)
   (setq _offset_3_valid __offset_3_valid)
   (setq _time_offset_0 (round __time_offset_0))
   (setq _time_offset_1 (round __time_offset_1))
   (setq _time_offset_2 (round __time_offset_2))
   (setq _time_offset_3 (round __time_offset_3))
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
  (:overflow
   (&optional __overflow)
   (if __overflow (setq _overflow __overflow)) _overflow)
  (:offset_0_valid
   (&optional __offset_0_valid)
   (if __offset_0_valid (setq _offset_0_valid __offset_0_valid)) _offset_0_valid)
  (:offset_1_valid
   (&optional __offset_1_valid)
   (if __offset_1_valid (setq _offset_1_valid __offset_1_valid)) _offset_1_valid)
  (:offset_2_valid
   (&optional __offset_2_valid)
   (if __offset_2_valid (setq _offset_2_valid __offset_2_valid)) _offset_2_valid)
  (:offset_3_valid
   (&optional __offset_3_valid)
   (if __offset_3_valid (setq _offset_3_valid __offset_3_valid)) _offset_3_valid)
  (:time_offset_0
   (&optional __time_offset_0)
   (if __time_offset_0 (setq _time_offset_0 __time_offset_0)) _time_offset_0)
  (:time_offset_1
   (&optional __time_offset_1)
   (if __time_offset_1 (setq _time_offset_1 __time_offset_1)) _time_offset_1)
  (:time_offset_2
   (&optional __time_offset_2)
   (if __time_offset_2 (setq _time_offset_2 __time_offset_2)) _time_offset_2)
  (:time_offset_3
   (&optional __time_offset_3)
   (if __time_offset_3 (setq _time_offset_3 __time_offset_3)) _time_offset_3)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _time_stamp
    4
    ;; bool _overflow
    1
    ;; bool _offset_0_valid
    1
    ;; bool _offset_1_valid
    1
    ;; bool _offset_2_valid
    1
    ;; bool _offset_3_valid
    1
    ;; uint16 _time_offset_0
    2
    ;; uint16 _time_offset_1
    2
    ;; uint16 _time_offset_2
    2
    ;; uint16 _time_offset_3
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _time_stamp
       (write-long _time_stamp s)
     ;; bool _overflow
       (if _overflow (write-byte -1 s) (write-byte 0 s))
     ;; bool _offset_0_valid
       (if _offset_0_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _offset_1_valid
       (if _offset_1_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _offset_2_valid
       (if _offset_2_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _offset_3_valid
       (if _offset_3_valid (write-byte -1 s) (write-byte 0 s))
     ;; uint16 _time_offset_0
       (write-word _time_offset_0 s)
     ;; uint16 _time_offset_1
       (write-word _time_offset_1 s)
     ;; uint16 _time_offset_2
       (write-word _time_offset_2 s)
     ;; uint16 _time_offset_3
       (write-word _time_offset_3 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _time_stamp
     (setq _time_stamp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _overflow
     (setq _overflow (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _offset_0_valid
     (setq _offset_0_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _offset_1_valid
     (setq _offset_1_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _offset_2_valid
     (setq _offset_2_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _offset_3_valid
     (setq _offset_3_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint16 _time_offset_0
     (setq _time_offset_0 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _time_offset_1
     (setq _time_offset_1 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _time_offset_2
     (setq _time_offset_2 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _time_offset_3
     (setq _time_offset_3 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get sbg_driver::SbgEvent :md5sum-) "330fcb628fc06f7fd7e2c2276c83adfa")
(setf (get sbg_driver::SbgEvent :datatype-) "sbg_driver/SbgEvent")
(setf (get sbg_driver::SbgEvent :definition-)
      "# SBG Ellipse Messages
Header header

# Time since sensor is powered up us 
uint32 time_stamp

# True if we have received events at a higher rate than 1 kHz.
bool overflow

# True if at least two events have been received.
bool offset_0_valid

# True if at least three events have been received.
bool offset_1_valid

# True if at least four events have been received.
bool offset_2_valid

# True if five events have been received.
bool offset_3_valid


# Time offset for the second received event. (us)
uint16 time_offset_0

# Time offset for the third received event. (us)
uint16 time_offset_1

# Time offset for the fourth received event. (us)
uint16  time_offset_2

# Time offset for the fifth received event. (us)
uint16  time_offset_3

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



(provide :sbg_driver/SbgEvent "330fcb628fc06f7fd7e2c2276c83adfa")


