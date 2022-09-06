---@class Receiver : GenericElement
Receiver = GenericElement:new()

---Returns the emitter range
---@return number range The range in meters
function Receiver.getRange() end

---Checks if the given channel exists in the receiver channels list
---@param channel string The channels list as Lua table
---@return boolean result True if the channels list contains the given channel
function Receiver.hasChannel(channel) end

---Set the channels list
---@param channels string[] The channels list as Lua table
---@return boolean result True if the channels list has been successfully set
function Receiver.setChannelList(channels) end

---Returns the channels list
---@return string[] channels The channels list as Lua table
function Receiver.getChannels() end
