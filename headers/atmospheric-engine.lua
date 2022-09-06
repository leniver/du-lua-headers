---@class AtmosphericEngine : GenericElement
AtmosphericEngine = GenericElement:new()

---Start the engine at full power
---This function must be used in a piloting controller
function AtmosphericEngine.activate() end

---Stop the engine
---This function must be used in a piloting controller
function AtmosphericEngine.deactivate() end

---Checks if the engine is active
---@return boolean state True when the engine is on
function AtmosphericEngine.isActive() end

---Toggle the engine
---This function must be used in a piloting controller
function AtmosphericEngine.toggle() end

---Set the exhaust thrust of the engine
---This function must be used in a piloting controller
---@param thrust number The engine thrust in newtons
function AtmosphericEngine.setThrust(thrust) end

---Returns the current exhaust thrust of the engine
---@return number thrust The current exhaust thrust of the engine in newtons
function AtmosphericEngine.getThrust() end

---Returns the maximal exhaust thrust the engine can deliver
---@return number thrust The maximum exhaust thrust of the engine in newtons
function AtmosphericEngine.getMaxThrust() end

---Return the minimal thrust the engine can deliver at the moment
---@return number thrust The current min engine thrust in newtons
function AtmosphericEngine.getCurrentMinThrust() end

---Return the maximal thrust the engine can deliver at the moment
---@return number thrust The current max engine thrust in newtons
function AtmosphericEngine.getCurrentMaxThrust() end

---Returns the ratio between the current maximum thrust and the optimal maximum thrust
---@return number efficiency Usually 1 but can be lower for certain engines
function AtmosphericEngine.getMaxThrustEfficiency() end

---Checks if the torque generation is enabled on the engine
---@return boolean status True if the torque is enabled on the engine
function AtmosphericEngine.isTorqueEnabled() end

---Sets the torque generation state on the engine
---@param state boolean True to enable the torque generation
function AtmosphericEngine.enableTorque(state) end

---Returns the engine exhaust thrust direction in construct local coordinates
---@return vec3 direction The engine exhaust thrust direction vector in construct local coordinates
function AtmosphericEngine.getThrustAxis() end

---Returns the engine torque axis in construct local coordinates
---@return vec3 torque The torque axis vector in construct local coordinates
function AtmosphericEngine.getTorqueAxis() end

---Returns the engine exhaust thrust direction in world coordinates
---@return vec3 direction The engine thrust direction vector in world coordinates
function AtmosphericEngine.getWorldThrustAxis() end

---Returns the engine torque axis in world coordinates
---@return vec3 torque The torque axis vector in world coordinates
function AtmosphericEngine.getWorldTorqueAxis() end

---Checks if the engine is out of fuel
---@return boolean status True when there is no fuel left
function AtmosphericEngine.isOutOfFuel() end

---Returns the item ID of the fuel currently used by the engine
---@return number id The item ID of the fuel currently used
function AtmosphericEngine.getFuelId() end

---Returns the local ID of the fueltank linked to the engine
---@return number id The local ID of the fueltank
function AtmosphericEngine.getFuelTankId() end

---Checks if the engine linked to a functional fuel tank
---@return boolean status True when the linked tank is functional
function AtmosphericEngine.hasFunctionalFuelTank() end

---Returns then engine fuel consumption rate per newton of thrust delivered per second
---@return number rate The current rate of fuel consumption in m3/s
function AtmosphericEngine.getCurrentFuelRate() end

---Returns the ratio between the current fuel rate and the theoretical nominal fuel rate
---@return number rate Usually 1 but can be higher for certain engines at certain speeds
function AtmosphericEngine.getFuelRateEfficiency() end

---Returns the current fuel consumption rate
---@return number rate The rate of fuel consumption in m3/s
function AtmosphericEngine.getFuelConsumption() end

---Returns the T50: the time needed for the engine to reach 50% of its maximal thrust.
---@return number time The time to half thrust in seconds
function AtmosphericEngine.getWarmupTime() end

---Return the obstruction ratio of the engine exhaust by elements and voxels. 
---@return number ratio The obstruction ratio of the engine
function AtmosphericEngine.getObstructionFactor() end

---Returns the tags of the engine
---@return string tags Tags of the engine, in a CSV string
function AtmosphericEngine.getTags() end

---Set the tags of the engine
---@param tags string The CSV string of the tags
---@param ignore boolean True to ignore the default engine tags
function AtmosphericEngine.setTags(tags, ignore) end

---Checks if the engine is ignoring default tags
---@return boolean state True if the engine ignores default engine tags
function AtmosphericEngine.isIgnoringTags() end

