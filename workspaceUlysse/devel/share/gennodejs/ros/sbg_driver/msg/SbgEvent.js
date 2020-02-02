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

class SbgEvent {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.time_stamp = null;
      this.overflow = null;
      this.offset_0_valid = null;
      this.offset_1_valid = null;
      this.offset_2_valid = null;
      this.offset_3_valid = null;
      this.time_offset_0 = null;
      this.time_offset_1 = null;
      this.time_offset_2 = null;
      this.time_offset_3 = null;
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
      if (initObj.hasOwnProperty('overflow')) {
        this.overflow = initObj.overflow
      }
      else {
        this.overflow = false;
      }
      if (initObj.hasOwnProperty('offset_0_valid')) {
        this.offset_0_valid = initObj.offset_0_valid
      }
      else {
        this.offset_0_valid = false;
      }
      if (initObj.hasOwnProperty('offset_1_valid')) {
        this.offset_1_valid = initObj.offset_1_valid
      }
      else {
        this.offset_1_valid = false;
      }
      if (initObj.hasOwnProperty('offset_2_valid')) {
        this.offset_2_valid = initObj.offset_2_valid
      }
      else {
        this.offset_2_valid = false;
      }
      if (initObj.hasOwnProperty('offset_3_valid')) {
        this.offset_3_valid = initObj.offset_3_valid
      }
      else {
        this.offset_3_valid = false;
      }
      if (initObj.hasOwnProperty('time_offset_0')) {
        this.time_offset_0 = initObj.time_offset_0
      }
      else {
        this.time_offset_0 = 0;
      }
      if (initObj.hasOwnProperty('time_offset_1')) {
        this.time_offset_1 = initObj.time_offset_1
      }
      else {
        this.time_offset_1 = 0;
      }
      if (initObj.hasOwnProperty('time_offset_2')) {
        this.time_offset_2 = initObj.time_offset_2
      }
      else {
        this.time_offset_2 = 0;
      }
      if (initObj.hasOwnProperty('time_offset_3')) {
        this.time_offset_3 = initObj.time_offset_3
      }
      else {
        this.time_offset_3 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SbgEvent
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [time_stamp]
    bufferOffset = _serializer.uint32(obj.time_stamp, buffer, bufferOffset);
    // Serialize message field [overflow]
    bufferOffset = _serializer.bool(obj.overflow, buffer, bufferOffset);
    // Serialize message field [offset_0_valid]
    bufferOffset = _serializer.bool(obj.offset_0_valid, buffer, bufferOffset);
    // Serialize message field [offset_1_valid]
    bufferOffset = _serializer.bool(obj.offset_1_valid, buffer, bufferOffset);
    // Serialize message field [offset_2_valid]
    bufferOffset = _serializer.bool(obj.offset_2_valid, buffer, bufferOffset);
    // Serialize message field [offset_3_valid]
    bufferOffset = _serializer.bool(obj.offset_3_valid, buffer, bufferOffset);
    // Serialize message field [time_offset_0]
    bufferOffset = _serializer.uint16(obj.time_offset_0, buffer, bufferOffset);
    // Serialize message field [time_offset_1]
    bufferOffset = _serializer.uint16(obj.time_offset_1, buffer, bufferOffset);
    // Serialize message field [time_offset_2]
    bufferOffset = _serializer.uint16(obj.time_offset_2, buffer, bufferOffset);
    // Serialize message field [time_offset_3]
    bufferOffset = _serializer.uint16(obj.time_offset_3, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SbgEvent
    let len;
    let data = new SbgEvent(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [time_stamp]
    data.time_stamp = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [overflow]
    data.overflow = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [offset_0_valid]
    data.offset_0_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [offset_1_valid]
    data.offset_1_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [offset_2_valid]
    data.offset_2_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [offset_3_valid]
    data.offset_3_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [time_offset_0]
    data.time_offset_0 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [time_offset_1]
    data.time_offset_1 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [time_offset_2]
    data.time_offset_2 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [time_offset_3]
    data.time_offset_3 = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sbg_driver/SbgEvent';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '330fcb628fc06f7fd7e2c2276c83adfa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # SBG Ellipse Messages
    Header header
    
    # Time since sensor is powered up us 
    uint32 time_stamp
    
    # True if we have received events at a higher rate than 1 kHz.
    bool overflow
    
    # True if at least two events have been received.
    bool offset_0_valid
    
    # True if at least three events have been received.
    bool offset_1_valid
    
    # True if at least four events have been received.
    bool offset_2_valid
    
    # True if five events have been received.
    bool offset_3_valid
    
    
    # Time offset for the second received event. (us)
    uint16 time_offset_0
    
    # Time offset for the third received event. (us)
    uint16 time_offset_1
    
    # Time offset for the fourth received event. (us)
    uint16  time_offset_2
    
    # Time offset for the fifth received event. (us)
    uint16  time_offset_3
    
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
    const resolved = new SbgEvent(null);
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

    if (msg.overflow !== undefined) {
      resolved.overflow = msg.overflow;
    }
    else {
      resolved.overflow = false
    }

    if (msg.offset_0_valid !== undefined) {
      resolved.offset_0_valid = msg.offset_0_valid;
    }
    else {
      resolved.offset_0_valid = false
    }

    if (msg.offset_1_valid !== undefined) {
      resolved.offset_1_valid = msg.offset_1_valid;
    }
    else {
      resolved.offset_1_valid = false
    }

    if (msg.offset_2_valid !== undefined) {
      resolved.offset_2_valid = msg.offset_2_valid;
    }
    else {
      resolved.offset_2_valid = false
    }

    if (msg.offset_3_valid !== undefined) {
      resolved.offset_3_valid = msg.offset_3_valid;
    }
    else {
      resolved.offset_3_valid = false
    }

    if (msg.time_offset_0 !== undefined) {
      resolved.time_offset_0 = msg.time_offset_0;
    }
    else {
      resolved.time_offset_0 = 0
    }

    if (msg.time_offset_1 !== undefined) {
      resolved.time_offset_1 = msg.time_offset_1;
    }
    else {
      resolved.time_offset_1 = 0
    }

    if (msg.time_offset_2 !== undefined) {
      resolved.time_offset_2 = msg.time_offset_2;
    }
    else {
      resolved.time_offset_2 = 0
    }

    if (msg.time_offset_3 !== undefined) {
      resolved.time_offset_3 = msg.time_offset_3;
    }
    else {
      resolved.time_offset_3 = 0
    }

    return resolved;
    }
};

module.exports = SbgEvent;
