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

class CheckCollisionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
      this.z = null;
      this.xsize = null;
      this.ysize = null;
      this.zsize = null;
      this.update_map = null;
      this.ignore_unknown = null;
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
      if (initObj.hasOwnProperty('update_map')) {
        this.update_map = initObj.update_map
      }
      else {
        this.update_map = false;
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
    // Serializes a message object of type CheckCollisionRequest
    // Serialize message field [x]
    bufferOffset = _serializer.float64(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float64(obj.y, buffer, bufferOffset);
    // Serialize message field [z]
    bufferOffset = _serializer.float64(obj.z, buffer, bufferOffset);
    // Serialize message field [xsize]
    bufferOffset = _serializer.float64(obj.xsize, buffer, bufferOffset);
    // Serialize message field [ysize]
    bufferOffset = _serializer.float64(obj.ysize, buffer, bufferOffset);
    // Serialize message field [zsize]
    bufferOffset = _serializer.float64(obj.zsize, buffer, bufferOffset);
    // Serialize message field [update_map]
    bufferOffset = _serializer.bool(obj.update_map, buffer, bufferOffset);
    // Serialize message field [ignore_unknown]
    bufferOffset = _serializer.bool(obj.ignore_unknown, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CheckCollisionRequest
    let len;
    let data = new CheckCollisionRequest(null);
    // Deserialize message field [x]
    data.x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z]
    data.z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [xsize]
    data.xsize = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ysize]
    data.ysize = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [zsize]
    data.zsize = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [update_map]
    data.update_map = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ignore_unknown]
    data.ignore_unknown = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 50;
  }

  static datatype() {
    // Returns string type for a service object
    return 'map_manager/CheckCollisionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3784dc4c69633fdb0fc9647695545409';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 x
    float64 y
    float64 z
    float64 xsize
    float64 ysize
    float64 zsize
    bool update_map
    bool ignore_unknown
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CheckCollisionRequest(null);
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

    if (msg.update_map !== undefined) {
      resolved.update_map = msg.update_map;
    }
    else {
      resolved.update_map = false
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

class CheckCollisionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.has_collision = null;
    }
    else {
      if (initObj.hasOwnProperty('has_collision')) {
        this.has_collision = initObj.has_collision
      }
      else {
        this.has_collision = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CheckCollisionResponse
    // Serialize message field [has_collision]
    bufferOffset = _serializer.bool(obj.has_collision, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CheckCollisionResponse
    let len;
    let data = new CheckCollisionResponse(null);
    // Deserialize message field [has_collision]
    data.has_collision = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'map_manager/CheckCollisionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6314e54ac350a926e49f4f603eb76766';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool has_collision
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CheckCollisionResponse(null);
    if (msg.has_collision !== undefined) {
      resolved.has_collision = msg.has_collision;
    }
    else {
      resolved.has_collision = false
    }

    return resolved;
    }
};

module.exports = {
  Request: CheckCollisionRequest,
  Response: CheckCollisionResponse,
  md5sum() { return '175e32ae1f050a1a9b19e0c69bf5eab8'; },
  datatype() { return 'map_manager/CheckCollision'; }
};
