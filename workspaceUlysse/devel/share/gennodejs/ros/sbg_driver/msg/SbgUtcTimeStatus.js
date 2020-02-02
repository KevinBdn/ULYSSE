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

class SbgUtcTimeStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.clock_stable = null;
      this.clock_status = null;
      this.clock_utc_sync = null;
      this.clock_utc_status = null;
    }
    else {
      if (initObj.hasOwnProperty('clock_stable')) {
        this.clock_stable = initObj.clock_stable
      }
      else {
        this.clock_stable = false;
      }
      if (initObj.hasOwnProperty('clock_status')) {
        this.clock_status = initObj.clock_status
      }
      else {
        this.clock_status = 0;
      }
      if (initObj.hasOwnProperty('clock_utc_sync')) {
        this.clock_utc_sync = initObj.clock_utc_sync
      }
      else {
        this.clock_utc_sync = false;
      }
      if (initObj.hasOwnProperty('clock_utc_status')) {
        this.clock_utc_status = initObj.clock_utc_status
      }
      else {
        this.clock_utc_status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SbgUtcTimeStatus
    // Serialize message field [clock_stable]
    bufferOffset = _serializer.bool(obj.clock_stable, buffer, bufferOffset);
    // Serialize message field [clock_status]
    bufferOffset = _serializer.uint8(obj.clock_status, buffer, bufferOffset);
    // Serialize message field [clock_utc_sync]
    bufferOffset = _serializer.bool(obj.clock_utc_sync, buffer, bufferOffset);
    // Serialize message field [clock_utc_status]
    bufferOffset = _serializer.uint8(obj.clock_utc_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SbgUtcTimeStatus
    let len;
    let data = new SbgUtcTimeStatus(null);
    // Deserialize message field [clock_stable]
    data.clock_stable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [clock_status]
    data.clock_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [clock_utc_sync]
    data.clock_utc_sync = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [clock_utc_status]
    data.clock_utc_status = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sbg_driver/SbgUtcTimeStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd140f95192866cb459fe7af2851c8eed';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # SBG Ellipse Messages
    
    # True when a clock input can be used to synchronize the internal clock.
    bool clock_stable
    
    # Define the internal clock estimation status
    # 0 An error has occurred on the clock estimation.
    # 1 The clock is only based on the internal crystal.
    # 2 A PPS has been detected and the clock is converging to it.
    # 3 The clock has converged to the PPS and is within 500ns.
    uint8 clock_status
    
    # True if UTC time is synchronized with a PPS
    bool clock_utc_sync
    
    # UTC validity status
    # 0 The UTC time is not known, we are just propagating the UTC time internally.
    # 1 We have received valid UTC time information but we don't have the leap seconds information.
    # 2 We have received valid UTC time data with valid leap seconds.
    uint8 clock_utc_status
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SbgUtcTimeStatus(null);
    if (msg.clock_stable !== undefined) {
      resolved.clock_stable = msg.clock_stable;
    }
    else {
      resolved.clock_stable = false
    }

    if (msg.clock_status !== undefined) {
      resolved.clock_status = msg.clock_status;
    }
    else {
      resolved.clock_status = 0
    }

    if (msg.clock_utc_sync !== undefined) {
      resolved.clock_utc_sync = msg.clock_utc_sync;
    }
    else {
      resolved.clock_utc_sync = false
    }

    if (msg.clock_utc_status !== undefined) {
      resolved.clock_utc_status = msg.clock_utc_status;
    }
    else {
      resolved.clock_utc_status = 0
    }

    return resolved;
    }
};

module.exports = SbgUtcTimeStatus;
