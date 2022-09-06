---@class DetectionZone : GenericElement
DetectionZone = GenericElement:new()

---Returns the detection zone radius
---@return number radius The detection zone radius
function DetectionZone.getRadius() end

---Returns the list of ids of the player in the detection zone
---@return number[] ids The list of player ids
function DetectionZone.getPlayers() end
