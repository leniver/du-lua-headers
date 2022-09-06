---@class SpaceBrake : GenericElement
SpaceBrake = GenericElement:new()

---Start the brake at full power
---This function must be used in a piloting controller
function SpaceBrake.activate() end

---Stop the brake
---This function must be used in a piloting controller
function SpaceBrake.deactivate() end

---Checks if the brake is active
---@return boolean state True when the brake is on
function SpaceBrake.isActive() end

---Toggle the brake
---This function must be used in a piloting controller
function SpaceBrake.toggle() end

---Set the exhaust thrust of the brake
---This function must be used in a piloting controller
---@param thrust number The brake thrust in newtons
function SpaceBrake.setThrust(thrust) end

---Returns the current exhaust thrust of the brake
---@return number thrust The current exhaust thrust of the brake in newtons
function SpaceBrake.getThrust() end

---Returns the maximal exhaust thrust the brake can deliver
---@return number thrust The maximum exhaust thrust of the brake in newtons
function SpaceBrake.getMaxThrust() end

---Return the minimal thrust the brake can deliver at the moment
---@return number thrust The current min brake thrust in newtons
function SpaceBrake.getCurrentMinThrust() end

---Return the maximal thrust the brake can deliver at the moment
---@return number thrust The current max brake thrust in newtons
function SpaceBrake.getCurrentMaxThrust() end

---Returns the ratio between the current maximum thrust and the optimal maximum thrust
---@return number efficiency Usually 1 but can be lower for certain brakes
function SpaceBrake.getMaxThrustEfficiency() end

---Returns the brake exhaust thrust direction in construct local coordinates
---@return vec3 direction The brake exhaust thrust direction vector in construct local coordinates
function SpaceBrake.getThrustAxis() end

---Returns the brake exhaust thrust direction in world coordinates
---@return vec3 direction The brake thrust direction vector in world coordinates
function SpaceBrake.getWorldThrustAxis() end

---Return the obstruction ratio of the engine exhaust by elements and voxels. 
---@return number ratio The obstruction ratio of the engine
function SpaceBrake.getObstructionFactor() end

---Returns the tags of the engine
---@return string tags Tags of the engine, in a CSV string
function SpaceBrake.getTags() end

---Set the tags of the engine
---@param tags string The CSV string of the tags
---@param ignore boolean True to ignore the default engine tags
function SpaceBrake.setTags(tags, ignore) end

---Checks if the engine is ignoring default tags
---@return boolean state True if the engine ignores default engine tags
function SpaceBrake.isIgnoringTags() end
