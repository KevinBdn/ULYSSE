// Auto-generated. Do not edit!

// (in-package sbg_driver.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class SbgStatusCom {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.port_a = null;
      this.port_b = null;
      this.port_c = null;
      this.port_d = null;
      this.port_e = null;
      this.port_a_rx = null;
      this.port_a_tx = null;
      this.port_b_rx = null;
      this.port_b_tx = null;
      this.port_c_rx = null;
      this.port_c_tx = null;
      this.port_d_rx = null;
      this.port_d_tx = null;
      this.port_e_rx = null;
      this.port_e_tx = null;
      this.can_rx = null;
      this.can_tx = null;
      this.can_status = null;
    }
    else {
      if (initObj.hasOwnProperty('port_a')) {
        this.port_a = initObj.port_a
      }
      else {
        this.port_a = false;
      }
      if (initObj.hasOwnProperty('port_b')) {
        this.port_b = initObj.port_b
      }
      else {
        this.port_b = false;
      }
      if (initObj.hasOwnProperty('port_c')) {
        this.port_c = initObj.port_c
      }
      else {
        this.port_c = false;
      }
      if (initObj.hasOwnProperty('port_d')) {
        this.port_d = initObj.port_d
      }
      else {
        this.port_d = false;
      }
      if (initObj.hasOwnProperty('port_e')) {
        this.port_e = initObj.port_e
      }
      else {
        this.port_e = false;
      }
      if (initObj.hasOwnProperty('port_a_rx')) {
        this.port_a_rx = initObj.port_a_rx
      }
      else {
        this.port_a_rx = false;
      }
      if (initObj.hasOwnProperty('port_a_tx')) {
        this.port_a_tx = initObj.port_a_tx
      }
      else {
        this.port_a_tx = false;
      }
      if (initObj.hasOwnProperty('port_b_rx')) {
        this.port_b_rx = initObj.port_b_rx
      }
      else {
        this.port_b_rx = false;
      }
      if (initObj.hasOwnProperty('port_b_tx')) {
        this.port_b_tx = initObj.port_b_tx
      }
      else {
        this.port_b_tx = false;
      }
      if (initObj.hasOwnProperty('port_c_rx')) {
        this.port_c_rx = initObj.port_c_rx
      }
      else {
        this.port_c_rx = false;
      }
      if (initObj.hasOwnProperty('port_c_tx')) {
        this.port_c_tx = initObj.port_c_tx
      }
      else {
        this.port_c_tx = false;
      }
      if (initObj.hasOwnProperty('port_d_rx')) {
        this.port_d_rx = initObj.port_d_rx
      }
      else {
        this.port_d_rx = false;
      }
      if (initObj.hasOwnProperty('port_d_tx')) {
        this.port_d_tx = initObj.port_d_tx
      }
      else {
        this.port_d_tx = false;
      }
      if (initObj.hasOwnProperty('port_e_rx')) {
        this.port_e_rx = initObj.port_e_rx
      }
      else {
        this.port_e_rx = false;
      }
      if (initObj.hasOwnProperty('port_e_tx')) {
        this.port_e_tx = initObj.port_e_tx
      }
      else {
        this.port_e_tx = false;
      }
      if (initObj.hasOwnProperty('can_rx')) {
        this.can_rx = initObj.can_rx
      }
      else {
        this.can_rx = false;
      }
      if (initObj.hasOwnProperty('can_tx')) {
        this.can_tx = initObj.can_tx
      }
      else {
        this.can_tx = false;
      }
      if (initObj.hasOwnProperty('can_status')) {
        this.can_status = initObj.can_status
      }
      else {
        this.can_status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SbgStatusCom
    // Serialize message field [port_a]
    bufferOffset = _serializer.bool(obj.port_a, buffer, bufferOffset);
    // Serialize message field [port_b]
    bufferOffset = _serializer.bool(obj.port_b, buffer, bufferOffset);
    // Serialize message field [port_c]
    bufferOffset = _serializer.bool(obj.port_c, buffer, bufferOffset);
    // Serialize message field [port_d]
    bufferOffset = _serializer.bool(obj.port_d, buffer, bufferOffset);
    // Serialize message field [port_e]
    bufferOffset = _serializer.bool(obj.port_e, buffer, bufferOffset);
    // Serialize message field [port_a_rx]
    bufferOffset = _serializer.bool(obj.port_a_rx, buffer, bufferOffset);
    // Serialize message field [port_a_tx]
    bufferOffset = _serializer.bool(obj.port_a_tx, buffer, bufferOffset);
    // Serialize message field [port_b_rx]
    bufferOffset = _serializer.bool(obj.port_b_rx, buffer, bufferOffset);
    // Serialize message field [port_b_tx]
    bufferOffset = _serializer.bool(obj.port_b_tx, buffer, bufferOffset);
    // Serialize message field [port_c_rx]
    bufferOffset = _serializer.bool(obj.port_c_rx, buffer, bufferOffset);
    // Serialize message field [port_c_tx]
    bufferOffset = _serializer.bool(obj.port_c_tx, buffer, bufferOffset);
    // Serialize message field [port_d_rx]
    bufferOffset = _serializer.bool(obj.port_d_rx, buffer, bufferOffset);
    // Serialize message field [port_d_tx]
    bufferOffset = _serializer.bool(obj.port_d_tx, buffer, bufferOffset);
    // Serialize message field [port_e_rx]
    bufferOffset = _serializer.bool(obj.port_e_rx, buffer, bufferOffset);
    // Serialize message field [port_e_tx]
    bufferOffset = _serializer.bool(obj.port_e_tx, buffer, bufferOffset);
    // Serialize message field [can_rx]
    bufferOffset = _serializer.bool(obj.can_rx, buffer, bufferOffset);
    // Serialize message field [can_tx]
    bufferOffset = _serializer.bool(obj.can_tx, buffer, bufferOffset);
    // Serialize message field [can_status]
    bufferOffset = _serializer.uint8(obj.can_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SbgStatusCom
    let len;
    let data = new SbgStatusCom(null);
    // Deserialize message field [port_a]
    data.port_a = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [port_b]
    data.port_b = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [port_c]
    data.port_c = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [port_d]
    data.port_d = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [port_e]
    data.port_e = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [port_a_rx]
    data.port_a_rx = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [port_a_tx]
    data.port_a_tx = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [port_b_rx]
    data.port_b_rx = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [port_b_tx]
    data.port_b_tx = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [port_c_rx]
    data.port_c_rx = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [port_c_tx]
    data.port_c_tx = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [port_d_rx]
    data.port_d_rx = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [port_d_tx]
    data.port_d_tx = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [port_e_rx]
    data.port_e_rx = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [port_e_tx]
    data.port_e_tx = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [can_rx]
    data.can_rx = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [can_tx]
    data.can_tx = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [can_status]
    data.can_status = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 18;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sbg_driver/SbgStatusCom';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0586194daf83121bc54eda7bece4880f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SbgStatusCom(null);
    if (msg.port_a !== undefined) {
      resolved.port_a = msg.port_a;
    }
    else {
      resolved.port_a = false
    }

    if (msg.port_b !== undefined) {
      resolved.port_b = msg.port_b;
    }
    else {
      resolved.port_b = false
    }

    if (msg.port_c !== undefined) {
      resolved.port_c = msg.port_c;
    }
    else {
      resolved.port_c = false
    }

    if (msg.port_d !== undefined) {
      resolved.port_d = msg.port_d;
    }
    else {
      resolved.port_d = false
    }

    if (msg.port_e !== undefined) {
      resolved.port_e = msg.port_e;
    }
    else {
      resolved.port_e = false
    }

    if (msg.port_a_rx !== undefined) {
      resolved.port_a_rx = msg.port_a_rx;
    }
    else {
      resolved.port_a_rx = false
    }

    if (msg.port_a_tx !== undefined) {
      resolved.port_a_tx = msg.port_a_tx;
    }
    else {
      resolved.port_a_tx = false
    }

    if (msg.port_b_rx !== undefined) {
      resolved.port_b_rx = msg.port_b_rx;
    }
    else {
      resolved.port_b_rx = false
    }

    if (msg.port_b_tx !== undefined) {
      resolved.port_b_tx = msg.port_b_tx;
    }
    else {
      resolved.port_b_tx = false
    }

    if (msg.port_c_rx !== undefined) {
      resolved.port_c_rx = msg.port_c_rx;
    }
    else {
      resolved.port_c_rx = false
    }

    if (msg.port_c_tx !== undefined) {
      resolved.port_c_tx = msg.port_c_tx;
    }
    else {
      resolved.port_c_tx = false
    }

    if (msg.port_d_rx !== undefined) {
      resolved.port_d_rx = msg.port_d_rx;
    }
    else {
      resolved.port_d_rx = false
    }

    if (msg.port_d_tx !== undefined) {
      resolved.port_d_tx = msg.port_d_tx;
    }
    else {
      resolved.port_d_tx = false
    }

    if (msg.port_e_rx !== undefined) {
      resolved.port_e_rx = msg.port_e_rx;
    }
    else {
      resolved.port_e_rx = false
    }

    if (msg.port_e_tx !== undefined) {
      resolved.port_e_tx = msg.port_e_tx;
    }
    else {
      resolved.port_e_tx = false
    }

    if (msg.can_rx !== undefined) {
      resolved.can_rx = msg.can_rx;
    }
    else {
      resolved.can_rx = false
    }

    if (msg.can_tx !== undefined) {
      resolved.can_tx = msg.can_tx;
    }
    else {
      resolved.can_tx = false
    }

    if (msg.can_status !== undefined) {
      resolved.can_status = msg.can_status;
    }
    else {
      resolved.can_status = 0
    }

    return resolved;
    }
};

module.exports = SbgStatusCom;
