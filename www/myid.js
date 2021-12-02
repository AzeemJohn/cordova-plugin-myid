var exec = require('cordova/exec');

var PLUGIN_NAME = "CordovaPluginMyid"; // This is just for code completion uses.

var CordovaPluginMyid = function() {}; // This just makes it easier for
 us to export all of the functions at once.
// All of your plugin functions go below this. 
// Note: We are not passing any options in the [] block for this, so make sure you include the empty [] block.
CordovaPluginMyid.yourFunctionName = function(onSuccess, onError) {
   exec(onSuccess, onError, PLUGIN_NAME, "yourFunctionName", []);
};
module.exports = CordovaPluginMyid;


'use strict';

Object.defineProperty(exports, "_esModule", {
 value: true
});

export.isSupported = isSupported;
export.startReception = startReception;
export.stopReception = stopReception;
export.requestPermission = requestPermission;

var _exec = require('cordova/exec');

var _exec2
