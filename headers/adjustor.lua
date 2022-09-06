---@class Adjustor : GenericElement
Adjustor = GenericElement:new()

---Start the adjustor at full power
---This function must be used in a piloting controller
function Adjustor.activate() end

---Stop the adjustor
---This function must be used in a piloting controller
function Adjustor.deactivate() end

---Checks if the adjustor is active
---@return boolean state True when the adjustor is on
function Adjustor.isActive() end

---Toggle the adjustor
---This function must be used in a piloting controller
function Adjustor.toggle() end

---Set the exhaust thrust of the adjustor
---This function must be used in a piloting controller
---@param thrust number The adjustor thrust in newtons
function Adjustor.setThrust(thrust) end

---Returns the current exhaust thrust of the adjustor
---@return number thrust The current exhaust thrust of the adjustor in newtons
function Adjustor.getThrust() end

---Returns the maximal exhaust thrust the adjustor can deliver
---@return number thrust The maximum exhaust thrust of the adjustor in newtons
function Adjustor.getMaxThrust() end

---Returns the adjustor exhaust thrust direction in construct local coordinates
---@return vec3 direction The adjustor exhaust thrust direction vector in construct local coordinates
function Adjustor.getThrustAxis() end

---Returns the adjustor torque axis in construct local coordinates
---@return vec3 torque The torque axis vector in construct local coordinates
function Adjustor.getTorqueAxis() end

---Returns the adjustor exhaust thrust direction in world coordinates
---@return vec3 direction The adjustor thrust direction vector in world coordinates
function Adjustor.getWorldThrustAxis() end

---Returns the adjustor torque axis in world coordinates
---@return vec3 torque The torque axis vector in world coordinates
function Adjustor.getWorldTorqueAxis() end

---Return the obstruction ratio of the engine exhaust by elements and voxels. 
---@return number ratio The obstruction ratio of the engine
function Adjustor.getObstructionFactor() end

---Returns the tags of the engine
---@return string tags Tags of the engine, in a CSV string
function Adjustor.getTags() end

---Set the tags of the engine
---@param tags string The CSV string of the tags
---@param ignore boolean True to ignore the default engine tags
function Adjustor.setTags(tags, ignore) end

---Checks if the engine is ignoring default tags
---@return boolean state True if the engine ignores default engine tags
function Adjustor.isIgnoringTags() end


