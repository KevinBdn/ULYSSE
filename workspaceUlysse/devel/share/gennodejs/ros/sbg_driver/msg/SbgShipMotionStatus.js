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

class SbgShipMotionStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.heave_valid = null;
      this.heave_vel_aided = null;
      this.period_available = null;
      this.period_valid = null;
    }
    else {
      if (initObj.hasOwnProperty('heave_valid')) {
        this.heave_valid = initObj.heave_valid
      }
      else {
        this.heave_valid = false;
      }
      if (initObj.hasOwnProperty('heave_vel_aided')) {
        this.heave_vel_aided = initObj.heave_vel_aided
      }
      else {
        this.heave_vel_aided = false;
      }
      if (initObj.hasOwnProperty('period_available')) {
        this.period_available = initObj.period_available
      }
      else {
        this.period_available = false;
      }
      if (initObj.hasOwnProperty('period_valid')) {
        this.period_valid = initObj.period_valid
      }
      else {
        this.period_valid = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SbgShipMotionStatus
    // Serialize message field [heave_valid]
    bufferOffset = _serializer.bool(obj.heave_valid, buffer, bufferOffset);
    // Serialize message field [heave_vel_aided]
    bufferOffset = _serializer.bool(obj.heave_vel_aided, buffer, bufferOffset);
    // Serialize message field [period_available]
    bufferOffset = _serializer.bool(obj.period_available, buffer, bufferOffset);
    // Serialize message field [period_valid]
    bufferOffset = _serializer.bool(obj.period_valid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SbgShipMotionStatus
    let len;
    let data = new SbgShipMotionStatus(null);
    // Deserialize message field [heave_valid]
    data.heave_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [heave_vel_aided]
    data.heave_vel_aided = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [period_available]
    data.period_available = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [period_valid]
    data.period_valid = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sbg_driver/SbgShipMotionStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a834637d2b283cc5378d30ef92fcf13a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # SBG Ellipse Messages
    # SbgShipMotionStatus
    
    # True after heave convergence time.
    # False in following conditions:
    # - Turn occurred and no velocity aiding is available
    # - Heave reached higher/lower limits
    # - If a step is detected and filter has to re-converge
    # - If internal failure
    bool heave_valid
    
    # True if heave output is compensated for transient accelerations
    bool heave_vel_aided
    
    # True if the swell period is provided in this output
    bool period_available
    
    # True if the period returned is assumed to be valid or not.
    bool period_valid
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SbgShipMotionStatus(null);
    if (msg.heave_valid !== undefined) {
      resolved.heave_valid = msg.heave_valid;
    }
    else {
      resolved.heave_valid = false
    }

    if (msg.heave_vel_aided !== undefined) {
      resolved.heave_vel_aided = msg.heave_vel_aided;
    }
    else {
      resolved.heave_vel_aided = false
    }

    if (msg.period_available !== undefined) {
      resolved.period_available = msg.period_available;
    }
    else {
      resolved.period_available = false
    }

    if (msg.period_valid !== undefined) {
      resolved.period_valid = msg.period_valid;
    }
    else {
      resolved.period_valid = false
    }

    return resolved;
    }
};

module.exports = SbgShipMotionStatus;
