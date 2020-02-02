// Auto-generated. Do not edit!

// (in-package sbg_driver.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SbgGpsHdt {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.time_stamp = null;
      this.status = null;
      this.tow = null;
      this.true_heading = null;
      this.true_heading_acc = null;
      this.pitch = null;
      this.pitch_acc = null;
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
        this.status = 0;
      }
      if (initObj.hasOwnProperty('tow')) {
        this.tow = initObj.tow
      }
      else {
        this.tow = 0;
      }
      if (initObj.hasOwnProperty('true_heading')) {
        this.true_heading = initObj.true_heading
      }
      else {
        this.true_heading = 0.0;
      }
      if (initObj.hasOwnProperty('true_heading_acc')) {
        this.true_heading_acc = initObj.true_heading_acc
      }
      else {
        this.true_heading_acc = 0.0;
      }
      if (initObj.hasOwnProperty('pitch')) {
        this.pitch = initObj.pitch
      }
      else {
        this.pitch = 0.0;
      }
      if (initObj.hasOwnProperty('pitch_acc')) {
        this.pitch_acc = initObj.pitch_acc
      }
      else {
        this.pitch_acc = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SbgGpsHdt
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [time_stamp]
    bufferOffset = _serializer.uint32(obj.time_stamp, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.uint16(obj.status, buffer, bufferOffset);
    // Serialize message field [tow]
    bufferOffset = _serializer.uint32(obj.tow, buffer, bufferOffset);
    // Serialize message field [true_heading]
    bufferOffset = _serializer.float32(obj.true_heading, buffer, bufferOffset);
    // Serialize message field [true_heading_acc]
    bufferOffset = _serializer.float32(obj.true_heading_acc, buffer, bufferOffset);
    // Serialize message field [pitch]
    bufferOffset = _serializer.float32(obj.pitch, buffer, bufferOffset);
    // Serialize message field [pitch_acc]
    bufferOffset = _serializer.float32(obj.pitch_acc, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SbgGpsHdt
    let len;
    let data = new SbgGpsHdt(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [time_stamp]
    data.time_stamp = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [tow]
    data.tow = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [true_heading]
    data.true_heading = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [true_heading_acc]
    data.true_heading_acc = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pitch]
    data.pitch = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pitch_acc]
    data.pitch_acc = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 26;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sbg_driver/SbgGpsHdt';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e132ccfa1c1c41e27b0c5998a0ca02cd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # SBG Ellipse Messages
    Header header
    
    # Time since sensor is powered up us 
    uint32 time_stamp
    
    # GPS True Heading status.
    # 0 SOL_COMPUTED		A valid solution has been computed.
    # 1 INSUFFICIENT_OBS	Not enough valid SV to compute a solution.
    # 2 INTERNAL_ERROR		An internal error has occurred.
    # 3 HEIGHT_LIMIT		The height limit has been exceeded.
    uint16 status
    
    # GPS Time of Week ms
    uint32 tow
    
    # True heading angle (0 to 360 deg).
    float32 true_heading
    
    # 1 sigma True heading estimated accuracy (0 to 360 deg).
    float32 true_heading_acc
    
    # Pitch angle from the master to the rover
    float32 pitch
    
    # 1 sigma pitch estimated accuracy
    float32 pitch_acc
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SbgGpsHdt(null);
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
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.tow !== undefined) {
      resolved.tow = msg.tow;
    }
    else {
      resolved.tow = 0
    }

    if (msg.true_heading !== undefined) {
      resolved.true_heading = msg.true_heading;
    }
    else {
      resolved.true_heading = 0.0
    }

    if (msg.true_heading_acc !== undefined) {
      resolved.true_heading_acc = msg.true_heading_acc;
    }
    else {
      resolved.true_heading_acc = 0.0
    }

    if (msg.pitch !== undefined) {
      resolved.pitch = msg.pitch;
    }
    else {
      resolved.pitch = 0.0
    }

    if (msg.pitch_acc !== undefined) {
      resolved.pitch_acc = msg.pitch_acc;
    }
    else {
      resolved.pitch_acc = 0.0
    }

    return resolved;
    }
};

module.exports = SbgGpsHdt;
