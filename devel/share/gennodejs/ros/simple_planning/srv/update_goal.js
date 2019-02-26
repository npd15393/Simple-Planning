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

class update_goalRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.goal_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = '';
      }
      if (initObj.hasOwnProperty('goal_pose')) {
        this.goal_pose = initObj.goal_pose
      }
      else {
        this.goal_pose = new position();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type update_goalRequest
    // Serialize message field [id]
    bufferOffset = _serializer.string(obj.id, buffer, bufferOffset);
    // Serialize message field [goal_pose]
    bufferOffset = position.serialize(obj.goal_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type update_goalRequest
    let len;
    let data = new update_goalRequest(null);
    // Deserialize message field [id]
    data.id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [goal_pose]
    data.goal_pose = position.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.id.length;
    return length + 10;
  }

  static datatype() {
    // Returns string type for a service object
    return 'simple_planning/update_goalRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6c3f64fdd204d39a46bf43783756a939';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string id
    simple_planning/position goal_pose
    
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
    const resolved = new update_goalRequest(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = ''
    }

    if (msg.goal_pose !== undefined) {
      resolved.goal_pose = position.Resolve(msg.goal_pose)
    }
    else {
      resolved.goal_pose = new position()
    }

    return resolved;
    }
};

class update_goalResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type update_goalResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type update_goalResponse
    let len;
    let data = new update_goalResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'simple_planning/update_goalResponse';
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
    const resolved = new update_goalResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: update_goalRequest,
  Response: update_goalResponse,
  md5sum() { return '6c3f64fdd204d39a46bf43783756a939'; },
  datatype() { return 'simple_planning/update_goal'; }
};
