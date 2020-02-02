;; Auto-generated. Do not edit!


(when (boundp 'sbg_driver::SbgMagCalib)
  (if (not (find-package "SBG_DRIVER"))
    (make-package "SBG_DRIVER"))
  (shadow 'SbgMagCalib (find-package "SBG_DRIVER")))
(unless (find-package "SBG_DRIVER::SBGMAGCALIB")
  (make-package "SBG_DRIVER::SBGMAGCALIB"))

(in-package "ROS")
;;//! \htmlinclude SbgMagCalib.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass sbg_driver::SbgMagCalib
  :super ros::object
  :slots (_header ))

(defmethod sbg_driver::SbgMagCalib
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    )
   (send-super :init)
   (setq _header __header)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;;
   self)
  )

(setf (get sbg_driver::SbgMagCalib :md5sum-) "d7be0bb39af8fb9129d5a76e6b63a290")
(setf (get sbg_driver::SbgMagCalib :datatype-) "sbg_driver/SbgMagCalib")
(setf (get sbg_driver::SbgMagCalib :definition-)
      "# SBG Ellipse Messages
Header header
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



(provide :sbg_driver/SbgMagCalib "d7be0bb39af8fb9129d5a76e6b63a290")


