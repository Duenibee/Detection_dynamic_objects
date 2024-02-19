// Auto-generated. Do not edit!

// (in-package yolov8_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let KeyPoint3D = require('./KeyPoint3D.js');

//-----------------------------------------------------------

class KeyPoint3DArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.data = null;
      this.frame_id = null;
    }
    else {
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = [];
      }
      if (initObj.hasOwnProperty('frame_id')) {
        this.frame_id = initObj.frame_id
      }
      else {
        this.frame_id = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type KeyPoint3DArray
    // Serialize message field [data]
    // Serialize the length for message field [data]
    bufferOffset = _serializer.uint32(obj.data.length, buffer, bufferOffset);
    obj.data.forEach((val) => {
      bufferOffset = KeyPoint3D.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [frame_id]
    bufferOffset = _serializer.string(obj.frame_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type KeyPoint3DArray
    let len;
    let data = new KeyPoint3DArray(null);
    // Deserialize message field [data]
    // Deserialize array length for message field [data]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.data = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.data[i] = KeyPoint3D.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [frame_id]
    data.frame_id = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 36 * object.data.length;
    length += _getByteLength(object.frame_id);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'yolov8_msgs/KeyPoint3DArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3fb7359c0337d8b16bcb324732c066fe';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # represents all the keypoints for human pose estimation in meters
    
    yolov8_msgs/KeyPoint3D[] data
    
    # frame reference
    string frame_id
    ================================================================================
    MSG: yolov8_msgs/KeyPoint3D
    # one keypoint for human pose estimation
    
    # id of the keypoint
    int32 id
    
    # 3D point in meters
    geometry_msgs/Point point
    
    # conf of the keypoint
    float64 score
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
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
    const resolved = new KeyPoint3DArray(null);
    if (msg.data !== undefined) {
      resolved.data = new Array(msg.data.length);
      for (let i = 0; i < resolved.data.length; ++i) {
        resolved.data[i] = KeyPoint3D.Resolve(msg.data[i]);
      }
    }
    else {
      resolved.data = []
    }

    if (msg.frame_id !== undefined) {
      resolved.frame_id = msg.frame_id;
    }
    else {
      resolved.frame_id = ''
    }

    return resolved;
    }
};

module.exports = KeyPoint3DArray;
