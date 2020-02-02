// Auto-generated. Do not edit!

// (in-package sbg_driver.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SbgUtcTimeStatus = require('./SbgUtcTimeStatus.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SbgUtcTime {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.time_stamp = null;
      this.clock_status = null;
      this.year = null;
      this.month = null;
      this.day = null;
      this.hour = null;
      this.min = null;
      this.sec = null;
      this.nanosec = null;
      this.gps_tow = null;
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
      if (initObj.hasOwnProperty('clock_status')) {
        this.clock_status = initObj.clock_status
      }
      else {
        this.clock_status = new SbgUtcTimeStatus();
      }
      if (initObj.hasOwnProperty('year')) {
        this.year = initObj.year
      }
      else {
        this.year = 0;
      }
      if (initObj.hasOwnProperty('month')) {
        this.month = initObj.month
      }
      else {
        this.month = 0;
      }
      if (initObj.hasOwnProperty('day')) {
        this.day = initObj.day
      }
      else {
        this.day = 0;
      }
      if (initObj.hasOwnProperty('hour')) {
        this.hour = initObj.hour
      }
      else {
        this.hour = 0;
      }
      if (initObj.hasOwnProperty('min')) {
        this.min = initObj.min
      }
      else {
        this.min = 0;
      }
      if (initObj.hasOwnProperty('sec')) {
        this.sec = initObj.sec
      }
      else {
        this.sec = 0;
      }
      if (initObj.hasOwnProperty('nanosec')) {
        this.nanosec = initObj.nanosec
      }
      else {
        this.nanosec = 0;
      }
      if (initObj.hasOwnProperty('gps_tow')) {
        this.gps_tow = initObj.gps_tow
      }
      else {
        this.gps_tow = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SbgUtcTime
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [time_stamp]
    bufferOffset = _serializer.uint32(obj.time_stamp, buffer, bufferOffset);
    // Serialize message field [clock_status]
    bufferOffset = SbgUtcTimeStatus.serialize(obj.clock_status, buffer, bufferOffset);
    // Serialize message field [year]
    bufferOffset = _serializer.uint16(obj.year, buffer, bufferOffset);
    // Serialize message field [month]
    bufferOffset = _serializer.uint8(obj.month, buffer, bufferOffset);
    // Serialize message field [day]
    bufferOffset = _serializer.uint8(obj.day, buffer, bufferOffset);
    // Serialize message field [hour]
    bufferOffset = _serializer.uint8(obj.hour, buffer, bufferOffset);
    // Serialize message field [min]
    bufferOffset = _serializer.uint8(obj.min, buffer, bufferOffset);
    // Serialize message field [sec]
    bufferOffset = _serializer.uint8(obj.sec, buffer, bufferOffset);
    // Serialize message field [nanosec]
    bufferOffset = _serializer.uint32(obj.nanosec, buffer, bufferOffset);
    // Serialize message field [gps_tow]
    bufferOffset = _serializer.uint32(obj.gps_tow, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SbgUtcTime
    let len;
    let data = new SbgUtcTime(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [time_stamp]
    data.time_stamp = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [clock_status]
    data.clock_status = SbgUtcTimeStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [year]
    data.year = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [month]
    data.month = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [day]
    data.day = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [hour]
    data.hour = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [min]
    data.min = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [sec]
    data.sec = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [nanosec]
    data.nanosec = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [gps_tow]
    data.gps_tow = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 23;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sbg_driver/SbgUtcTime';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '89495f07708fa38e487b6509c4edabaa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # SBG Ellipse Messages
    Header header
    
    # Time since sensor is powered up (us)
    uint32 time_stamp
    
    # General UTC time and clock sync status
    SbgUtcTimeStatus clock_status
    
    # Year
    uint16 year
    
    # Month in Year [1 ... 12]
    uint8 month
    
    # Day in Month [1 ... 31]
    uint8 day
    
    # Hour in day [0 ... 23]
    uint8 hour
    
    # Minute in hour [0 ... 59]
    uint8 min
    
    # Second in minute [0 ... 60], Note 60 is when a leap second is added.
    uint8 sec
    
    # Nanosecond of second.
    uint32 nanosec
    
    # GPS Time of week (ms)
    uint32 gps_tow
    
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
    MSG: sbg_driver/SbgUtcTimeStatus
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
    const resolved = new SbgUtcTime(null);
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

    if (msg.clock_status !== undefined) {
      resolved.clock_status = SbgUtcTimeStatus.Resolve(msg.clock_status)
    }
    else {
      resolved.clock_status = new SbgUtcTimeStatus()
    }

    if (msg.year !== undefined) {
      resolved.year = msg.year;
    }
    else {
      resolved.year = 0
    }

    if (msg.month !== undefined) {
      resolved.month = msg.month;
    }
    else {
      resolved.month = 0
    }

    if (msg.day !== undefined) {
      resolved.day = msg.day;
    }
    else {
      resolved.day = 0
    }

    if (msg.hour !== undefined) {
      resolved.hour = msg.hour;
    }
    else {
      resolved.hour = 0
    }

    if (msg.min !== undefined) {
      resolved.min = msg.min;
    }
    else {
      resolved.min = 0
    }

    if (msg.sec !== undefined) {
      resolved.sec = msg.sec;
    }
    else {
      resolved.sec = 0
    }

    if (msg.nanosec !== undefined) {
      resolved.nanosec = msg.nanosec;
    }
    else {
      resolved.nanosec = 0
    }

    if (msg.gps_tow !== undefined) {
      resolved.gps_tow = msg.gps_tow;
    }
    else {
      resolved.gps_tow = 0
    }

    return resolved;
    }
};

module.exports = SbgUtcTime;
