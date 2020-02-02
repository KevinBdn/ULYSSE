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

class SbgGpsPosStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.type = null;
      this.gps_l1_used = null;
      this.gps_l2_used = null;
      this.gps_l5_used = null;
      this.glo_l1_used = null;
      this.glo_l2_used = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('gps_l1_used')) {
        this.gps_l1_used = initObj.gps_l1_used
      }
      else {
        this.gps_l1_used = false;
      }
      if (initObj.hasOwnProperty('gps_l2_used')) {
        this.gps_l2_used = initObj.gps_l2_used
      }
      else {
        this.gps_l2_used = false;
      }
      if (initObj.hasOwnProperty('gps_l5_used')) {
        this.gps_l5_used = initObj.gps_l5_used
      }
      else {
        this.gps_l5_used = false;
      }
      if (initObj.hasOwnProperty('glo_l1_used')) {
        this.glo_l1_used = initObj.glo_l1_used
      }
      else {
        this.glo_l1_used = false;
      }
      if (initObj.hasOwnProperty('glo_l2_used')) {
        this.glo_l2_used = initObj.glo_l2_used
      }
      else {
        this.glo_l2_used = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SbgGpsPosStatus
    // Serialize message field [status]
    bufferOffset = _serializer.uint8(obj.status, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    // Serialize message field [gps_l1_used]
    bufferOffset = _serializer.bool(obj.gps_l1_used, buffer, bufferOffset);
    // Serialize message field [gps_l2_used]
    bufferOffset = _serializer.bool(obj.gps_l2_used, buffer, bufferOffset);
    // Serialize message field [gps_l5_used]
    bufferOffset = _serializer.bool(obj.gps_l5_used, buffer, bufferOffset);
    // Serialize message field [glo_l1_used]
    bufferOffset = _serializer.bool(obj.glo_l1_used, buffer, bufferOffset);
    // Serialize message field [glo_l2_used]
    bufferOffset = _serializer.bool(obj.glo_l2_used, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SbgGpsPosStatus
    let len;
    let data = new SbgGpsPosStatus(null);
    // Deserialize message field [status]
    data.status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [gps_l1_used]
    data.gps_l1_used = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [gps_l2_used]
    data.gps_l2_used = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [gps_l5_used]
    data.gps_l5_used = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [glo_l1_used]
    data.glo_l1_used = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [glo_l2_used]
    data.glo_l2_used = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 7;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sbg_driver/SbgGpsPosStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '85506deb3699c6f0e87097da56884a7e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # SBG Ellipse Messages
    # Submessage
    
    
    # The raw GPS position status
    # 0 SOL_COMPUTED		A valid solution has been computed.
    # 1 INSUFFICIENT_OBS 	Not enough valid SV to compute a solution.
    # 2 INTERNAL_ERROR 		An internal error has occurred.
    # 3 HEIGHT_LIMIT 		The height limit has been exceeded.
    uint8 status
    
    # The raw GPS position type
    # 0 NO_SOLUTION		No valid solution available.
    # 1 UNKNOWN_TYPE	An unknown solution type has been computed.
    # 2 SINGLE			Single point solution position.
    # 3 PSRDIFF			Standard Pseudorange Differential Solution (DGPS).
    # 4 SBAS			SBAS satellite used for differential corrections.
    # 5 OMNISTAR		Omnistar VBS Position (L1 sub-meter).
    # 6 RTK_FLOAT		Floating RTK ambiguity solution (20 cms RTK).
    # 7 RTK_INT			Integer RTK ambiguity solution (2 cms RTK).
    # 8 PPP_FLOAT		Precise Point Positioning with float ambiguities
    # 9 PPP_INT			Precise Point Positioning with fixed ambiguities
    # 10 FIXED			Fixed location solution position
    uint8 type
    
    # True if GPS L1 is used in the solution
    bool gps_l1_used
    
    # True if GPS L2 is used in the solution
    bool gps_l2_used
    
    # True if GPS L5 is used in the solution
    bool gps_l5_used
    
    # True if GLONASS L1 is used in the solution
    bool glo_l1_used
    
    # True if GLONASS L2 is used in the solution
    bool glo_l2_used
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SbgGpsPosStatus(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.gps_l1_used !== undefined) {
      resolved.gps_l1_used = msg.gps_l1_used;
    }
    else {
      resolved.gps_l1_used = false
    }

    if (msg.gps_l2_used !== undefined) {
      resolved.gps_l2_used = msg.gps_l2_used;
    }
    else {
      resolved.gps_l2_used = false
    }

    if (msg.gps_l5_used !== undefined) {
      resolved.gps_l5_used = msg.gps_l5_used;
    }
    else {
      resolved.gps_l5_used = false
    }

    if (msg.glo_l1_used !== undefined) {
      resolved.glo_l1_used = msg.glo_l1_used;
    }
    else {
      resolved.glo_l1_used = false
    }

    if (msg.glo_l2_used !== undefined) {
      resolved.glo_l2_used = msg.glo_l2_used;
    }
    else {
      resolved.glo_l2_used = false
    }

    return resolved;
    }
};

module.exports = SbgGpsPosStatus;
