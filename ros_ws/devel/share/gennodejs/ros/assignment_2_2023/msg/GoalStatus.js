// Auto-generated. Do not edit!

// (in-package assignment_2_2023.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class GoalStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.goal_id = null;
      this.stamp = null;
      this.secs = null;
      this.nsecs = null;
      this.id = null;
      this.status = null;
      this.text = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = 0.0;
      }
      if (initObj.hasOwnProperty('goal_id')) {
        this.goal_id = initObj.goal_id
      }
      else {
        this.goal_id = 0.0;
      }
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = 0.0;
      }
      if (initObj.hasOwnProperty('secs')) {
        this.secs = initObj.secs
      }
      else {
        this.secs = 0.0;
      }
      if (initObj.hasOwnProperty('nsecs')) {
        this.nsecs = initObj.nsecs
      }
      else {
        this.nsecs = 0.0;
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0.0;
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0.0;
      }
      if (initObj.hasOwnProperty('text')) {
        this.text = initObj.text
      }
      else {
        this.text = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GoalStatus
    // Serialize message field [header]
    bufferOffset = _serializer.float64(obj.header, buffer, bufferOffset);
    // Serialize message field [goal_id]
    bufferOffset = _serializer.float64(obj.goal_id, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.float64(obj.stamp, buffer, bufferOffset);
    // Serialize message field [secs]
    bufferOffset = _serializer.float64(obj.secs, buffer, bufferOffset);
    // Serialize message field [nsecs]
    bufferOffset = _serializer.float64(obj.nsecs, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.float64(obj.id, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.float64(obj.status, buffer, bufferOffset);
    // Serialize message field [text]
    bufferOffset = _serializer.float64(obj.text, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GoalStatus
    let len;
    let data = new GoalStatus(null);
    // Deserialize message field [header]
    data.header = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [goal_id]
    data.goal_id = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [secs]
    data.secs = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [nsecs]
    data.nsecs = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [text]
    data.text = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 64;
  }

  static datatype() {
    // Returns string type for a message object
    return 'assignment_2_2023/GoalStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '067cd7cb55e722a1bc57106df18d22c9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 header
    float64 goal_id
    float64 stamp
    float64 secs
    float64 nsecs
    float64 id
    float64 status
    float64 text
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GoalStatus(null);
    if (msg.header !== undefined) {
      resolved.header = msg.header;
    }
    else {
      resolved.header = 0.0
    }

    if (msg.goal_id !== undefined) {
      resolved.goal_id = msg.goal_id;
    }
    else {
      resolved.goal_id = 0.0
    }

    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = 0.0
    }

    if (msg.secs !== undefined) {
      resolved.secs = msg.secs;
    }
    else {
      resolved.secs = 0.0
    }

    if (msg.nsecs !== undefined) {
      resolved.nsecs = msg.nsecs;
    }
    else {
      resolved.nsecs = 0.0
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0.0
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0.0
    }

    if (msg.text !== undefined) {
      resolved.text = msg.text;
    }
    else {
      resolved.text = 0.0
    }

    return resolved;
    }
};

module.exports = GoalStatus;
