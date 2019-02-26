// Auto-generated. Do not edit!

// (in-package simple_planning.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let position = require('../msg/position.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class get_planRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.a_id = null;
      this.goal = null;
    }
    else {
      if (initObj.hasOwnProperty('a_id')) {
        this.a_id = initObj.a_id
      }
      else {
        this.a_id = '';
      }
      if (initObj.hasOwnProperty('goal')) {
        this.goal = initObj.goal
      }
      else {
        this.goal = new position();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type get_planRequest
    // Serialize message field [a_id]
    bufferOffset = _serializer.string(obj.a_id, buffer, bufferOffset);
    // Serialize message field [goal]
    bufferOffset = position.serialize(obj.goal, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type get_planRequest
    let len;
    let data = new get_planRequest(null);
    // Deserialize message field [a_id]
    data.a_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [goal]
    data.goal = position.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.a_id.length;
    return length + 10;
  }

  static datatype() {
    // Returns string type for a service object
    return 'simple_planning/get_planRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ecf2a5b86287c816e8b2cabb479cb7e2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string a_id
    simple_planning/position goal
    
    ================================================================================
    MSG: simple_planning/position
    int16 x
    int16 y
    int16 yaw
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new get_planRequest(null);
    if (msg.a_id !== undefined) {
      resolved.a_id = msg.a_id;
    }
    else {
      resolved.a_id = ''
    }

    if (msg.goal !== undefined) {
      resolved.goal = position.Resolve(msg.goal)
    }
    else {
      resolved.goal = new position()
    }

    return resolved;
    }
};

class get_planResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type get_planResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type get_planResponse
    let len;
    let data = new get_planResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'simple_planning/get_planResponse';
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
    const resolved = new get_planResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: get_planRequest,
  Response: get_planResponse,
  md5sum() { return 'ecf2a5b86287c816e8b2cabb479cb7e2'; },
  datatype() { return 'simple_planning/get_plan'; }
};
