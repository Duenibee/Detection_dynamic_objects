// Auto-generated. Do not edit!

// (in-package map_manager.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class RandomSampleRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.xsize = null;
      this.ysize = null;
      this.zsize = null;
      this.ignore_unknown = null;
    }
    else {
      if (initObj.hasOwnProperty('xsize')) {
        this.xsize = initObj.xsize
      }
      else {
        this.xsize = 0.0;
      }
      if (initObj.hasOwnProperty('ysize')) {
        this.ysize = initObj.ysize
      }
      else {
        this.ysize = 0.0;
      }
      if (initObj.hasOwnProperty('zsize')) {
        this.zsize = initObj.zsize
      }
      else {
        this.zsize = 0.0;
      }
      if (initObj.hasOwnProperty('ignore_unknown')) {
        this.ignore_unknown = initObj.ignore_unknown
      }
      else {
        this.ignore_unknown = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RandomSampleRequest
    // Serialize message field [xsize]
    bufferOffset = _serializer.float64(obj.xsize, buffer, bufferOffset);
    // Serialize message field [ysize]
    bufferOffset = _serializer.float64(obj.ysize, buffer, bufferOffset);
    // Serialize message field [zsize]
    bufferOffset = _serializer.float64(obj.zsize, buffer, bufferOffset);
    // Serialize message field [ignore_unknown]
    bufferOffset = _serializer.bool(obj.ignore_unknown, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RandomSampleRequest
    let len;
    let data = new RandomSampleRequest(null);
    // Deserialize message field [xsize]
    data.xsize = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ysize]
    data.ysize = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [zsize]
    data.zsize = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ignore_unknown]
    data.ignore_unknown = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 25;
  }

  static datatype() {
    // Returns string type for a service object
    return 'map_manager/RandomSampleRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e7efa50c43bd88b2bcce1b7386a5336b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 xsize
    float64 ysize
    float64 zsize
    bool ignore_unknown
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RandomSampleRequest(null);
    if (msg.xsize !== undefined) {
      resolved.xsize = msg.xsize;
    }
    else {
      resolved.xsize = 0.0
    }

    if (msg.ysize !== undefined) {
      resolved.ysize = msg.ysize;
    }
    else {
      resolved.ysize = 0.0
    }

    if (msg.zsize !== undefined) {
      resolved.zsize = msg.zsize;
    }
    else {
      resolved.zsize = 0.0
    }

    if (msg.ignore_unknown !== undefined) {
      resolved.ignore_unknown = msg.ignore_unknown;
    }
    else {
      resolved.ignore_unknown = false
    }

    return resolved;
    }
};

class RandomSampleResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
      this.z = null;
      this.yaw = null;
    }
    else {
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = 0.0;
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RandomSampleResponse
    // Serialize message field [x]
    bufferOffset = _serializer.float64(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float64(obj.y, buffer, bufferOffset);
    // Serialize message field [z]
    bufferOffset = _serializer.float64(obj.z, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float64(obj.yaw, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RandomSampleResponse
    let len;
    let data = new RandomSampleResponse(null);
    // Deserialize message field [x]
    data.x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z]
    data.z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a service object
    return 'map_manager/RandomSampleResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '52d0ade995d52d04cae303675aa442a7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 x
    float64 y
    float64 z
    float64 yaw
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RandomSampleResponse(null);
    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.z !== undefined) {
      resolved.z = msg.z;
    }
    else {
      resolved.z = 0.0
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: RandomSampleRequest,
  Response: RandomSampleResponse,
  md5sum() { return '498b6ea7d13c53a4744bbed23ba7fed1'; },
  datatype() { return 'map_manager/RandomSample'; }
};
