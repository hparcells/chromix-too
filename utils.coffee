utils = require "./extension/utils"
utils.extend exports, utils

utils.extend exports.config,
  sock: if process.platform == "win32" then "\\\\.\\pipe\\chromix-too" else require("path").join process.env["HOME"], ".chromix-too.sock"
  mode: "0600"
