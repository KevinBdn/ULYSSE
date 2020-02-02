// Auto-generated. Do not edit!

// (in-package sbg_driver.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SbgMagStatus = require('./SbgMagStatus.js');
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SbgMag {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.time_stamp = null;
      this.mag = null;
      this.accel = null;
      this.status = null;
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
      if (initObj.hasOwnProperty('mag')) {
        this.mag = initObj.mag
      }
      else {
        this.mag = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('accel')) {
        this.accel = initObj.accel
      }
      else {
        this.accel = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = new SbgMagStatus();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SbgMag
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [time_stamp]
    bufferOffset = _serializer.uint32(obj.time_stamp, buffer, bufferOffset);
    // Serialize message field [mag]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.mag, buffer, bufferOffset);
    // Serialize message field [accel]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.accel, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = SbgMagStatus.serialize(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SbgMag
    let len;
    let data = new SbgMag(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [time_stamp]
    data.time_stamp = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [mag]
    data.mag = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [accel]
    data.accel = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = SbgMagStatus.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 61;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sbg_driver/SbgMag';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'de7614c4cbb6cbd430c4a9b79bad88ca';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # SBG Ellipse Messages
    Header header
    
    # Time since sensor is powered up (us)
    uint32 time_stamp
    
    # Magnetometer output (X, Y, Z)
    geometry_msgs/Vector3 mag
    
    # Accelerometer output (X, Y, Z) in m/s2
    geometry_msgs/Vector3 accel
    
    # Status
    SbgMagStatus status
    
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
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: sbg_driver/SbgMagStatus
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
    const resolved = new SbgMag(null);
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

    if (msg.mag !== undefined) {
      resolved.mag = geometry_msgs.msg.Vector3.Resolve(msg.mag)
    }
    else {
      resolved.mag = new geometry_msgs.msg.Vector3()
    }

    if (msg.accel !== undefined) {
      resolved.accel = geometry_msgs.msg.Vector3.Resolve(msg.accel)
    }
    else {
      resolved.accel = new geometry_msgs.msg.Vector3()
    }

    if (msg.status !== undefined) {
      resolved.status = SbgMagStatus.Resolve(msg.status)
    }
    else {
      resolved.status = new SbgMagStatus()
    }

    return resolved;
    }
};

module.exports = SbgMag;
