// Auto-generated. Do not edit!

// (in-package sbg_driver.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SbgStatusGeneral = require('./SbgStatusGeneral.js');
let SbgStatusCom = require('./SbgStatusCom.js');
let SbgStatusAiding = require('./SbgStatusAiding.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SbgStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.time_stamp = null;
      this.status_general = null;
      this.status_com = null;
      this.status_aiding = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('time_stamp')) {
        this.time_stamp = initObj.time_stamp
      }
      else {
        this.time_stamp = 0;
      }
      if (initObj.hasOwnProperty('status_general')) {
        this.status_general = initObj.status_general
      }
      else {
        this.status_general = new SbgStatusGeneral();
      }
      if (initObj.hasOwnProperty('status_com')) {
        this.status_com = initObj.status_com
      }
      else {
        this.status_com = new SbgStatusCom();
      }
      if (initObj.hasOwnProperty('status_aiding')) {
        this.status_aiding = initObj.status_aiding
      }
      else {
        this.status_aiding = new SbgStatusAiding();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SbgStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [time_stamp]
    bufferOffset = _serializer.uint32(obj.time_stamp, buffer, bufferOffset);
    // Serialize message field [status_general]
    bufferOffset = SbgStatusGeneral.serialize(obj.status_general, buffer, bufferOffset);
    // Serialize message field [status_com]
    bufferOffset = SbgStatusCom.serialize(obj.status_com, buffer, bufferOffset);
    // Serialize message field [status_aiding]
    bufferOffset = SbgStatusAiding.serialize(obj.status_aiding, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SbgStatus
    let len;
    let data = new SbgStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [time_stamp]
    data.time_stamp = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [status_general]
    data.status_general = SbgStatusGeneral.deserialize(buffer, bufferOffset);
    // Deserialize message field [status_com]
    data.status_com = SbgStatusCom.deserialize(buffer, bufferOffset);
    // Deserialize message field [status_aiding]
    data.status_aiding = SbgStatusAiding.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 34;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sbg_driver/SbgStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1b73c890bd111d40339f4be9a7495e96';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # SBG Ellipse Messages
    
    Header header
    
    # Time since sensor is powered up (in us)
    uint32 time_stamp
    
    # General status bitmask and enums
    SbgStatusGeneral status_general
    
    # Communication status bitmask and enums.
    SbgStatusCom status_com
    
    # Aiding equipments status bitmask and enums.
    SbgStatusAiding status_aiding
    
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
    
    ================================================================================
    MSG: sbg_driver/SbgStatusGeneral
    # SBG Ellipse Messages
    # SbgStatus submessage
    
    # General main power
    # True when main power supply is OK.
    bool main_power
    
    # General imu power
    # True when IMU power supply is OK.
    bool imu_power
    
    # General gps power
    # Set to True when GPS power supply is OK.
    bool gps_power
    
    # General Settings
    # True if settings were correctly loaded
    bool settings
    
    # General Temperature
    # True when temperature is within specified limits.
    bool temperature
    ================================================================================
    MSG: sbg_driver/SbgStatusCom
    # SBG Ellipse Messages
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
    ================================================================================
    MSG: sbg_driver/SbgStatusAiding
    # SBG Ellipse Messages
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SbgStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.time_stamp !== undefined) {
      resolved.time_stamp = msg.time_stamp;
    }
    else {
      resolved.time_stamp = 0
    }

    if (msg.status_general !== undefined) {
      resolved.status_general = SbgStatusGeneral.Resolve(msg.status_general)
    }
    else {
      resolved.status_general = new SbgStatusGeneral()
    }

    if (msg.status_com !== undefined) {
      resolved.status_com = SbgStatusCom.Resolve(msg.status_com)
    }
    else {
      resolved.status_com = new SbgStatusCom()
    }

    if (msg.status_aiding !== undefined) {
      resolved.status_aiding = SbgStatusAiding.Resolve(msg.status_aiding)
    }
    else {
      resolved.status_aiding = new SbgStatusAiding()
    }

    return resolved;
    }
};

module.exports = SbgStatus;
