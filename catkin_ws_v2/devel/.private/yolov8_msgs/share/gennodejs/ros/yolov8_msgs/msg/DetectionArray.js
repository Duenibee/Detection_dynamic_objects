// Auto-generated. Do not edit!

// (in-package yolov8_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Detection = require('./Detection.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class DetectionArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.detections = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('detections')) {
        this.detections = initObj.detections
      }
      else {
        this.detections = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DetectionArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [detections]
    // Serialize the length for message field [detections]
    bufferOffset = _serializer.uint32(obj.detections.length, buffer, bufferOffset);
    obj.detections.forEach((val) => {
      bufferOffset = Detection.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DetectionArray
    let len;
    let data = new DetectionArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [detections]
    // Deserialize array length for message field [detections]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.detections = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.detections[i] = Detection.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.detections.forEach((val) => {
      length += Detection.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'yolov8_msgs/DetectionArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ab40dfc0c14b3f3b43fd349e871f56de';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # represents all YOLOv8 detections in one frame
    
    std_msgs/Header header
    yolov8_msgs/Detection[] detections
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
    MSG: yolov8_msgs/Detection
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
    const resolved = new DetectionArray(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.detections !== undefined) {
      resolved.detections = new Array(msg.detections.length);
      for (let i = 0; i < resolved.detections.length; ++i) {
        resolved.detections[i] = Detection.Resolve(msg.detections[i]);
      }
    }
    else {
      resolved.detections = []
    }

    return resolved;
    }
};

module.exports = DetectionArray;
