; Auto-generated. Do not edit!


(cl:in-package sbg_driver-msg)


;//! \htmlinclude SbgStatusCom.msg.html

(cl:defclass <SbgStatusCom> (roslisp-msg-protocol:ros-message)
  ((port_a
    :reader port_a
    :initarg :port_a
    :type cl:boolean
    :initform cl:nil)
   (port_b
    :reader port_b
    :initarg :port_b
    :type cl:boolean
    :initform cl:nil)
   (port_c
    :reader port_c
    :initarg :port_c
    :type cl:boolean
    :initform cl:nil)
   (port_d
    :reader port_d
    :initarg :port_d
    :type cl:boolean
    :initform cl:nil)
   (port_e
    :reader port_e
    :initarg :port_e
    :type cl:boolean
    :initform cl:nil)
   (port_a_rx
    :reader port_a_rx
    :initarg :port_a_rx
    :type cl:boolean
    :initform cl:nil)
   (port_a_tx
    :reader port_a_tx
    :initarg :port_a_tx
    :type cl:boolean
    :initform cl:nil)
   (port_b_rx
    :reader port_b_rx
    :initarg :port_b_rx
    :type cl:boolean
    :initform cl:nil)
   (port_b_tx
    :reader port_b_tx
    :initarg :port_b_tx
    :type cl:boolean
    :initform cl:nil)
   (port_c_rx
    :reader port_c_rx
    :initarg :port_c_rx
    :type cl:boolean
    :initform cl:nil)
   (port_c_tx
    :reader port_c_tx
    :initarg :port_c_tx
    :type cl:boolean
    :initform cl:nil)
   (port_d_rx
    :reader port_d_rx
    :initarg :port_d_rx
    :type cl:boolean
    :initform cl:nil)
   (port_d_tx
    :reader port_d_tx
    :initarg :port_d_tx
    :type cl:boolean
    :initform cl:nil)
   (port_e_rx
    :reader port_e_rx
    :initarg :port_e_rx
    :type cl:boolean
    :initform cl:nil)
   (port_e_tx
    :reader port_e_tx
    :initarg :port_e_tx
    :type cl:boolean
    :initform cl:nil)
   (can_rx
    :reader can_rx
    :initarg :can_rx
    :type cl:boolean
    :initform cl:nil)
   (can_tx
    :reader can_tx
    :initarg :can_tx
    :type cl:boolean
    :initform cl:nil)
   (can_status
    :reader can_status
    :initarg :can_status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SbgStatusCom (<SbgStatusCom>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SbgStatusCom>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SbgStatusCom)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sbg_driver-msg:<SbgStatusCom> is deprecated: use sbg_driver-msg:SbgStatusCom instead.")))

(cl:ensure-generic-function 'port_a-val :lambda-list '(m))
(cl:defmethod port_a-val ((m <SbgStatusCom>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:port_a-val is deprecated.  Use sbg_driver-msg:port_a instead.")
  (port_a m))

(cl:ensure-generic-function 'port_b-val :lambda-list '(m))
(cl:defmethod port_b-val ((m <SbgStatusCom>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:port_b-val is deprecated.  Use sbg_driver-msg:port_b instead.")
  (port_b m))

(cl:ensure-generic-function 'port_c-val :lambda-list '(m))
(cl:defmethod port_c-val ((m <SbgStatusCom>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:port_c-val is deprecated.  Use sbg_driver-msg:port_c instead.")
  (port_c m))

(cl:ensure-generic-function 'port_d-val :lambda-list '(m))
(cl:defmethod port_d-val ((m <SbgStatusCom>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:port_d-val is deprecated.  Use sbg_driver-msg:port_d instead.")
  (port_d m))

(cl:ensure-generic-function 'port_e-val :lambda-list '(m))
(cl:defmethod port_e-val ((m <SbgStatusCom>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:port_e-val is deprecated.  Use sbg_driver-msg:port_e instead.")
  (port_e m))

(cl:ensure-generic-function 'port_a_rx-val :lambda-list '(m))
(cl:defmethod port_a_rx-val ((m <SbgStatusCom>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:port_a_rx-val is deprecated.  Use sbg_driver-msg:port_a_rx instead.")
  (port_a_rx m))

(cl:ensure-generic-function 'port_a_tx-val :lambda-list '(m))
(cl:defmethod port_a_tx-val ((m <SbgStatusCom>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:port_a_tx-val is deprecated.  Use sbg_driver-msg:port_a_tx instead.")
  (port_a_tx m))

(cl:ensure-generic-function 'port_b_rx-val :lambda-list '(m))
(cl:defmethod port_b_rx-val ((m <SbgStatusCom>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:port_b_rx-val is deprecated.  Use sbg_driver-msg:port_b_rx instead.")
  (port_b_rx m))

(cl:ensure-generic-function 'port_b_tx-val :lambda-list '(m))
(cl:defmethod port_b_tx-val ((m <SbgStatusCom>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:port_b_tx-val is deprecated.  Use sbg_driver-msg:port_b_tx instead.")
  (port_b_tx m))

(cl:ensure-generic-function 'port_c_rx-val :lambda-list '(m))
(cl:defmethod port_c_rx-val ((m <SbgStatusCom>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:port_c_rx-val is deprecated.  Use sbg_driver-msg:port_c_rx instead.")
  (port_c_rx m))

(cl:ensure-generic-function 'port_c_tx-val :lambda-list '(m))
(cl:defmethod port_c_tx-val ((m <SbgStatusCom>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:port_c_tx-val is deprecated.  Use sbg_driver-msg:port_c_tx instead.")
  (port_c_tx m))

(cl:ensure-generic-function 'port_d_rx-val :lambda-list '(m))
(cl:defmethod port_d_rx-val ((m <SbgStatusCom>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:port_d_rx-val is deprecated.  Use sbg_driver-msg:port_d_rx instead.")
  (port_d_rx m))

(cl:ensure-generic-function 'port_d_tx-val :lambda-list '(m))
(cl:defmethod port_d_tx-val ((m <SbgStatusCom>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:port_d_tx-val is deprecated.  Use sbg_driver-msg:port_d_tx instead.")
  (port_d_tx m))

(cl:ensure-generic-function 'port_e_rx-val :lambda-list '(m))
(cl:defmethod port_e_rx-val ((m <SbgStatusCom>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:port_e_rx-val is deprecated.  Use sbg_driver-msg:port_e_rx instead.")
  (port_e_rx m))

(cl:ensure-generic-function 'port_e_tx-val :lambda-list '(m))
(cl:defmethod port_e_tx-val ((m <SbgStatusCom>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:port_e_tx-val is deprecated.  Use sbg_driver-msg:port_e_tx instead.")
  (port_e_tx m))

(cl:ensure-generic-function 'can_rx-val :lambda-list '(m))
(cl:defmethod can_rx-val ((m <SbgStatusCom>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:can_rx-val is deprecated.  Use sbg_driver-msg:can_rx instead.")
  (can_rx m))

(cl:ensure-generic-function 'can_tx-val :lambda-list '(m))
(cl:defmethod can_tx-val ((m <SbgStatusCom>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:can_tx-val is deprecated.  Use sbg_driver-msg:can_tx instead.")
  (can_tx m))

(cl:ensure-generic-function 'can_status-val :lambda-list '(m))
(cl:defmethod can_status-val ((m <SbgStatusCom>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sbg_driver-msg:can_status-val is deprecated.  Use sbg_driver-msg:can_status instead.")
  (can_status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SbgStatusCom>) ostream)
  "Serializes a message object of type '<SbgStatusCom>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'port_a) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'port_b) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'port_c) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'port_d) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'port_e) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'port_a_rx) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'port_a_tx) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'port_b_rx) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'port_b_tx) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'port_c_rx) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'port_c_tx) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'port_d_rx) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'port_d_tx) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'port_e_rx) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'port_e_tx) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'can_rx) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'can_tx) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'can_status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SbgStatusCom>) istream)
  "Deserializes a message object of type '<SbgStatusCom>"
    (cl:setf (cl:slot-value msg 'port_a) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'port_b) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'port_c) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'port_d) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'port_e) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'port_a_rx) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'port_a_tx) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'port_b_rx) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'port_b_tx) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'port_c_rx) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'port_c_tx) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'port_d_rx) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'port_d_tx) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'port_e_rx) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'port_e_tx) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'can_rx) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'can_tx) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'can_status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SbgStatusCom>)))
  "Returns string type for a message object of type '<SbgStatusCom>"
  "sbg_driver/SbgStatusCom")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SbgStatusCom)))
  "Returns string type for a message object of type 'SbgStatusCom"
  "sbg_driver/SbgStatusCom")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SbgStatusCom>)))
  "Returns md5sum for a message object of type '<SbgStatusCom>"
  "0586194daf83121bc54eda7bece4880f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SbgStatusCom)))
  "Returns md5sum for a message object of type 'SbgStatusCom"
  "0586194daf83121bc54eda7bece4880f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SbgStatusCom>)))
  "Returns full string definition for message of type '<SbgStatusCom>"
  (cl:format cl:nil "# SBG Ellipse Messages~%# SbgStatus submessage~%~%# PORT A: False in case of low level communication error.~%bool port_a~%~%# PORT B: False in case of low level communication error.~%bool port_b~%~%# PORT C: False in case of low level communication error.~%bool port_c~%~%# PORT D: False in case of low level communication error.~%bool port_d~%~%# PORT E: False in case of low level communication error.~%bool port_e~%~%# PORT A RX: False in case of saturation on PORT A input~%bool port_a_rx~%~%# PORT A TX: False in case of saturation on PORT A output~%bool port_a_tx~%~%# PORT B RX: False in case of saturation on PORT B input~%bool port_b_rx~%~%# PORT B TX: False in case of saturation on PORT B output~%bool port_b_tx~%~%# PORT C RX: False in case of saturation on PORT C input~%bool port_c_rx~%~%# PORT C TX: False in case of saturation on PORT C output~%bool port_c_tx~%~%# PORT D RX: False in case of saturation on PORT D input~%bool port_d_rx~%~%# PORT D TX: False in case of saturation on PORT D output~%bool port_d_tx~%~%# PORT E RX: False in case of saturation on PORT E input~%bool port_e_rx~%~%# PORT E TX: False in case of saturation on PORT E output~%bool port_e_tx~%~%# CAN RX: False in case of saturation on CAN Bus output buffer~%bool can_rx~%~%# CAN TX: False in case of saturation on CAN Bus input buffer~%bool can_tx~%~%# CAN BUS~%# 0 CAN BUS OFF 		Bus OFF operation due to too much errors.~%# 1 CAN BUS TX_RX_ERR 	Transmit or received error.~%# 2 CAN BUS OK 			The CAN bus is working correctly.~%# 3 CAN BUS ERROR 		A general error has occurred on the CAN bus.~%uint8 can_status~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SbgStatusCom)))
  "Returns full string definition for message of type 'SbgStatusCom"
  (cl:format cl:nil "# SBG Ellipse Messages~%# SbgStatus submessage~%~%# PORT A: False in case of low level communication error.~%bool port_a~%~%# PORT B: False in case of low level communication error.~%bool port_b~%~%# PORT C: False in case of low level communication error.~%bool port_c~%~%# PORT D: False in case of low level communication error.~%bool port_d~%~%# PORT E: False in case of low level communication error.~%bool port_e~%~%# PORT A RX: False in case of saturation on PORT A input~%bool port_a_rx~%~%# PORT A TX: False in case of saturation on PORT A output~%bool port_a_tx~%~%# PORT B RX: False in case of saturation on PORT B input~%bool port_b_rx~%~%# PORT B TX: False in case of saturation on PORT B output~%bool port_b_tx~%~%# PORT C RX: False in case of saturation on PORT C input~%bool port_c_rx~%~%# PORT C TX: False in case of saturation on PORT C output~%bool port_c_tx~%~%# PORT D RX: False in case of saturation on PORT D input~%bool port_d_rx~%~%# PORT D TX: False in case of saturation on PORT D output~%bool port_d_tx~%~%# PORT E RX: False in case of saturation on PORT E input~%bool port_e_rx~%~%# PORT E TX: False in case of saturation on PORT E output~%bool port_e_tx~%~%# CAN RX: False in case of saturation on CAN Bus output buffer~%bool can_rx~%~%# CAN TX: False in case of saturation on CAN Bus input buffer~%bool can_tx~%~%# CAN BUS~%# 0 CAN BUS OFF 		Bus OFF operation due to too much errors.~%# 1 CAN BUS TX_RX_ERR 	Transmit or received error.~%# 2 CAN BUS OK 			The CAN bus is working correctly.~%# 3 CAN BUS ERROR 		A general error has occurred on the CAN bus.~%uint8 can_status~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SbgStatusCom>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SbgStatusCom>))
  "Converts a ROS message object to a list"
  (cl:list 'SbgStatusCom
    (cl:cons ':port_a (port_a msg))
    (cl:cons ':port_b (port_b msg))
    (cl:cons ':port_c (port_c msg))
    (cl:cons ':port_d (port_d msg))
    (cl:cons ':port_e (port_e msg))
    (cl:cons ':port_a_rx (port_a_rx msg))
    (cl:cons ':port_a_tx (port_a_tx msg))
    (cl:cons ':port_b_rx (port_b_rx msg))
    (cl:cons ':port_b_tx (port_b_tx msg))
    (cl:cons ':port_c_rx (port_c_rx msg))
    (cl:cons ':port_c_tx (port_c_tx msg))
    (cl:cons ':port_d_rx (port_d_rx msg))
    (cl:cons ':port_d_tx (port_d_tx msg))
    (cl:cons ':port_e_rx (port_e_rx msg))
    (cl:cons ':port_e_tx (port_e_tx msg))
    (cl:cons ':can_rx (can_rx msg))
    (cl:cons ':can_tx (can_tx msg))
    (cl:cons ':can_status (can_status msg))
))
