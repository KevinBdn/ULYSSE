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

class SbgAirDataStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.is_delay_time = null;
      this.pressure_valid = null;
      this.altitude_valid = null;
      this.pressure_diff_valid = null;
      this.air_speed_valid = null;
      this.air_temperature_valid = null;
    }
    else {
      if (initObj.hasOwnProperty('is_delay_time')) {
        this.is_delay_time = initObj.is_delay_time
      }
      else {
        this.is_delay_time = false;
      }
      if (initObj.hasOwnProperty('pressure_valid')) {
        this.pressure_valid = initObj.pressure_valid
      }
      else {
        this.pressure_valid = false;
      }
      if (initObj.hasOwnProperty('altitude_valid')) {
        this.altitude_valid = initObj.altitude_valid
      }
      else {
        this.altitude_valid = false;
      }
      if (initObj.hasOwnProperty('pressure_diff_valid')) {
        this.pressure_diff_valid = initObj.pressure_diff_valid
      }
      else {
        this.pressure_diff_valid = false;
      }
      if (initObj.hasOwnProperty('air_speed_valid')) {
        this.air_speed_valid = initObj.air_speed_valid
      }
      else {
        this.air_speed_valid = false;
      }
      if (initObj.hasOwnProperty('air_temperature_valid')) {
        this.air_temperature_valid = initObj.air_temperature_valid
      }
      else {
        this.air_temperature_valid = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SbgAirDataStatus
    // Serialize message field [is_delay_time]
    bufferOffset = _serializer.bool(obj.is_delay_time, buffer, bufferOffset);
    // Serialize message field [pressure_valid]
    bufferOffset = _serializer.bool(obj.pressure_valid, buffer, bufferOffset);
    // Serialize message field [altitude_valid]
    bufferOffset = _serializer.bool(obj.altitude_valid, buffer, bufferOffset);
    // Serialize message field [pressure_diff_valid]
    bufferOffset = _serializer.bool(obj.pressure_diff_valid, buffer, bufferOffset);
    // Serialize message field [air_speed_valid]
    bufferOffset = _serializer.bool(obj.air_speed_valid, buffer, bufferOffset);
    // Serialize message field [air_temperature_valid]
    bufferOffset = _serializer.bool(obj.air_temperature_valid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SbgAirDataStatus
    let len;
    let data = new SbgAirDataStatus(null);
    // Deserialize message field [is_delay_time]
    data.is_delay_time = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [pressure_valid]
    data.pressure_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [altitude_valid]
    data.altitude_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [pressure_diff_valid]
    data.pressure_diff_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [air_speed_valid]
    data.air_speed_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [air_temperature_valid]
    data.air_temperature_valid = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sbg_driver/SbgAirDataStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7a096a0984e0fe096308cfb42a254e4a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # SBG Ellipse Messages
    # Submessage
    
    # True if the time stamp field represents a delay instead of an absolute time stamp.
    bool is_delay_time
    
    # True if the pressure field is filled and valid.
    bool pressure_valid
    
    # True if the barometric altitude field is filled and valid.
    bool altitude_valid
    
    # True if the differential pressure field is filled and valid.
    bool pressure_diff_valid
    
    # True if the true airspeed field is filled and valid.
    bool air_speed_valid
    
    # True if the output air temperature field is filled and valid.
    bool air_temperature_valid
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SbgAirDataStatus(null);
    if (msg.is_delay_time !== undefined) {
      resolved.is_delay_time = msg.is_delay_time;
    }
    else {
      resolved.is_delay_time = false
    }

    if (msg.pressure_valid !== undefined) {
      resolved.pressure_valid = msg.pressure_valid;
    }
    else {
      resolved.pressure_valid = false
    }

    if (msg.altitude_valid !== undefined) {
      resolved.altitude_valid = msg.altitude_valid;
    }
    else {
      resolved.altitude_valid = false
    }

    if (msg.pressure_diff_valid !== undefined) {
      resolved.pressure_diff_valid = msg.pressure_diff_valid;
    }
    else {
      resolved.pressure_diff_valid = false
    }

    if (msg.air_speed_valid !== undefined) {
      resolved.air_speed_valid = msg.air_speed_valid;
    }
    else {
      resolved.air_speed_valid = false
    }

    if (msg.air_temperature_valid !== undefined) {
      resolved.air_temperature_valid = msg.air_temperature_valid;
    }
    else {
      resolved.air_temperature_valid = false
    }

    return resolved;
    }
};

module.exports = SbgAirDataStatus;
