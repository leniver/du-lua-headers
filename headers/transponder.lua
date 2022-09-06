---@class Transponder : GenericElement
Transponder = GenericElement:new()

---Activate the transponder
function Transponder.activate() end

---Deactivate the transponder
function Transponder.deactivate() end

---Toggle the state of the transponder
function Transponder.toggle() end

---Checks if the transponder is active
---@return boolean active True when the transponder is active
function Transponder.isActive() end

---Set the tags list with up to 8 entries
---@param tags string[] List of up to 8 transponder tag strings
---@return boolean result True if the transponder tags were set.
function Transponder.setTags(tags) end

---Returns the tag list
---@return string[] tags List of up to 8 transponder tag strings
function Transponder.getTags() end
