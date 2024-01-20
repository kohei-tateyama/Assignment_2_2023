// Auto-generated. Do not edit!

// (in-package assignment_2_2023.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class GetDistRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetDistRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetDistRequest
    let len;
    let data = new GetDistRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'assignment_2_2023/GetDistRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetDistRequest(null);
    return resolved;
    }
};

class GetDistResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.dist = null;
      this.av_speed_x = null;
      this.av_speed_y = null;
    }
    else {
      if (initObj.hasOwnProperty('dist')) {
        this.dist = initObj.dist
      }
      else {
        this.dist = 0.0;
      }
      if (initObj.hasOwnProperty('av_speed_x')) {
        this.av_speed_x = initObj.av_speed_x
      }
      else {
        this.av_speed_x = 0.0;
      }
      if (initObj.hasOwnProperty('av_speed_y')) {
        this.av_speed_y = initObj.av_speed_y
      }
      else {
        this.av_speed_y = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetDistResponse
    // Serialize message field [dist]
    bufferOffset = _serializer.float64(obj.dist, buffer, bufferOffset);
    // Serialize message field [av_speed_x]
    bufferOffset = _serializer.float64(obj.av_speed_x, buffer, bufferOffset);
    // Serialize message field [av_speed_y]
    bufferOffset = _serializer.float64(obj.av_speed_y, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetDistResponse
    let len;
    let data = new GetDistResponse(null);
    // Deserialize message field [dist]
    data.dist = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [av_speed_x]
    data.av_speed_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [av_speed_y]
    data.av_speed_y = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'assignment_2_2023/GetDistResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'baf3f8753bb076ec82d9321f4cc87db6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 dist
    float64 av_speed_x
    float64 av_speed_y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetDistResponse(null);
    if (msg.dist !== undefined) {
      resolved.dist = msg.dist;
    }
    else {
      resolved.dist = 0.0
    }

    if (msg.av_speed_x !== undefined) {
      resolved.av_speed_x = msg.av_speed_x;
    }
    else {
      resolved.av_speed_x = 0.0
    }

    if (msg.av_speed_y !== undefined) {
      resolved.av_speed_y = msg.av_speed_y;
    }
    else {
      resolved.av_speed_y = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: GetDistRequest,
  Response: GetDistResponse,
  md5sum() { return 'baf3f8753bb076ec82d9321f4cc87db6'; },
  datatype() { return 'assignment_2_2023/GetDist'; }
};
