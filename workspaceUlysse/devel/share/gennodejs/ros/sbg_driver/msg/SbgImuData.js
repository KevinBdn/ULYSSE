// Auto-generated. Do not edit!

// (in-package sbg_driver.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SbgImuStatus = require('./SbgImuStatus.js');
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SbgImuData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.time_stamp = null;
      this.imu_status = null;
      this.accel = null;
      this.gyro = null;
      this.temp = null;
      this.delta_vel = null;
      this.delta_angle = null;
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
      if (initObj.hasOwnProperty('imu_status')) {
        this.imu_status = initObj.imu_status
      }
      else {
        this.imu_status = new SbgImuStatus();
      }
      if (initObj.hasOwnProperty('accel')) {
        this.accel = initObj.accel
      }
      else {
        this.accel = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('gyro')) {
        this.gyro = initObj.gyro
      }
      else {
        this.gyro = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('temp')) {
        this.temp = initObj.temp
      }
      else {
        this.temp = 0.0;
      }
      if (initObj.hasOwnProperty('delta_vel')) {
        this.delta_vel = initObj.delta_vel
      }
      else {
        this.delta_vel = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('delta_angle')) {
        this.delta_angle = initObj.delta_angle
      }
      else {
        this.delta_angle = new geometry_msgs.msg.Vector3();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SbgImuData
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [time_stamp]
    bufferOffset = _serializer.uint32(obj.time_stamp, buffer, bufferOffset);
    // Serialize message field [imu_status]
    bufferOffset = SbgImuStatus.serialize(obj.imu_status, buffer, bufferOffset);
    // Serialize message field [accel]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.accel, buffer, bufferOffset);
    // Serialize message field [gyro]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.gyro, buffer, bufferOffset);
    // Serialize message field [temp]
    bufferOffset = _serializer.float32(obj.temp, buffer, bufferOffset);
    // Serialize message field [delta_vel]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.delta_vel, buffer, bufferOffset);
    // Serialize message field [delta_angle]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.delta_angle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SbgImuData
    let len;
    let data = new SbgImuData(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [time_stamp]
    data.time_stamp = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [imu_status]
    data.imu_status = SbgImuStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [accel]
    data.accel = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [gyro]
    data.gyro = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [temp]
    data.temp = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [delta_vel]
    data.delta_vel = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [delta_angle]
    data.delta_angle = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 114;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sbg_driver/SbgImuData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '59cc541d794c367e71030fa700720826';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # SBG Ellipse Messages
    Header header
    
    # Time since sensor is powered up us 
    uint32 time_stamp
    
    # IMU Status
    SbgImuStatus imu_status
    
    # Filtered Accelerometer - X, Y, Z axis m/s2 
    geometry_msgs/Vector3 accel
    
    # Filtered Gyroscope - X, Y, Z axis rad/s 
    geometry_msgs/Vector3 gyro
    
    # Internal Temperature degC 
    float32 temp
    
    # Sculling output - X, Y, Z axis m/s2 
    geometry_msgs/Vector3 delta_vel
    
    # Coning output - X, Y, Z axis rad/s 
    geometry_msgs/Vector3 delta_angle
    
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
    MSG: sbg_driver/SbgImuStatus
    # SBG Ellipse Messages
    # Submessage SbgImuData
    
    # True if the communication with the IMU is ok.
    bool imu_com
    
    # True if internal IMU passes Built In Test (Calibration, CPU)
    bool imu_status
    
    # True if accelerometer X passes Built In Test
    bool imu_accel_x
    
    # True if accelerometer Y passes Built In Test
    bool imu_accel_y
    
    # True if accelerometer Z passes Built In Test
    bool imu_accel_z
    
    # True if gyroscope X passes Built In Test
    bool imu_gyro_x
    
    # True if gyroscope Y passes Built In Test
    bool imu_gyro_y
    
    # True if gyroscope Z passes Built In Test
    bool imu_gyro_z
    
    # True if accelerometers are within operating range
    bool imu_accels_in_range
    
    # True if gyroscopes are within operating range
    bool imu_gyros_in_range
    
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
    const resolved = new SbgImuData(null);
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

    if (msg.imu_status !== undefined) {
      resolved.imu_status = SbgImuStatus.Resolve(msg.imu_status)
    }
    else {
      resolved.imu_status = new SbgImuStatus()
    }

    if (msg.accel !== undefined) {
      resolved.accel = geometry_msgs.msg.Vector3.Resolve(msg.accel)
    }
    else {
      resolved.accel = new geometry_msgs.msg.Vector3()
    }

    if (msg.gyro !== undefined) {
      resolved.gyro = geometry_msgs.msg.Vector3.Resolve(msg.gyro)
    }
    else {
      resolved.gyro = new geometry_msgs.msg.Vector3()
    }

    if (msg.temp !== undefined) {
      resolved.temp = msg.temp;
    }
    else {
      resolved.temp = 0.0
    }

    if (msg.delta_vel !== undefined) {
      resolved.delta_vel = geometry_msgs.msg.Vector3.Resolve(msg.delta_vel)
    }
    else {
      resolved.delta_vel = new geometry_msgs.msg.Vector3()
    }

    if (msg.delta_angle !== undefined) {
      resolved.delta_angle = geometry_msgs.msg.Vector3.Resolve(msg.delta_angle)
    }
    else {
      resolved.delta_angle = new geometry_msgs.msg.Vector3()
    }

    return resolved;
    }
};

module.exports = SbgImuData;
