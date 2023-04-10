
"use strict";

let MasterboardDataMsg = require('./MasterboardDataMsg.js');
let Analog = require('./Analog.js');
let Digital = require('./Digital.js');
let RobotStateRTMsg = require('./RobotStateRTMsg.js');
let IOStates = require('./IOStates.js');
let RobotModeDataMsg = require('./RobotModeDataMsg.js');
let ToolDataMsg = require('./ToolDataMsg.js');

module.exports = {
  MasterboardDataMsg: MasterboardDataMsg,
  Analog: Analog,
  Digital: Digital,
  RobotStateRTMsg: RobotStateRTMsg,
  IOStates: IOStates,
  RobotModeDataMsg: RobotModeDataMsg,
  ToolDataMsg: ToolDataMsg,
};
