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

class SbgEkfStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.solution_mode = null;
      this.attitude_valid = null;
      this.heading_valid = null;
      this.velocity_valid = null;
      this.position_valid = null;
      this.vert_ref_used = null;
      this.mag_ref_used = null;
      this.gps1_vel_used = null;
      this.gps1_pos_used = null;
      this.gps1_course_used = null;
      this.gps1_hdt_used = null;
      this.gps2_vel_used = null;
      this.gps2_pos_used = null;
      this.gps2_course_used = null;
      this.gps2_hdt_used = null;
      this.odo_used = null;
    }
    else {
      if (initObj.hasOwnProperty('solution_mode')) {
        this.solution_mode = initObj.solution_mode
      }
      else {
        this.solution_mode = 0;
      }
      if (initObj.hasOwnProperty('attitude_valid')) {
        this.attitude_valid = initObj.attitude_valid
      }
      else {
        this.attitude_valid = false;
      }
      if (initObj.hasOwnProperty('heading_valid')) {
        this.heading_valid = initObj.heading_valid
      }
      else {
        this.heading_valid = false;
      }
      if (initObj.hasOwnProperty('velocity_valid')) {
        this.velocity_valid = initObj.velocity_valid
      }
      else {
        this.velocity_valid = false;
      }
      if (initObj.hasOwnProperty('position_valid')) {
        this.position_valid = initObj.position_valid
      }
      else {
        this.position_valid = false;
      }
      if (initObj.hasOwnProperty('vert_ref_used')) {
        this.vert_ref_used = initObj.vert_ref_used
      }
      else {
        this.vert_ref_used = false;
      }
      if (initObj.hasOwnProperty('mag_ref_used')) {
        this.mag_ref_used = initObj.mag_ref_used
      }
      else {
        this.mag_ref_used = false;
      }
      if (initObj.hasOwnProperty('gps1_vel_used')) {
        this.gps1_vel_used = initObj.gps1_vel_used
      }
      else {
        this.gps1_vel_used = false;
      }
      if (initObj.hasOwnProperty('gps1_pos_used')) {
        this.gps1_pos_used = initObj.gps1_pos_used
      }
      else {
        this.gps1_pos_used = false;
      }
      if (initObj.hasOwnProperty('gps1_course_used')) {
        this.gps1_course_used = initObj.gps1_course_used
      }
      else {
        this.gps1_course_used = false;
      }
      if (initObj.hasOwnProperty('gps1_hdt_used')) {
        this.gps1_hdt_used = initObj.gps1_hdt_used
      }
      else {
        this.gps1_hdt_used = false;
      }
      if (initObj.hasOwnProperty('gps2_vel_used')) {
        this.gps2_vel_used = initObj.gps2_vel_used
      }
      else {
        this.gps2_vel_used = false;
      }
      if (initObj.hasOwnProperty('gps2_pos_used')) {
        this.gps2_pos_used = initObj.gps2_pos_used
      }
      else {
        this.gps2_pos_used = false;
      }
      if (initObj.hasOwnProperty('gps2_course_used')) {
        this.gps2_course_used = initObj.gps2_course_used
      }
      else {
        this.gps2_course_used = false;
      }
      if (initObj.hasOwnProperty('gps2_hdt_used')) {
        this.gps2_hdt_used = initObj.gps2_hdt_used
      }
      else {
        this.gps2_hdt_used = false;
      }
      if (initObj.hasOwnProperty('odo_used')) {
        this.odo_used = initObj.odo_used
      }
      else {
        this.odo_used = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SbgEkfStatus
    // Serialize message field [solution_mode]
    bufferOffset = _serializer.uint8(obj.solution_mode, buffer, bufferOffset);
    // Serialize message field [attitude_valid]
    bufferOffset = _serializer.bool(obj.attitude_valid, buffer, bufferOffset);
    // Serialize message field [heading_valid]
    bufferOffset = _serializer.bool(obj.heading_valid, buffer, bufferOffset);
    // Serialize message field [velocity_valid]
    bufferOffset = _serializer.bool(obj.velocity_valid, buffer, bufferOffset);
    // Serialize message field [position_valid]
    bufferOffset = _serializer.bool(obj.position_valid, buffer, bufferOffset);
    // Serialize message field [vert_ref_used]
    bufferOffset = _serializer.bool(obj.vert_ref_used, buffer, bufferOffset);
    // Serialize message field [mag_ref_used]
    bufferOffset = _serializer.bool(obj.mag_ref_used, buffer, bufferOffset);
    // Serialize message field [gps1_vel_used]
    bufferOffset = _serializer.bool(obj.gps1_vel_used, buffer, bufferOffset);
    // Serialize message field [gps1_pos_used]
    bufferOffset = _serializer.bool(obj.gps1_pos_used, buffer, bufferOffset);
    // Serialize message field [gps1_course_used]
    bufferOffset = _serializer.bool(obj.gps1_course_used, buffer, bufferOffset);
    // Serialize message field [gps1_hdt_used]
    bufferOffset = _serializer.bool(obj.gps1_hdt_used, buffer, bufferOffset);
    // Serialize message field [gps2_vel_used]
    bufferOffset = _serializer.bool(obj.gps2_vel_used, buffer, bufferOffset);
    // Serialize message field [gps2_pos_used]
    bufferOffset = _serializer.bool(obj.gps2_pos_used, buffer, bufferOffset);
    // Serialize message field [gps2_course_used]
    bufferOffset = _serializer.bool(obj.gps2_course_used, buffer, bufferOffset);
    // Serialize message field [gps2_hdt_used]
    bufferOffset = _serializer.bool(obj.gps2_hdt_used, buffer, bufferOffset);
    // Serialize message field [odo_used]
    bufferOffset = _serializer.bool(obj.odo_used, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SbgEkfStatus
    let len;
    let data = new SbgEkfStatus(null);
    // Deserialize message field [solution_mode]
    data.solution_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [attitude_valid]
    data.attitude_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [heading_valid]
    data.heading_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [velocity_valid]
    data.velocity_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [position_valid]
    data.position_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [vert_ref_used]
    data.vert_ref_used = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [mag_ref_used]
    data.mag_ref_used = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [gps1_vel_used]
    data.gps1_vel_used = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [gps1_pos_used]
    data.gps1_pos_used = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [gps1_course_used]
    data.gps1_course_used = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [gps1_hdt_used]
    data.gps1_hdt_used = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [gps2_vel_used]
    data.gps2_vel_used = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [gps2_pos_used]
    data.gps2_pos_used = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [gps2_course_used]
    data.gps2_course_used = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [gps2_hdt_used]
    data.gps2_hdt_used = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [odo_used]
    data.odo_used = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sbg_driver/SbgEkfStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '779a904443daf8f46a24dc18bd3bbedb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new SbgEkfStatus(null);
    if (msg.solution_mode !== undefined) {
      resolved.solution_mode = msg.solution_mode;
    }
    else {
      resolved.solution_mode = 0
    }

    if (msg.attitude_valid !== undefined) {
      resolved.attitude_valid = msg.attitude_valid;
    }
    else {
      resolved.attitude_valid = false
    }

    if (msg.heading_valid !== undefined) {
      resolved.heading_valid = msg.heading_valid;
    }
    else {
      resolved.heading_valid = false
    }

    if (msg.velocity_valid !== undefined) {
      resolved.velocity_valid = msg.velocity_valid;
    }
    else {
      resolved.velocity_valid = false
    }

    if (msg.position_valid !== undefined) {
      resolved.position_valid = msg.position_valid;
    }
    else {
      resolved.position_valid = false
    }

    if (msg.vert_ref_used !== undefined) {
      resolved.vert_ref_used = msg.vert_ref_used;
    }
    else {
      resolved.vert_ref_used = false
    }

    if (msg.mag_ref_used !== undefined) {
      resolved.mag_ref_used = msg.mag_ref_used;
    }
    else {
      resolved.mag_ref_used = false
    }

    if (msg.gps1_vel_used !== undefined) {
      resolved.gps1_vel_used = msg.gps1_vel_used;
    }
    else {
      resolved.gps1_vel_used = false
    }

    if (msg.gps1_pos_used !== undefined) {
      resolved.gps1_pos_used = msg.gps1_pos_used;
    }
    else {
      resolved.gps1_pos_used = false
    }

    if (msg.gps1_course_used !== undefined) {
      resolved.gps1_course_used = msg.gps1_course_used;
    }
    else {
      resolved.gps1_course_used = false
    }

    if (msg.gps1_hdt_used !== undefined) {
      resolved.gps1_hdt_used = msg.gps1_hdt_used;
    }
    else {
      resolved.gps1_hdt_used = false
    }

    if (msg.gps2_vel_used !== undefined) {
      resolved.gps2_vel_used = msg.gps2_vel_used;
    }
    else {
      resolved.gps2_vel_used = false
    }

    if (msg.gps2_pos_used !== undefined) {
      resolved.gps2_pos_used = msg.gps2_pos_used;
    }
    else {
      resolved.gps2_pos_used = false
    }

    if (msg.gps2_course_used !== undefined) {
      resolved.gps2_course_used = msg.gps2_course_used;
    }
    else {
      resolved.gps2_course_used = false
    }

    if (msg.gps2_hdt_used !== undefined) {
      resolved.gps2_hdt_used = msg.gps2_hdt_used;
    }
    else {
      resolved.gps2_hdt_used = false
    }

    if (msg.odo_used !== undefined) {
      resolved.odo_used = msg.odo_used;
    }
    else {
      resolved.odo_used = false
    }

    return resolved;
    }
};

module.exports = SbgEkfStatus;
