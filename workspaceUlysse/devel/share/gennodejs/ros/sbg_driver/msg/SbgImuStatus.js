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

class SbgImuStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.imu_com = null;
      this.imu_status = null;
      this.imu_accel_x = null;
      this.imu_accel_y = null;
      this.imu_accel_z = null;
      this.imu_gyro_x = null;
      this.imu_gyro_y = null;
      this.imu_gyro_z = null;
      this.imu_accels_in_range = null;
      this.imu_gyros_in_range = null;
    }
    else {
      if (initObj.hasOwnProperty('imu_com')) {
        this.imu_com = initObj.imu_com
      }
      else {
        this.imu_com = false;
      }
      if (initObj.hasOwnProperty('imu_status')) {
        this.imu_status = initObj.imu_status
      }
      else {
        this.imu_status = false;
      }
      if (initObj.hasOwnProperty('imu_accel_x')) {
        this.imu_accel_x = initObj.imu_accel_x
      }
      else {
        this.imu_accel_x = false;
      }
      if (initObj.hasOwnProperty('imu_accel_y')) {
        this.imu_accel_y = initObj.imu_accel_y
      }
      else {
        this.imu_accel_y = false;
      }
      if (initObj.hasOwnProperty('imu_accel_z')) {
        this.imu_accel_z = initObj.imu_accel_z
      }
      else {
        this.imu_accel_z = false;
      }
      if (initObj.hasOwnProperty('imu_gyro_x')) {
        this.imu_gyro_x = initObj.imu_gyro_x
      }
      else {
        this.imu_gyro_x = false;
      }
      if (initObj.hasOwnProperty('imu_gyro_y')) {
        this.imu_gyro_y = initObj.imu_gyro_y
      }
      else {
        this.imu_gyro_y = false;
      }
      if (initObj.hasOwnProperty('imu_gyro_z')) {
        this.imu_gyro_z = initObj.imu_gyro_z
      }
      else {
        this.imu_gyro_z = false;
      }
      if (initObj.hasOwnProperty('imu_accels_in_range')) {
        this.imu_accels_in_range = initObj.imu_accels_in_range
      }
      else {
        this.imu_accels_in_range = false;
      }
      if (initObj.hasOwnProperty('imu_gyros_in_range')) {
        this.imu_gyros_in_range = initObj.imu_gyros_in_range
      }
      else {
        this.imu_gyros_in_range = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SbgImuStatus
    // Serialize message field [imu_com]
    bufferOffset = _serializer.bool(obj.imu_com, buffer, bufferOffset);
    // Serialize message field [imu_status]
    bufferOffset = _serializer.bool(obj.imu_status, buffer, bufferOffset);
    // Serialize message field [imu_accel_x]
    bufferOffset = _serializer.bool(obj.imu_accel_x, buffer, bufferOffset);
    // Serialize message field [imu_accel_y]
    bufferOffset = _serializer.bool(obj.imu_accel_y, buffer, bufferOffset);
    // Serialize message field [imu_accel_z]
    bufferOffset = _serializer.bool(obj.imu_accel_z, buffer, bufferOffset);
    // Serialize message field [imu_gyro_x]
    bufferOffset = _serializer.bool(obj.imu_gyro_x, buffer, bufferOffset);
    // Serialize message field [imu_gyro_y]
    bufferOffset = _serializer.bool(obj.imu_gyro_y, buffer, bufferOffset);
    // Serialize message field [imu_gyro_z]
    bufferOffset = _serializer.bool(obj.imu_gyro_z, buffer, bufferOffset);
    // Serialize message field [imu_accels_in_range]
    bufferOffset = _serializer.bool(obj.imu_accels_in_range, buffer, bufferOffset);
    // Serialize message field [imu_gyros_in_range]
    bufferOffset = _serializer.bool(obj.imu_gyros_in_range, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SbgImuStatus
    let len;
    let data = new SbgImuStatus(null);
    // Deserialize message field [imu_com]
    data.imu_com = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [imu_status]
    data.imu_status = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [imu_accel_x]
    data.imu_accel_x = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [imu_accel_y]
    data.imu_accel_y = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [imu_accel_z]
    data.imu_accel_z = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [imu_gyro_x]
    data.imu_gyro_x = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [imu_gyro_y]
    data.imu_gyro_y = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [imu_gyro_z]
    data.imu_gyro_z = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [imu_accels_in_range]
    data.imu_accels_in_range = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [imu_gyros_in_range]
    data.imu_gyros_in_range = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sbg_driver/SbgImuStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e9a1bd33215fe69b9523e359cacbe127';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SbgImuStatus(null);
    if (msg.imu_com !== undefined) {
      resolved.imu_com = msg.imu_com;
    }
    else {
      resolved.imu_com = false
    }

    if (msg.imu_status !== undefined) {
      resolved.imu_status = msg.imu_status;
    }
    else {
      resolved.imu_status = false
    }

    if (msg.imu_accel_x !== undefined) {
      resolved.imu_accel_x = msg.imu_accel_x;
    }
    else {
      resolved.imu_accel_x = false
    }

    if (msg.imu_accel_y !== undefined) {
      resolved.imu_accel_y = msg.imu_accel_y;
    }
    else {
      resolved.imu_accel_y = false
    }

    if (msg.imu_accel_z !== undefined) {
      resolved.imu_accel_z = msg.imu_accel_z;
    }
    else {
      resolved.imu_accel_z = false
    }

    if (msg.imu_gyro_x !== undefined) {
      resolved.imu_gyro_x = msg.imu_gyro_x;
    }
    else {
      resolved.imu_gyro_x = false
    }

    if (msg.imu_gyro_y !== undefined) {
      resolved.imu_gyro_y = msg.imu_gyro_y;
    }
    else {
      resolved.imu_gyro_y = false
    }

    if (msg.imu_gyro_z !== undefined) {
      resolved.imu_gyro_z = msg.imu_gyro_z;
    }
    else {
      resolved.imu_gyro_z = false
    }

    if (msg.imu_accels_in_range !== undefined) {
      resolved.imu_accels_in_range = msg.imu_accels_in_range;
    }
    else {
      resolved.imu_accels_in_range = false
    }

    if (msg.imu_gyros_in_range !== undefined) {
      resolved.imu_gyros_in_range = msg.imu_gyros_in_range;
    }
    else {
      resolved.imu_gyros_in_range = false
    }

    return resolved;
    }
};

module.exports = SbgImuStatus;
