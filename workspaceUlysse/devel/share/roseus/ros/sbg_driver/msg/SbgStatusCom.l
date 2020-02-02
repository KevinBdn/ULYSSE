;; Auto-generated. Do not edit!


(when (boundp 'sbg_driver::SbgStatusCom)
  (if (not (find-package "SBG_DRIVER"))
    (make-package "SBG_DRIVER"))
  (shadow 'SbgStatusCom (find-package "SBG_DRIVER")))
(unless (find-package "SBG_DRIVER::SBGSTATUSCOM")
  (make-package "SBG_DRIVER::SBGSTATUSCOM"))

(in-package "ROS")
;;//! \htmlinclude SbgStatusCom.msg.html


(defclass sbg_driver::SbgStatusCom
  :super ros::object
  :slots (_port_a _port_b _port_c _port_d _port_e _port_a_rx _port_a_tx _port_b_rx _port_b_tx _port_c_rx _port_c_tx _port_d_rx _port_d_tx _port_e_rx _port_e_tx _can_rx _can_tx _can_status ))

(defmethod sbg_driver::SbgStatusCom
  (:init
   (&key
    ((:port_a __port_a) nil)
    ((:port_b __port_b) nil)
    ((:port_c __port_c) nil)
    ((:port_d __port_d) nil)
    ((:port_e __port_e) nil)
    ((:port_a_rx __port_a_rx) nil)
    ((:port_a_tx __port_a_tx) nil)
    ((:port_b_rx __port_b_rx) nil)
    ((:port_b_tx __port_b_tx) nil)
    ((:port_c_rx __port_c_rx) nil)
    ((:port_c_tx __port_c_tx) nil)
    ((:port_d_rx __port_d_rx) nil)
    ((:port_d_tx __port_d_tx) nil)
    ((:port_e_rx __port_e_rx) nil)
    ((:port_e_tx __port_e_tx) nil)
    ((:can_rx __can_rx) nil)
    ((:can_tx __can_tx) nil)
    ((:can_status __can_status) 0)
    )
   (send-super :init)
   (setq _port_a __port_a)
   (setq _port_b __port_b)
   (setq _port_c __port_c)
   (setq _port_d __port_d)
   (setq _port_e __port_e)
   (setq _port_a_rx __port_a_rx)
   (setq _port_a_tx __port_a_tx)
   (setq _port_b_rx __port_b_rx)
   (setq _port_b_tx __port_b_tx)
   (setq _port_c_rx __port_c_rx)
   (setq _port_c_tx __port_c_tx)
   (setq _port_d_rx __port_d_rx)
   (setq _port_d_tx __port_d_tx)
   (setq _port_e_rx __port_e_rx)
   (setq _port_e_tx __port_e_tx)
   (setq _can_rx __can_rx)
   (setq _can_tx __can_tx)
   (setq _can_status (round __can_status))
   self)
  (:port_a
   (&optional __port_a)
   (if __port_a (setq _port_a __port_a)) _port_a)
  (:port_b
   (&optional __port_b)
   (if __port_b (setq _port_b __port_b)) _port_b)
  (:port_c
   (&optional __port_c)
   (if __port_c (setq _port_c __port_c)) _port_c)
  (:port_d
   (&optional __port_d)
   (if __port_d (setq _port_d __port_d)) _port_d)
  (:port_e
   (&optional __port_e)
   (if __port_e (setq _port_e __port_e)) _port_e)
  (:port_a_rx
   (&optional __port_a_rx)
   (if __port_a_rx (setq _port_a_rx __port_a_rx)) _port_a_rx)
  (:port_a_tx
   (&optional __port_a_tx)
   (if __port_a_tx (setq _port_a_tx __port_a_tx)) _port_a_tx)
  (:port_b_rx
   (&optional __port_b_rx)
   (if __port_b_rx (setq _port_b_rx __port_b_rx)) _port_b_rx)
  (:port_b_tx
   (&optional __port_b_tx)
   (if __port_b_tx (setq _port_b_tx __port_b_tx)) _port_b_tx)
  (:port_c_rx
   (&optional __port_c_rx)
   (if __port_c_rx (setq _port_c_rx __port_c_rx)) _port_c_rx)
  (:port_c_tx
   (&optional __port_c_tx)
   (if __port_c_tx (setq _port_c_tx __port_c_tx)) _port_c_tx)
  (:port_d_rx
   (&optional __port_d_rx)
   (if __port_d_rx (setq _port_d_rx __port_d_rx)) _port_d_rx)
  (:port_d_tx
   (&optional __port_d_tx)
   (if __port_d_tx (setq _port_d_tx __port_d_tx)) _port_d_tx)
  (:port_e_rx
   (&optional __port_e_rx)
   (if __port_e_rx (setq _port_e_rx __port_e_rx)) _port_e_rx)
  (:port_e_tx
   (&optional __port_e_tx)
   (if __port_e_tx (setq _port_e_tx __port_e_tx)) _port_e_tx)
  (:can_rx
   (&optional __can_rx)
   (if __can_rx (setq _can_rx __can_rx)) _can_rx)
  (:can_tx
   (&optional __can_tx)
   (if __can_tx (setq _can_tx __can_tx)) _can_tx)
  (:can_status
   (&optional __can_status)
   (if __can_status (setq _can_status __can_status)) _can_status)
  (:serialization-length
   ()
   (+
    ;; bool _port_a
    1
    ;; bool _port_b
    1
    ;; bool _port_c
    1
    ;; bool _port_d
    1
    ;; bool _port_e
    1
    ;; bool _port_a_rx
    1
    ;; bool _port_a_tx
    1
    ;; bool _port_b_rx
    1
    ;; bool _port_b_tx
    1
    ;; bool _port_c_rx
    1
    ;; bool _port_c_tx
    1
    ;; bool _port_d_rx
    1
    ;; bool _port_d_tx
    1
    ;; bool _port_e_rx
    1
    ;; bool _port_e_tx
    1
    ;; bool _can_rx
    1
    ;; bool _can_tx
    1
    ;; uint8 _can_status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _port_a
       (if _port_a (write-byte -1 s) (write-byte 0 s))
     ;; bool _port_b
       (if _port_b (write-byte -1 s) (write-byte 0 s))
     ;; bool _port_c
       (if _port_c (write-byte -1 s) (write-byte 0 s))
     ;; bool _port_d
       (if _port_d (write-byte -1 s) (write-byte 0 s))
     ;; bool _port_e
       (if _port_e (write-byte -1 s) (write-byte 0 s))
     ;; bool _port_a_rx
       (if _port_a_rx (write-byte -1 s) (write-byte 0 s))
     ;; bool _port_a_tx
       (if _port_a_tx (write-byte -1 s) (write-byte 0 s))
     ;; bool _port_b_rx
       (if _port_b_rx (write-byte -1 s) (write-byte 0 s))
     ;; bool _port_b_tx
       (if _port_b_tx (write-byte -1 s) (write-byte 0 s))
     ;; bool _port_c_rx
       (if _port_c_rx (write-byte -1 s) (write-byte 0 s))
     ;; bool _port_c_tx
       (if _port_c_tx (write-byte -1 s) (write-byte 0 s))
     ;; bool _port_d_rx
       (if _port_d_rx (write-byte -1 s) (write-byte 0 s))
     ;; bool _port_d_tx
       (if _port_d_tx (write-byte -1 s) (write-byte 0 s))
     ;; bool _port_e_rx
       (if _port_e_rx (write-byte -1 s) (write-byte 0 s))
     ;; bool _port_e_tx
       (if _port_e_tx (write-byte -1 s) (write-byte 0 s))
     ;; bool _can_rx
       (if _can_rx (write-byte -1 s) (write-byte 0 s))
     ;; bool _can_tx
       (if _can_tx (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _can_status
       (write-byte _can_status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _port_a
     (setq _port_a (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _port_b
     (setq _port_b (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _port_c
     (setq _port_c (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _port_d
     (setq _port_d (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _port_e
     (setq _port_e (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _port_a_rx
     (setq _port_a_rx (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _port_a_tx
     (setq _port_a_tx (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _port_b_rx
     (setq _port_b_rx (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _port_b_tx
     (setq _port_b_tx (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _port_c_rx
     (setq _port_c_rx (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _port_c_tx
     (setq _port_c_tx (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _port_d_rx
     (setq _port_d_rx (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _port_d_tx
     (setq _port_d_tx (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _port_e_rx
     (setq _port_e_rx (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _port_e_tx
     (setq _port_e_tx (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _can_rx
     (setq _can_rx (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _can_tx
     (setq _can_tx (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _can_status
     (setq _can_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get sbg_driver::SbgStatusCom :md5sum-) "0586194daf83121bc54eda7bece4880f")
(setf (get sbg_driver::SbgStatusCom :datatype-) "sbg_driver/SbgStatusCom")
(setf (get sbg_driver::SbgStatusCom :definition-)
      "# SBG Ellipse Messages
# SbgStatus submessage

# PORT A: False in case of low level communication error.
bool port_a

# PORT B: False in case of low level communication error.
bool port_b

# PORT C: False in case of low level communication error.
bool port_c

# PORT D: False in case of low level communication error.
bool port_d

# PORT E: False in case of low level communication error.
bool port_e

# PORT A RX: False in case of saturation on PORT A input
bool port_a_rx

# PORT A TX: False in case of saturation on PORT A output
bool port_a_tx

# PORT B RX: False in case of saturation on PORT B input
bool port_b_rx

# PORT B TX: False in case of saturation on PORT B output
bool port_b_tx

# PORT C RX: False in case of saturation on PORT C input
bool port_c_rx

# PORT C TX: False in case of saturation on PORT C output
bool port_c_tx

# PORT D RX: False in case of saturation on PORT D input
bool port_d_rx

# PORT D TX: False in case of saturation on PORT D output
bool port_d_tx

# PORT E RX: False in case of saturation on PORT E input
bool port_e_rx

# PORT E TX: False in case of saturation on PORT E output
bool port_e_tx

# CAN RX: False in case of saturation on CAN Bus output buffer
bool can_rx

# CAN TX: False in case of saturation on CAN Bus input buffer
bool can_tx

# CAN BUS
# 0 CAN BUS OFF 		Bus OFF operation due to too much errors.
# 1 CAN BUS TX_RX_ERR 	Transmit or received error.
# 2 CAN BUS OK 			The CAN bus is working correctly.
# 3 CAN BUS ERROR 		A general error has occurred on the CAN bus.
uint8 can_status
")



(provide :sbg_driver/SbgStatusCom "0586194daf83121bc54eda7bece4880f")


