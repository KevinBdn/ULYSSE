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

class SbgGpsVelStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.vel_status = null;
      this.vel_type = null;
    }
    else {
      if (initObj.hasOwnProperty('vel_status')) {
        this.vel_status = initObj.vel_status
      }
      else {
        this.vel_status = 0;
      }
      if (initObj.hasOwnProperty('vel_type')) {
        this.vel_type = initObj.vel_type
      }
      else {
        this.vel_type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SbgGpsVelStatus
    // Serialize message field [vel_status]
    bufferOffset = _serializer.uint8(obj.vel_status, buffer, bufferOffset);
    // Serialize message field [vel_type]
    bufferOffset = _serializer.uint8(obj.vel_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SbgGpsVelStatus
    let len;
    let data = new SbgGpsVelStatus(null);
    // Deserialize message field [vel_status]
    data.vel_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [vel_type]
    data.vel_type = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sbg_driver/SbgGpsVelStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8c5fcc3c3ffd11ce820539049c166dde';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # SBG Ellipse Messages
    # Submessage
    
    # The raw GPS velocity status
    # 0 SOL_COMPUTED		A valid solution has been computed.
    # 1 INSUFFICIENT_OBS	Not enough valid SV to compute a solution.
    # 2 INTERNAL_ERROR		An internal error has occurred.
    # 3 LIMIT				Velocity limit exceeded.
    uint8 vel_status
    
    # The raw GPS velocity type
    # 0 VEL_NO_SOLUTION		No valid velocity solution available.
    # 1 VEL_UNKNOWN_TYPE	An unknown solution type has been computed.
    # 2 VEL_DOPPLER			A Doppler velocity has been computed.
    # 3 VEL_DIFFERENTIAL	A velocity has been computed between two positions.
    uint8 vel_type
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SbgGpsVelStatus(null);
    if (msg.vel_status !== undefined) {
      resolved.vel_status = msg.vel_status;
    }
    else {
      resolved.vel_status = 0
    }

    if (msg.vel_type !== undefined) {
      resolved.vel_type = msg.vel_type;
    }
    else {
      resolved.vel_type = 0
    }

    return resolved;
    }
};

module.exports = SbgGpsVelStatus;
