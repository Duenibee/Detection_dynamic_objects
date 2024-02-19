// Auto-generated. Do not edit!

// (in-package yolov8_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Pose2D = require('./Pose2D.js');
let Vector2 = require('./Vector2.js');

//-----------------------------------------------------------

class BoundingBox2D {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.center = null;
      this.size = null;
      this.id = null;
    }
    else {
      if (initObj.hasOwnProperty('center')) {
        this.center = initObj.center
      }
      else {
        this.center = new Pose2D();
      }
      if (initObj.hasOwnProperty('size')) {
        this.size = initObj.size
      }
      else {
        this.size = new Vector2();
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BoundingBox2D
    // Serialize message field [center]
    bufferOffset = Pose2D.serialize(obj.center, buffer, bufferOffset);
    // Serialize message field [size]
    bufferOffset = Vector2.serialize(obj.size, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BoundingBox2D
    let len;
    let data = new BoundingBox2D(null);
    // Deserialize message field [center]
    data.center = Pose2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [size]
    data.size = Vector2.deserialize(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 44;
  }

  static datatype() {
    // Returns string type for a message object
    return 'yolov8_msgs/BoundingBox2D';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7a678d71f8998ae4690f9ad4663f405f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 2D position and orientation of the bounding box center
    yolov8_msgs/Pose2D center
    
    # total size of the bounding box, in pixels, surrounding the object's center
    yolov8_msgs/Vector2 size
    
    # id of the keypoint
    int32 id
    
    ================================================================================
    MSG: yolov8_msgs/Pose2D
    # 2D position in pixel coordinates
    
    yolov8_msgs/Point2D position
    float64 theta
    ================================================================================
    MSG: yolov8_msgs/Point2D
    # 2D point in pixel coordinates
    
    float64 x
    float64 y
    ================================================================================
    MSG: yolov8_msgs/Vector2
    # 2D size in pixel
    
    float64 x
    float64 y
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BoundingBox2D(null);
    if (msg.center !== undefined) {
      resolved.center = Pose2D.Resolve(msg.center)
    }
    else {
      resolved.center = new Pose2D()
    }

    if (msg.size !== undefined) {
      resolved.size = Vector2.Resolve(msg.size)
    }
    else {
      resolved.size = new Vector2()
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    return resolved;
    }
};

module.exports = BoundingBox2D;
