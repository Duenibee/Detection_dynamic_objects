// Auto-generated. Do not edit!

// (in-package yolov8_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let BoundingBox2D = require('./BoundingBox2D.js');
let BoundingBox3D = require('./BoundingBox3D.js');
let Mask = require('./Mask.js');
let KeyPoint2DArray = require('./KeyPoint2DArray.js');
let KeyPoint3DArray = require('./KeyPoint3DArray.js');

//-----------------------------------------------------------

class Detection {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.class_id = null;
      this.class_name = null;
      this.score = null;
      this.id = null;
      this.bbox = null;
      this.bbox3d = null;
      this.mask = null;
      this.keypoints = null;
      this.keypoints3d = null;
    }
    else {
      if (initObj.hasOwnProperty('class_id')) {
        this.class_id = initObj.class_id
      }
      else {
        this.class_id = 0;
      }
      if (initObj.hasOwnProperty('class_name')) {
        this.class_name = initObj.class_name
      }
      else {
        this.class_name = '';
      }
      if (initObj.hasOwnProperty('score')) {
        this.score = initObj.score
      }
      else {
        this.score = 0.0;
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = '';
      }
      if (initObj.hasOwnProperty('bbox')) {
        this.bbox = initObj.bbox
      }
      else {
        this.bbox = new BoundingBox2D();
      }
      if (initObj.hasOwnProperty('bbox3d')) {
        this.bbox3d = initObj.bbox3d
      }
      else {
        this.bbox3d = new BoundingBox3D();
      }
      if (initObj.hasOwnProperty('mask')) {
        this.mask = initObj.mask
      }
      else {
        this.mask = new Mask();
      }
      if (initObj.hasOwnProperty('keypoints')) {
        this.keypoints = initObj.keypoints
      }
      else {
        this.keypoints = new KeyPoint2DArray();
      }
      if (initObj.hasOwnProperty('keypoints3d')) {
        this.keypoints3d = initObj.keypoints3d
      }
      else {
        this.keypoints3d = new KeyPoint3DArray();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Detection
    // Serialize message field [class_id]
    bufferOffset = _serializer.int32(obj.class_id, buffer, bufferOffset);
    // Serialize message field [class_name]
    bufferOffset = _serializer.string(obj.class_name, buffer, bufferOffset);
    // Serialize message field [score]
    bufferOffset = _serializer.float64(obj.score, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.string(obj.id, buffer, bufferOffset);
    // Serialize message field [bbox]
    bufferOffset = BoundingBox2D.serialize(obj.bbox, buffer, bufferOffset);
    // Serialize message field [bbox3d]
    bufferOffset = BoundingBox3D.serialize(obj.bbox3d, buffer, bufferOffset);
    // Serialize message field [mask]
    bufferOffset = Mask.serialize(obj.mask, buffer, bufferOffset);
    // Serialize message field [keypoints]
    bufferOffset = KeyPoint2DArray.serialize(obj.keypoints, buffer, bufferOffset);
    // Serialize message field [keypoints3d]
    bufferOffset = KeyPoint3DArray.serialize(obj.keypoints3d, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Detection
    let len;
    let data = new Detection(null);
    // Deserialize message field [class_id]
    data.class_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [class_name]
    data.class_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [score]
    data.score = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [bbox]
    data.bbox = BoundingBox2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [bbox3d]
    data.bbox3d = BoundingBox3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [mask]
    data.mask = Mask.deserialize(buffer, bufferOffset);
    // Deserialize message field [keypoints]
    data.keypoints = KeyPoint2DArray.deserialize(buffer, bufferOffset);
    // Deserialize message field [keypoints3d]
    data.keypoints3d = KeyPoint3DArray.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.class_name);
    length += _getByteLength(object.id);
    length += BoundingBox3D.getMessageSize(object.bbox3d);
    length += Mask.getMessageSize(object.mask);
    length += KeyPoint2DArray.getMessageSize(object.keypoints);
    length += KeyPoint3DArray.getMessageSize(object.keypoints3d);
    return length + 64;
  }

  static datatype() {
    // Returns string type for a message object
    return 'yolov8_msgs/Detection';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '31ba195dd6b98bf5c109b7496238608a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # defines a YOLOv8 detection result
    
    # class probability
    int32 class_id
    string class_name
    float64 score
    
    # ID for tracking
    string id
    
    # 2D bounding box surrounding the object in pixels
    yolov8_msgs/BoundingBox2D bbox
    
    # 3D bounding box surrounding the object in meters
    yolov8_msgs/BoundingBox3D bbox3d
    
    # segmentation mask of the detected object
    # it is only the boundary of the segmented object
    yolov8_msgs/Mask mask
    
    # keypoints for human pose estimation
    yolov8_msgs/KeyPoint2DArray keypoints
    
    # keypoints for human pose estimation
    yolov8_msgs/KeyPoint3DArray keypoints3d
    ================================================================================
    MSG: yolov8_msgs/BoundingBox2D
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
    ================================================================================
    MSG: yolov8_msgs/BoundingBox3D
    # 3D position and orientation of the bounding box center
    geometry_msgs/Pose center
    
    # total size of the bounding box, in meters, surrounding the object's center
    geometry_msgs/Vector3 size
    
    # frame reference
    string frame_id
    
    # id of the keypoint
    int32 id
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
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
    ================================================================================
    MSG: yolov8_msgs/Mask
    # segmentation mask for one instance
    
    # size of the original image
    int32 height
    int32 width
    
    # mask data represeted by the points of the border of the mask
    yolov8_msgs/Point2D[] data
    
    
    ================================================================================
    MSG: yolov8_msgs/KeyPoint2DArray
    # represents all the keypoints for human pose estimation
    
    yolov8_msgs/KeyPoint2D[] data
    ================================================================================
    MSG: yolov8_msgs/KeyPoint2D
    # one keypoint for human pose estimation
    
    # id of the keypoint
    int32 id
    
    # 2D point in pixels
    yolov8_msgs/Point2D point
    
    # conf of the keypoint
    float64 score
    ================================================================================
    MSG: yolov8_msgs/KeyPoint3DArray
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Detection(null);
    if (msg.class_id !== undefined) {
      resolved.class_id = msg.class_id;
    }
    else {
      resolved.class_id = 0
    }

    if (msg.class_name !== undefined) {
      resolved.class_name = msg.class_name;
    }
    else {
      resolved.class_name = ''
    }

    if (msg.score !== undefined) {
      resolved.score = msg.score;
    }
    else {
      resolved.score = 0.0
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = ''
    }

    if (msg.bbox !== undefined) {
      resolved.bbox = BoundingBox2D.Resolve(msg.bbox)
    }
    else {
      resolved.bbox = new BoundingBox2D()
    }

    if (msg.bbox3d !== undefined) {
      resolved.bbox3d = BoundingBox3D.Resolve(msg.bbox3d)
    }
    else {
      resolved.bbox3d = new BoundingBox3D()
    }

    if (msg.mask !== undefined) {
      resolved.mask = Mask.Resolve(msg.mask)
    }
    else {
      resolved.mask = new Mask()
    }

    if (msg.keypoints !== undefined) {
      resolved.keypoints = KeyPoint2DArray.Resolve(msg.keypoints)
    }
    else {
      resolved.keypoints = new KeyPoint2DArray()
    }

    if (msg.keypoints3d !== undefined) {
      resolved.keypoints3d = KeyPoint3DArray.Resolve(msg.keypoints3d)
    }
    else {
      resolved.keypoints3d = new KeyPoint3DArray()
    }

    return resolved;
    }
};

module.exports = Detection;
