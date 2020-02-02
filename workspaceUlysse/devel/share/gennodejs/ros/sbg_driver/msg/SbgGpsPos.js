// Auto-generated. Do not edit!

// (in-package sbg_driver.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SbgGpsPosStatus = require('./SbgGpsPosStatus.js');
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SbgGpsPos {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.time_stamp = null;
      this.status = null;
      this.gps_tow = null;
      this.position = null;
      this.undulation = null;
      this.position_accuracy = null;
      this.num_sv_used = null;
      this.base_station_id = null;
      this.diff_age = null;
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
        this.status = new SbgGpsPosStatus();
      }
      if (initObj.hasOwnProperty('gps_tow')) {
        this.gps_tow = initObj.gps_tow
      }
      else {
        this.gps_tow = 0;
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('undulation')) {
        this.undulation = initObj.undulation
      }
      else {
        this.undulation = 0.0;
      }
      if (initObj.hasOwnProperty('position_accuracy')) {
        this.position_accuracy = initObj.position_accuracy
      }
      else {
        this.position_accuracy = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('num_sv_used')) {
        this.num_sv_used = initObj.num_sv_used
      }
      else {
        this.num_sv_used = 0;
      }
      if (initObj.hasOwnProperty('base_station_id')) {
        this.base_station_id = initObj.base_station_id
      }
      else {
        this.base_station_id = 0;
      }
      if (initObj.hasOwnProperty('diff_age')) {
        this.diff_age = initObj.diff_age
      }
      else {
        this.diff_age = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SbgGpsPos
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [time_stamp]
    bufferOffset = _serializer.uint32(obj.time_stamp, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = SbgGpsPosStatus.serialize(obj.status, buffer, bufferOffset);
    // Serialize message field [gps_tow]
    bufferOffset = _serializer.uint32(obj.gps_tow, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [undulation]
    bufferOffset = _serializer.float32(obj.undulation, buffer, bufferOffset);
    // Serialize message field [position_accuracy]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.position_accuracy, buffer, bufferOffset);
    // Serialize message field [num_sv_used]
    bufferOffset = _serializer.uint8(obj.num_sv_used, buffer, bufferOffset);
    // Serialize message field [base_station_id]
    bufferOffset = _serializer.uint16(obj.base_station_id, buffer, bufferOffset);
    // Serialize message field [diff_age]
    bufferOffset = _serializer.uint16(obj.diff_age, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SbgGpsPos
    let len;
    let data = new SbgGpsPos(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [time_stamp]
    data.time_stamp = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = SbgGpsPosStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [gps_tow]
    data.gps_tow = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [undulation]
    data.undulation = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [position_accuracy]
    data.position_accuracy = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [num_sv_used]
    data.num_sv_used = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [base_station_id]
    data.base_station_id = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [diff_age]
    data.diff_age = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 72;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sbg_driver/SbgGpsPos';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3f04525840a4c319e4347070d082baf1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # SBG Ellipse Messages
    Header header
    
    #  Time since sensor is powered up us 
    uint32 time_stamp
    
    # GPS position fix and status bitmask
    SbgGpsPosStatus status
    
    # GPS Time of Week ms
    uint32 gps_tow
    
    # [Latitude (positive North deg), Longitude (positive East deg), Altitude (Above Mean Sea Level m)]
    geometry_msgs/Vector3 position
    
    # Altitude difference between the geoid and the Ellipsoid (WGS-84 Altitude - MSL Altitude)
    # (Height above Ellipsoid = altitude + undulation)
    float32 undulation
    
    # Latitude, Longitude, Vertical accuracy m (1 sigma)
    geometry_msgs/Vector3 position_accuracy
    
    # Number of space vehicles used in GNSS solution
    uint8 num_sv_used
    
    # ID of the DGPS/RTK base station in use
    uint16 base_station_id
    
    # Differential data age 0.01 s
    uint16 diff_age
    
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
    MSG: sbg_driver/SbgGpsPosStatus
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SbgGpsPos(null);
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
      resolved.status = SbgGpsPosStatus.Resolve(msg.status)
    }
    else {
      resolved.status = new SbgGpsPosStatus()
    }

    if (msg.gps_tow !== undefined) {
      resolved.gps_tow = msg.gps_tow;
    }
    else {
      resolved.gps_tow = 0
    }

    if (msg.position !== undefined) {
      resolved.position = geometry_msgs.msg.Vector3.Resolve(msg.position)
    }
    else {
      resolved.position = new geometry_msgs.msg.Vector3()
    }

    if (msg.undulation !== undefined) {
      resolved.undulation = msg.undulation;
    }
    else {
      resolved.undulation = 0.0
    }

    if (msg.position_accuracy !== undefined) {
      resolved.position_accuracy = geometry_msgs.msg.Vector3.Resolve(msg.position_accuracy)
    }
    else {
      resolved.position_accuracy = new geometry_msgs.msg.Vector3()
    }

    if (msg.num_sv_used !== undefined) {
      resolved.num_sv_used = msg.num_sv_used;
    }
    else {
      resolved.num_sv_used = 0
    }

    if (msg.base_station_id !== undefined) {
      resolved.base_station_id = msg.base_station_id;
    }
    else {
      resolved.base_station_id = 0
    }

    if (msg.diff_age !== undefined) {
      resolved.diff_age = msg.diff_age;
    }
    else {
      resolved.diff_age = 0
    }

    return resolved;
    }
};

module.exports = SbgGpsPos;
