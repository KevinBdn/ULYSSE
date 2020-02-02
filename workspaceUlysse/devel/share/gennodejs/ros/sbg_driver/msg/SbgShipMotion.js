// Auto-generated. Do not edit!

// (in-package sbg_driver.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SbgShipMotionStatus = require('./SbgShipMotionStatus.js');
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SbgShipMotion {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.time_stamp = null;
      this.heave_period = null;
      this.ship_motion = null;
      this.acceleration = null;
      this.velocity = null;
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
      if (initObj.hasOwnProperty('heave_period')) {
        this.heave_period = initObj.heave_period
      }
      else {
        this.heave_period = 0;
      }
      if (initObj.hasOwnProperty('ship_motion')) {
        this.ship_motion = initObj.ship_motion
      }
      else {
        this.ship_motion = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('acceleration')) {
        this.acceleration = initObj.acceleration
      }
      else {
        this.acceleration = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = new SbgShipMotionStatus();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SbgShipMotion
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [time_stamp]
    bufferOffset = _serializer.uint32(obj.time_stamp, buffer, bufferOffset);
    // Serialize message field [heave_period]
    bufferOffset = _serializer.uint16(obj.heave_period, buffer, bufferOffset);
    // Serialize message field [ship_motion]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.ship_motion, buffer, bufferOffset);
    // Serialize message field [acceleration]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.acceleration, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.velocity, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = SbgShipMotionStatus.serialize(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SbgShipMotion
    let len;
    let data = new SbgShipMotion(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [time_stamp]
    data.time_stamp = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [heave_period]
    data.heave_period = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [ship_motion]
    data.ship_motion = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [acceleration]
    data.acceleration = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = SbgShipMotionStatus.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 82;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sbg_driver/SbgShipMotion';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f76d2a0b5a6d09d258ebd78ee0233cd0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # SBG Ellipse Messages
    Header header
    
    # Time since sensor is powered up us 
    uint32 time_stamp
    
    # Main heave period in seconds. s float 4 4
    uint16 heave_period
    
    # [Surge, Sway, Heave (positive down)] at main location (in m)
    # Note : Surge & Sway are not fulfilled
    geometry_msgs/Vector3 ship_motion
    
    # [Longitudinal, Lateral, Vertical (positive down)] acceleration (in m/s2)
    geometry_msgs/Vector3 acceleration
    
    # [Longitudinal, Lateral, Vertical (positive down)] velocity (in m/s)
    geometry_msgs/Vector3 velocity
    
    # Ship motion output status
    SbgShipMotionStatus status
    
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
    MSG: sbg_driver/SbgShipMotionStatus
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
    const resolved = new SbgShipMotion(null);
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

    if (msg.heave_period !== undefined) {
      resolved.heave_period = msg.heave_period;
    }
    else {
      resolved.heave_period = 0
    }

    if (msg.ship_motion !== undefined) {
      resolved.ship_motion = geometry_msgs.msg.Vector3.Resolve(msg.ship_motion)
    }
    else {
      resolved.ship_motion = new geometry_msgs.msg.Vector3()
    }

    if (msg.acceleration !== undefined) {
      resolved.acceleration = geometry_msgs.msg.Vector3.Resolve(msg.acceleration)
    }
    else {
      resolved.acceleration = new geometry_msgs.msg.Vector3()
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = geometry_msgs.msg.Vector3.Resolve(msg.velocity)
    }
    else {
      resolved.velocity = new geometry_msgs.msg.Vector3()
    }

    if (msg.status !== undefined) {
      resolved.status = SbgShipMotionStatus.Resolve(msg.status)
    }
    else {
      resolved.status = new SbgShipMotionStatus()
    }

    return resolved;
    }
};

module.exports = SbgShipMotion;
