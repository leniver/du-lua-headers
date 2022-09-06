---@class SpaceEngine : GenericElement
SpaceEngine = GenericElement:new()

---Start the engine at full power
---This function must be used in a piloting controller
function SpaceEngine.activate() end

---Stop the engine
---This function must be used in a piloting controller
function SpaceEngine.deactivate() end

---Checks if the engine is active
---@return boolean state True when the engine is on
function SpaceEngine.isActive() end

---Toggle the engine
---This function must be used in a piloting controller
function SpaceEngine.toggle() end

---Set the exhaust thrust of the engine
---This function must be used in a piloting controller
---@param thrust number The engine thrust in newtons
function SpaceEngine.setThrust(thrust) end

---Returns the current exhaust thrust of the engine
---@return number thrust The current exhaust thrust of the engine in newtons
function SpaceEngine.getThrust() end

---Returns the maximal exhaust thrust the engine can deliver
---@return number thrust The maximum exhaust thrust of the engine in newtons
function SpaceEngine.getMaxThrust() end

---Return the minimal thrust the engine can deliver at the moment
---@return number thrust The current min engine thrust in newtons
function SpaceEngine.getCurrentMinThrust() end

---Return the maximal thrust the engine can deliver at the moment
---@return number thrust The current max engine thrust in newtons
function SpaceEngine.getCurrentMaxThrust() end

---Returns the ratio between the current maximum thrust and the optimal maximum thrust
---@return number efficiency Usually 1 but can be lower for certain engines
function SpaceEngine.getMaxThrustEfficiency() end

---Checks if the torque generation is enabled on the engine
---@return boolean status True if the torque is enabled on the engine
function SpaceEngine.isTorqueEnabled() end

---Sets the torque generation state on the engine
---@param state boolean True to enable the torque generation
function SpaceEngine.enableTorque(state) end

---Returns the engine exhaust thrust direction in construct local coordinates
---@return vec3 direction The engine exhaust thrust direction vector in construct local coordinates
function SpaceEngine.getThrustAxis() end

---Returns the engine torque axis in construct local coordinates
---@return vec3 torque The torque axis vector in construct local coordinates
function SpaceEngine.getTorqueAxis() end

---Returns the engine exhaust thrust direction in world coordinates
---@return vec3 direction The engine thrust direction vector in world coordinates
function SpaceEngine.getWorldThrustAxis() end

---Returns the engine torque axis in world coordinates
---@return vec3 torque The torque axis vector in world coordinates
function SpaceEngine.getWorldTorqueAxis() end

---Checks if the engine is out of fuel
---@return boolean status True when there is no fuel left
function SpaceEngine.isOutOfFuel() end

---Returns the item ID of the fuel currently used by the engine
---@return number id The item ID of the fuel currently used
function SpaceEngine.getFuelId() end

---Returns the local ID of the fueltank linked to the engine
---@return number id The local ID of the fueltank
function SpaceEngine.getFuelTankId() end

---Checks if the engine linked to a functional fuel tank
---@return boolean status True when the linked tank is functional
function SpaceEngine.hasFunctionalFuelTank() end

---Returns then engine fuel consumption rate per newton of thrust delivered per second
---@return number rate The current rate of fuel consumption in m3/s
function SpaceEngine.getCurrentFuelRate() end

---Returns the ratio between the current fuel rate and the theoretical nominal fuel rate
---@return number rate Usually 1 but can be higher for certain engines at certain speeds
function SpaceEngine.getFuelRateEfficiency() end

---Returns the current fuel consumption rate
---@return number rate The rate of fuel consumption in m3/s
function SpaceEngine.getFuelConsumption() end

---Returns the T50: the time needed for the engine to reach 50% of its maximal thrust.
---@return number time The time to half thrust in seconds
function SpaceEngine.getWarmupTime() end

---Return the obstruction ratio of the engine exhaust by elements and voxels. 
---@return number ratio The obstruction ratio of the engine
function SpaceEngine.getObstructionFactor() end

---Returns the tags of the engine
---@return string tags Tags of the engine, in a CSV string
function SpaceEngine.getTags() end

---Set the tags of the engine
---@param tags string The CSV string of the tags
---@param ignore boolean True to ignore the default engine tags
function SpaceEngine.setTags(tags, ignore) end

---Checks if the engine is ignoring default tags
---@return boolean state True if the engine ignores default engine tags
function SpaceEngine.isIgnoringTags() end

