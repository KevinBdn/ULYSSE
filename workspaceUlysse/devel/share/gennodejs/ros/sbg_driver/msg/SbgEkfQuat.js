// Auto-generated. Do not edit!

// (in-package sbg_driver.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SbgEkfStatus = require('./SbgEkfStatus.js');
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SbgEkfQuat {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.time_stamp = null;
      this.quaternion = null;
      this.accuracy = null;
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
      if (initObj.hasOwnProperty('quaternion')) {
        this.quaternion = initObj.quaternion
      }
      else {
        this.quaternion = new geometry_msgs.msg.Quaternion();
      }
      if (initObj.hasOwnProperty('accuracy')) {
        this.accuracy = initObj.accuracy
      }
      else {
        this.accuracy = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = new SbgEkfStatus();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SbgEkfQuat
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [time_stamp]
    bufferOffset = _serializer.uint32(obj.time_stamp, buffer, bufferOffset);
    // Serialize message field [quaternion]
    bufferOffset = geometry_msgs.msg.Quaternion.serialize(obj.quaternion, buffer, bufferOffset);
    // Serialize message field [accuracy]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.accuracy, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = SbgEkfStatus.serialize(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SbgEkfQuat
    let len;
    let data = new SbgEkfQuat(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [time_stamp]
    data.time_stamp = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [quaternion]
    data.quaternion = geometry_msgs.msg.Quaternion.deserialize(buffer, bufferOffset);
    // Deserialize message field [accuracy]
    data.accuracy = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = SbgEkfStatus.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 76;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sbg_driver/SbgEkfQuat';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f1257400ac859ad475d8b651b008ba22';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # SBG Ellipse Messages
    
    Header header
    
    #  Time since sensor is powered up us 
    uint32 time_stamp
    
    #  Quaternion parameter (ROS order X, Y, Z, W)
    geometry_msgs/Quaternion quaternion
    
    #  [Roll, Pitch, Yaw (heading)] angle accuracy (1 sigma) rad 
    geometry_msgs/Vector3 accuracy
    
    #  Global solution status
    SbgEkfStatus status
    
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
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
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
    MSG: sbg_driver/SbgEkfStatus
    # SBG Ellipse Messages
    # Submessage
    
    # Defines the Kalman filter computation mode (see the table 4 below)
    # 0 UNINITIALIZED	The Kalman filter is not initialized and the returned data are all invalid.
    # 1 VERTICAL_GYRO	The Kalman filter only rely on a vertical reference to compute roll and pitch angles. Heading and navigation data drift freely.
    # 2 AHRS			A heading reference is available, the Kalman filter provides full orientation but navigation data drift freely.
    # 3 NAV_VELOCITY	The Kalman filter computes orientation and velocity. Position is freely integrated from velocity estimation.
    # 4 NAV_POSITION	Nominal mode, the Kalman filter computes all parameters (attitude, velocity, position). Absolute position is provided. 
    uint8 solution_mode 
    
    # True if Attitude data is reliable (Roll/Pitch error < 0,5 deg)
    bool attitude_valid
    
    # True if Heading data is reliable (Heading error < 1 deg)
    bool heading_valid
    
    # True if Velocity data is reliable (velocity error < 1.5 m/s)
    bool velocity_valid
    
    # True if Position data is reliable (Position error < 10m)
    bool position_valid
    
    # True if vertical reference is used in solution (data used and valid since 3s)
    bool vert_ref_used
    
    # True if magnetometer is used in solution (data used and valid since 3s)
    bool mag_ref_used
    
    # True if GPS velocity is used in solution (data used and valid since 3s)
    bool gps1_vel_used
    
    # True if GPS Position is used in solution (data used and valid since 3s)
    bool gps1_pos_used
    
    # True if GPS Course is used in solution (data used and valid since 3s)
    bool gps1_course_used
    
    # True if GPS True Heading is used in solution (data used and valid since 3s)
    bool gps1_hdt_used
    
    # True if GPS2 velocity is used in solution (data used and valid since 3s)
    bool gps2_vel_used
    
    # True if GPS2 Position is used in solution (data used and valid since 3s)
    bool gps2_pos_used
    
    # True if GPS2 Course is used in solution (data used and valid since 3s)
    bool gps2_course_used
    
    # True if GPS2 True Heading is used in solution (data used and valid since 3s)
    bool gps2_hdt_used
    
    # True if Odometer is used in solution (data used and valid since 3s)
    bool odo_used
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SbgEkfQuat(null);
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

    if (msg.quaternion !== undefined) {
      resolved.quaternion = geometry_msgs.msg.Quaternion.Resolve(msg.quaternion)
    }
    else {
      resolved.quaternion = new geometry_msgs.msg.Quaternion()
    }

    if (msg.accuracy !== undefined) {
      resolved.accuracy = geometry_msgs.msg.Vector3.Resolve(msg.accuracy)
    }
    else {
      resolved.accuracy = new geometry_msgs.msg.Vector3()
    }

    if (msg.status !== undefined) {
      resolved.status = SbgEkfStatus.Resolve(msg.status)
    }
    else {
      resolved.status = new SbgEkfStatus()
    }

    return resolved;
    }
};

module.exports = SbgEkfQuat;
