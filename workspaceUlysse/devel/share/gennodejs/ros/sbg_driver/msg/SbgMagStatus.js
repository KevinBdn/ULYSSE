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

class SbgMagStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mag_x = null;
      this.mag_y = null;
      this.mag_z = null;
      this.accel_x = null;
      this.accel_y = null;
      this.accel_z = null;
      this.mags_in_range = null;
      this.accels_in_range = null;
      this.calibration = null;
    }
    else {
      if (initObj.hasOwnProperty('mag_x')) {
        this.mag_x = initObj.mag_x
      }
      else {
        this.mag_x = false;
      }
      if (initObj.hasOwnProperty('mag_y')) {
        this.mag_y = initObj.mag_y
      }
      else {
        this.mag_y = false;
      }
      if (initObj.hasOwnProperty('mag_z')) {
        this.mag_z = initObj.mag_z
      }
      else {
        this.mag_z = false;
      }
      if (initObj.hasOwnProperty('accel_x')) {
        this.accel_x = initObj.accel_x
      }
      else {
        this.accel_x = false;
      }
      if (initObj.hasOwnProperty('accel_y')) {
        this.accel_y = initObj.accel_y
      }
      else {
        this.accel_y = false;
      }
      if (initObj.hasOwnProperty('accel_z')) {
        this.accel_z = initObj.accel_z
      }
      else {
        this.accel_z = false;
      }
      if (initObj.hasOwnProperty('mags_in_range')) {
        this.mags_in_range = initObj.mags_in_range
      }
      else {
        this.mags_in_range = false;
      }
      if (initObj.hasOwnProperty('accels_in_range')) {
        this.accels_in_range = initObj.accels_in_range
      }
      else {
        this.accels_in_range = false;
      }
      if (initObj.hasOwnProperty('calibration')) {
        this.calibration = initObj.calibration
      }
      else {
        this.calibration = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SbgMagStatus
    // Serialize message field [mag_x]
    bufferOffset = _serializer.bool(obj.mag_x, buffer, bufferOffset);
    // Serialize message field [mag_y]
    bufferOffset = _serializer.bool(obj.mag_y, buffer, bufferOffset);
    // Serialize message field [mag_z]
    bufferOffset = _serializer.bool(obj.mag_z, buffer, bufferOffset);
    // Serialize message field [accel_x]
    bufferOffset = _serializer.bool(obj.accel_x, buffer, bufferOffset);
    // Serialize message field [accel_y]
    bufferOffset = _serializer.bool(obj.accel_y, buffer, bufferOffset);
    // Serialize message field [accel_z]
    bufferOffset = _serializer.bool(obj.accel_z, buffer, bufferOffset);
    // Serialize message field [mags_in_range]
    bufferOffset = _serializer.bool(obj.mags_in_range, buffer, bufferOffset);
    // Serialize message field [accels_in_range]
    bufferOffset = _serializer.bool(obj.accels_in_range, buffer, bufferOffset);
    // Serialize message field [calibration]
    bufferOffset = _serializer.bool(obj.calibration, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SbgMagStatus
    let len;
    let data = new SbgMagStatus(null);
    // Deserialize message field [mag_x]
    data.mag_x = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [mag_y]
    data.mag_y = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [mag_z]
    data.mag_z = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [accel_x]
    data.accel_x = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [accel_y]
    data.accel_y = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [accel_z]
    data.accel_z = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [mags_in_range]
    data.mags_in_range = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [accels_in_range]
    data.accels_in_range = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [calibration]
    data.calibration = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sbg_driver/SbgMagStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '057cf294623d5a0b037fdcc47f99e3c4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # SBG Ellipse Messages
    # Submessage
    
    # True if the magnetometer X has passed the self test.
    bool mag_x
    
    # True if the magnetometer Y has passed the self test.
    bool mag_y
    
    # True if the magnetometer Z has passed the self test.
    bool mag_z
    
    # True if the accelerometer X has passed the self test.
    bool accel_x
    
    # True if the accelerometer Y has passed the self test.
    bool accel_y
    
    # True if the accelerometer Z has passed the self test.
    bool accel_z
    
    # True if magnetometer is not saturated
    bool mags_in_range
    
    # True if accelerometer is not saturated
    bool accels_in_range
    
    # True if magnetometer seems to be calibrated
    bool calibration
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SbgMagStatus(null);
    if (msg.mag_x !== undefined) {
      resolved.mag_x = msg.mag_x;
    }
    else {
      resolved.mag_x = false
    }

    if (msg.mag_y !== undefined) {
      resolved.mag_y = msg.mag_y;
    }
    else {
      resolved.mag_y = false
    }

    if (msg.mag_z !== undefined) {
      resolved.mag_z = msg.mag_z;
    }
    else {
      resolved.mag_z = false
    }

    if (msg.accel_x !== undefined) {
      resolved.accel_x = msg.accel_x;
    }
    else {
      resolved.accel_x = false
    }

    if (msg.accel_y !== undefined) {
      resolved.accel_y = msg.accel_y;
    }
    else {
      resolved.accel_y = false
    }

    if (msg.accel_z !== undefined) {
      resolved.accel_z = msg.accel_z;
    }
    else {
      resolved.accel_z = false
    }

    if (msg.mags_in_range !== undefined) {
      resolved.mags_in_range = msg.mags_in_range;
    }
    else {
      resolved.mags_in_range = false
    }

    if (msg.accels_in_range !== undefined) {
      resolved.accels_in_range = msg.accels_in_range;
    }
    else {
      resolved.accels_in_range = false
    }

    if (msg.calibration !== undefined) {
      resolved.calibration = msg.calibration;
    }
    else {
      resolved.calibration = false
    }

    return resolved;
    }
};

module.exports = SbgMagStatus;
