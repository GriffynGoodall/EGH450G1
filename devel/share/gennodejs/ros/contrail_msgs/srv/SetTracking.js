// Auto-generated. Do not edit!

// (in-package contrail_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetTrackingRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tracking = null;
    }
    else {
      if (initObj.hasOwnProperty('tracking')) {
        this.tracking = initObj.tracking
      }
      else {
        this.tracking = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetTrackingRequest
    // Serialize message field [tracking]
    bufferOffset = _serializer.uint8(obj.tracking, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetTrackingRequest
    let len;
    let data = new SetTrackingRequest(null);
    // Deserialize message field [tracking]
    data.tracking = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'contrail_msgs/SetTrackingRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c9243e9b574a04db99088031f82c5223';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 TRACKING_NONE = 0
    uint8 TRACKING_SPLINE = 1
    uint8 TRACKING_PATH = 2
    uint8 TRACKING_POSE = 3
    
    # Set using the "TRACKING_*" options defined above
    # If no match is found the request will be rejected
    uint8 tracking
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetTrackingRequest(null);
    if (msg.tracking !== undefined) {
      resolved.tracking = msg.tracking;
    }
    else {
      resolved.tracking = 0
    }

    return resolved;
    }
};

// Constants for message
SetTrackingRequest.Constants = {
  TRACKING_NONE: 0,
  TRACKING_SPLINE: 1,
  TRACKING_PATH: 2,
  TRACKING_POSE: 3,
}

class SetTrackingResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetTrackingResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetTrackingResponse
    let len;
    let data = new SetTrackingResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'contrail_msgs/SetTrackingResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    bool success
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetTrackingResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: SetTrackingRequest,
  Response: SetTrackingResponse,
  md5sum() { return 'fcc46c426eb0b77856610784df76e9f8'; },
  datatype() { return 'contrail_msgs/SetTracking'; }
};
