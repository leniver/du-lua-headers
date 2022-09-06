---@class Emitter : GenericElement
Emitter = GenericElement:new()

---Send a message on the given channel, limited to one transmission per frame and per channel
---@param channel string The channel name, limited to 64 characters. The message will not be sent if it exceeds this limit.
---@param message string The message to be transmitted, truncated to 512 characters in case of overflow
function Emitter.send(channel, message) end

---Returns the emitter range
---@return number range The range in meters
function Emitter.getRange() end
