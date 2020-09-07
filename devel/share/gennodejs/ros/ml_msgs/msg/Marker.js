// Auto-generated. Do not edit!

// (in-package ml_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Marker {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.marker_id = null;
      this.marker_confidence = null;
      this.rows = null;
      this.cols = null;
      this.tag_ids = null;
      this.tag_confidence = null;
      this.pose = null;
    }
    else {
      if (initObj.hasOwnProperty('marker_id')) {
        this.marker_id = initObj.marker_id
      }
      else {
        this.marker_id = 0;
      }
      if (initObj.hasOwnProperty('marker_confidence')) {
        this.marker_confidence = initObj.marker_confidence
      }
      else {
        this.marker_confidence = 0.0;
      }
      if (initObj.hasOwnProperty('rows')) {
        this.rows = initObj.rows
      }
      else {
        this.rows = 0;
      }
      if (initObj.hasOwnProperty('cols')) {
        this.cols = initObj.cols
      }
      else {
        this.cols = 0;
      }
      if (initObj.hasOwnProperty('tag_ids')) {
        this.tag_ids = initObj.tag_ids
      }
      else {
        this.tag_ids = [];
      }
      if (initObj.hasOwnProperty('tag_confidence')) {
        this.tag_confidence = initObj.tag_confidence
      }
      else {
        this.tag_confidence = [];
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Marker
    // Serialize message field [marker_id]
    bufferOffset = _serializer.int32(obj.marker_id, buffer, bufferOffset);
    // Serialize message field [marker_confidence]
    bufferOffset = _serializer.float64(obj.marker_confidence, buffer, bufferOffset);
    // Serialize message field [rows]
    bufferOffset = _serializer.int32(obj.rows, buffer, bufferOffset);
    // Serialize message field [cols]
    bufferOffset = _serializer.int32(obj.cols, buffer, bufferOffset);
    // Serialize message field [tag_ids]
    bufferOffset = _arraySerializer.int32(obj.tag_ids, buffer, bufferOffset, null);
    // Serialize message field [tag_confidence]
    bufferOffset = _arraySerializer.float64(obj.tag_confidence, buffer, bufferOffset, null);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Marker
    let len;
    let data = new Marker(null);
    // Deserialize message field [marker_id]
    data.marker_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [marker_confidence]
    data.marker_confidence = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rows]
    data.rows = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [cols]
    data.cols = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [tag_ids]
    data.tag_ids = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [tag_confidence]
    data.tag_confidence = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.tag_ids.length;
    length += 8 * object.tag_confidence.length;
    return length + 84;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ml_msgs/Marker';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3fc44c2cb27f5503bc7ad49b3ff1f830';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This expresses a marker in a 3D space
    int32 marker_id           # id of the marker detected
    float64 marker_confidence  # confidence that this marker is identified correctly
    
    int32 rows                # number of rows of tags in this marker
    int32 cols                # number of cols of tags in this marker
    
    int32[] tag_ids           # possible ids of the detected marker (empty if no id could be identified)
    float64[] tag_confidence  # confidence of the possible ids in 0 -> 1 (empty if no id could be identified)
    
    geometry_msgs/Pose pose   # pose of the detected marker/fiducial
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Marker(null);
    if (msg.marker_id !== undefined) {
      resolved.marker_id = msg.marker_id;
    }
    else {
      resolved.marker_id = 0
    }

    if (msg.marker_confidence !== undefined) {
      resolved.marker_confidence = msg.marker_confidence;
    }
    else {
      resolved.marker_confidence = 0.0
    }

    if (msg.rows !== undefined) {
      resolved.rows = msg.rows;
    }
    else {
      resolved.rows = 0
    }

    if (msg.cols !== undefined) {
      resolved.cols = msg.cols;
    }
    else {
      resolved.cols = 0
    }

    if (msg.tag_ids !== undefined) {
      resolved.tag_ids = msg.tag_ids;
    }
    else {
      resolved.tag_ids = []
    }

    if (msg.tag_confidence !== undefined) {
      resolved.tag_confidence = msg.tag_confidence;
    }
    else {
      resolved.tag_confidence = []
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

module.exports = Marker;
