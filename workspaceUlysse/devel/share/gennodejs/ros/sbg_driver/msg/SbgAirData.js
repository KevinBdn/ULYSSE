// Auto-generated. Do not edit!

// (in-package sbg_driver.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SbgAirDataStatus = require('./SbgAirDataStatus.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SbgAirData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.time_stamp = null;
      this.status = null;
      this.pressure_abs = null;
      this.altitude = null;
      this.pressure_diff = null;
      this.true_air_speed = null;
      this.air_temperature = null;
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
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = new SbgAirDataStatus();
      }
      if (initObj.hasOwnProperty('pressure_abs')) {
        this.pressure_abs = initObj.pressure_abs
      }
      else {
        this.pressure_abs = 0.0;
      }
      if (initObj.hasOwnProperty('altitude')) {
        this.altitude = initObj.altitude
      }
      else {
        this.altitude = 0.0;
      }
      if (initObj.hasOwnProperty('pressure_diff')) {
        this.pressure_diff = initObj.pressure_diff
      }
      else {
        this.pressure_diff = 0.0;
      }
      if (initObj.hasOwnProperty('true_air_speed')) {
        this.true_air_speed = initObj.true_air_speed
      }
      else {
        this.true_air_speed = 0.0;
      }
      if (initObj.hasOwnProperty('air_temperature')) {
        this.air_temperature = initObj.air_temperature
      }
      else {
        this.air_temperature = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SbgAirData
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [time_stamp]
    bufferOffset = _serializer.uint32(obj.time_stamp, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = SbgAirDataStatus.serialize(obj.status, buffer, bufferOffset);
    // Serialize message field [pressure_abs]
    bufferOffset = _serializer.float64(obj.pressure_abs, buffer, bufferOffset);
    // Serialize message field [altitude]
    bufferOffset = _serializer.float64(obj.altitude, buffer, bufferOffset);
    // Serialize message field [pressure_diff]
    bufferOffset = _serializer.float64(obj.pressure_diff, buffer, bufferOffset);
    // Serialize message field [true_air_speed]
    bufferOffset = _serializer.float64(obj.true_air_speed, buffer, bufferOffset);
    // Serialize message field [air_temperature]
    bufferOffset = _serializer.float64(obj.air_temperature, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SbgAirData
    let len;
    let data = new SbgAirData(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [time_stamp]
    data.time_stamp = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = SbgAirDataStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [pressure_abs]
    data.pressure_abs = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [altitude]
    data.altitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pressure_diff]
    data.pressure_diff = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [true_air_speed]
    data.true_air_speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [air_temperature]
    data.air_temperature = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 50;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sbg_driver/SbgAirData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f7982abc9b7165b89ea4d8dda93717f9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # SBG Ellipse Messages
    Header header
    
    # Time since sensor is powered up micro s
    uint32 time_stamp
    
    # Airdata sensor status
    SbgAirDataStatus status
    
    # Raw absolute pressure measured by the barometer sensor in Pascals.
    float64 pressure_abs
    
    # Altitude computed from barometric altimeter in meters and positive upward.
    float64 altitude
    
    # Raw differential pressure measured by the pitot tube in Pascal.
    float64 pressure_diff
    
    # True airspeed measured by a pitot tube in m.s^-1 and positive forward.
    float64 true_air_speed
    
    # Outside air temperature in °C that could be used to compute true airspeed from differential pressure.
    float64 air_temperature
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
    MSG: sbg_driver/SbgAirDataStatus
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
    const resolved = new SbgAirData(null);
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

    if (msg.status !== undefined) {
      resolved.status = SbgAirDataStatus.Resolve(msg.status)
    }
    else {
      resolved.status = new SbgAirDataStatus()
    }

    if (msg.pressure_abs !== undefined) {
      resolved.pressure_abs = msg.pressure_abs;
    }
    else {
      resolved.pressure_abs = 0.0
    }

    if (msg.altitude !== undefined) {
      resolved.altitude = msg.altitude;
    }
    else {
      resolved.altitude = 0.0
    }

    if (msg.pressure_diff !== undefined) {
      resolved.pressure_diff = msg.pressure_diff;
    }
    else {
      resolved.pressure_diff = 0.0
    }

    if (msg.true_air_speed !== undefined) {
      resolved.true_air_speed = msg.true_air_speed;
    }
    else {
      resolved.true_air_speed = 0.0
    }

    if (msg.air_temperature !== undefined) {
      resolved.air_temperature = msg.air_temperature;
    }
    else {
      resolved.air_temperature = 0.0
    }

    return resolved;
    }
};

module.exports = SbgAirData;
