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

class SbgStatusAiding {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.gps1_pos_recv = null;
      this.gps1_vel_recv = null;
      this.gps1_hdt_recv = null;
      this.gps1_utc_recv = null;
      this.mag_recv = null;
      this.odo_recv = null;
      this.dvl_recv = null;
    }
    else {
      if (initObj.hasOwnProperty('gps1_pos_recv')) {
        this.gps1_pos_recv = initObj.gps1_pos_recv
      }
      else {
        this.gps1_pos_recv = false;
      }
      if (initObj.hasOwnProperty('gps1_vel_recv')) {
        this.gps1_vel_recv = initObj.gps1_vel_recv
      }
      else {
        this.gps1_vel_recv = false;
      }
      if (initObj.hasOwnProperty('gps1_hdt_recv')) {
        this.gps1_hdt_recv = initObj.gps1_hdt_recv
      }
      else {
        this.gps1_hdt_recv = false;
      }
      if (initObj.hasOwnProperty('gps1_utc_recv')) {
        this.gps1_utc_recv = initObj.gps1_utc_recv
      }
      else {
        this.gps1_utc_recv = false;
      }
      if (initObj.hasOwnProperty('mag_recv')) {
        this.mag_recv = initObj.mag_recv
      }
      else {
        this.mag_recv = false;
      }
      if (initObj.hasOwnProperty('odo_recv')) {
        this.odo_recv = initObj.odo_recv
      }
      else {
        this.odo_recv = false;
      }
      if (initObj.hasOwnProperty('dvl_recv')) {
        this.dvl_recv = initObj.dvl_recv
      }
      else {
        this.dvl_recv = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SbgStatusAiding
    // Serialize message field [gps1_pos_recv]
    bufferOffset = _serializer.bool(obj.gps1_pos_recv, buffer, bufferOffset);
    // Serialize message field [gps1_vel_recv]
    bufferOffset = _serializer.bool(obj.gps1_vel_recv, buffer, bufferOffset);
    // Serialize message field [gps1_hdt_recv]
    bufferOffset = _serializer.bool(obj.gps1_hdt_recv, buffer, bufferOffset);
    // Serialize message field [gps1_utc_recv]
    bufferOffset = _serializer.bool(obj.gps1_utc_recv, buffer, bufferOffset);
    // Serialize message field [mag_recv]
    bufferOffset = _serializer.bool(obj.mag_recv, buffer, bufferOffset);
    // Serialize message field [odo_recv]
    bufferOffset = _serializer.bool(obj.odo_recv, buffer, bufferOffset);
    // Serialize message field [dvl_recv]
    bufferOffset = _serializer.bool(obj.dvl_recv, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SbgStatusAiding
    let len;
    let data = new SbgStatusAiding(null);
    // Deserialize message field [gps1_pos_recv]
    data.gps1_pos_recv = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [gps1_vel_recv]
    data.gps1_vel_recv = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [gps1_hdt_recv]
    data.gps1_hdt_recv = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [gps1_utc_recv]
    data.gps1_utc_recv = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [mag_recv]
    data.mag_recv = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [odo_recv]
    data.odo_recv = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [dvl_recv]
    data.dvl_recv = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 7;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sbg_driver/SbgStatusAiding';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '873fbacbcfa106e3f518a7cd0cce3cfb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # SBG Ellipse Messages
    # SbgStatus submessage
    
    # AIDING_GPS1_POS_RECV true when valid GPS 1 position data is received
    bool gps1_pos_recv
    
    # AIDING_GPS1_VEL_RECV true when valid GPS 1 velocity data is received
    bool gps1_vel_recv
    
    # AIDING_GPS1_HDT_RECV true when valid GPS 1 true heading data is received
    bool gps1_hdt_recv
    
    # AIDING_GPS1_UTC_RECV true when valid GPS 1 UTC time data is received
    bool gps1_utc_recv
    
    # AIDING_MAG_RECV true when valid Magnetometer data is received
    bool mag_recv
    
    # AIDING_ODO_RECV true when Odometer pulse is received
    bool odo_recv
    
    # AIDING_DVL_RECV true when valid DVL data is received
    bool dvl_recv
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SbgStatusAiding(null);
    if (msg.gps1_pos_recv !== undefined) {
      resolved.gps1_pos_recv = msg.gps1_pos_recv;
    }
    else {
      resolved.gps1_pos_recv = false
    }

    if (msg.gps1_vel_recv !== undefined) {
      resolved.gps1_vel_recv = msg.gps1_vel_recv;
    }
    else {
      resolved.gps1_vel_recv = false
    }

    if (msg.gps1_hdt_recv !== undefined) {
      resolved.gps1_hdt_recv = msg.gps1_hdt_recv;
    }
    else {
      resolved.gps1_hdt_recv = false
    }

    if (msg.gps1_utc_recv !== undefined) {
      resolved.gps1_utc_recv = msg.gps1_utc_recv;
    }
    else {
      resolved.gps1_utc_recv = false
    }

    if (msg.mag_recv !== undefined) {
      resolved.mag_recv = msg.mag_recv;
    }
    else {
      resolved.mag_recv = false
    }

    if (msg.odo_recv !== undefined) {
      resolved.odo_recv = msg.odo_recv;
    }
    else {
      resolved.odo_recv = false
    }

    if (msg.dvl_recv !== undefined) {
      resolved.dvl_recv = msg.dvl_recv;
    }
    else {
      resolved.dvl_recv = false
    }

    return resolved;
    }
};

module.exports = SbgStatusAiding;
