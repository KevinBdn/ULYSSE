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

class SbgStatusGeneral {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.main_power = null;
      this.imu_power = null;
      this.gps_power = null;
      this.settings = null;
      this.temperature = null;
    }
    else {
      if (initObj.hasOwnProperty('main_power')) {
        this.main_power = initObj.main_power
      }
      else {
        this.main_power = false;
      }
      if (initObj.hasOwnProperty('imu_power')) {
        this.imu_power = initObj.imu_power
      }
      else {
        this.imu_power = false;
      }
      if (initObj.hasOwnProperty('gps_power')) {
        this.gps_power = initObj.gps_power
      }
      else {
        this.gps_power = false;
      }
      if (initObj.hasOwnProperty('settings')) {
        this.settings = initObj.settings
      }
      else {
        this.settings = false;
      }
      if (initObj.hasOwnProperty('temperature')) {
        this.temperature = initObj.temperature
      }
      else {
        this.temperature = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SbgStatusGeneral
    // Serialize message field [main_power]
    bufferOffset = _serializer.bool(obj.main_power, buffer, bufferOffset);
    // Serialize message field [imu_power]
    bufferOffset = _serializer.bool(obj.imu_power, buffer, bufferOffset);
    // Serialize message field [gps_power]
    bufferOffset = _serializer.bool(obj.gps_power, buffer, bufferOffset);
    // Serialize message field [settings]
    bufferOffset = _serializer.bool(obj.settings, buffer, bufferOffset);
    // Serialize message field [temperature]
    bufferOffset = _serializer.bool(obj.temperature, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SbgStatusGeneral
    let len;
    let data = new SbgStatusGeneral(null);
    // Deserialize message field [main_power]
    data.main_power = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [imu_power]
    data.imu_power = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [gps_power]
    data.gps_power = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [settings]
    data.settings = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [temperature]
    data.temperature = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sbg_driver/SbgStatusGeneral';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '693fdf7e799b5fc52833d1649c048053';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SbgStatusGeneral(null);
    if (msg.main_power !== undefined) {
      resolved.main_power = msg.main_power;
    }
    else {
      resolved.main_power = false
    }

    if (msg.imu_power !== undefined) {
      resolved.imu_power = msg.imu_power;
    }
    else {
      resolved.imu_power = false
    }

    if (msg.gps_power !== undefined) {
      resolved.gps_power = msg.gps_power;
    }
    else {
      resolved.gps_power = false
    }

    if (msg.settings !== undefined) {
      resolved.settings = msg.settings;
    }
    else {
      resolved.settings = false
    }

    if (msg.temperature !== undefined) {
      resolved.temperature = msg.temperature;
    }
    else {
      resolved.temperature = false
    }

    return resolved;
    }
};

module.exports = SbgStatusGeneral;
