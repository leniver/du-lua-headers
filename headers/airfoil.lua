---@class Airfoil : GenericElement
Airfoil = GenericElement:new()

---Returns the current lift of the airfoil
---@return number lift The current lift of the airfoil
function Airfoil.getLift() end

---Gives the maximum lift that the airfoil can generate, under optimal conditions.
---@return number lift The maximum lift of the airfoil in newtons
function Airfoil.getMaxLift() end

---Returns the current drag of the airfoil
---@return number drag The current drag of the airfoil
function Airfoil.getDrag() end

---The ratio between lift and drag, depending of the aerodynamic profile of the airfoil
---@return number ratio The ratio between lift and drag
function Airfoil.getDragRatio() end

---Returns the minimal lift the airfoil can deliver at the moment (can be higher than zero).
---@return number lift The current minimal airfoil lift in newtons
function Airfoil.getCurrentMinLift() end

---Returns the maximal lift the airfoil can deliver at the moment.
---@return number lift The current maximal airfoil lift in newtons
function Airfoil.getCurrentMaxLift() end

---Returns the ratio between the current maximum lift and the optimal maximum lift
---@return number ratio Usually 1 but can be lower for certain airfoils
function Airfoil.getMaxLiftEfficiency() end

---Returns the airfoil lift direction in construct local coortinates
---@return vec3 lift The airfoil lift direction vector in construct local coordinates
function Airfoil.getLiftAxis() end

---Returns the airfoil torque axis in contruct local coordinates
---@return vec3 torque The torque axis vector in contruct local coordinates
function Airfoil.getTorqueAxis() end

---Returns the airfoil lift direction in construct world coortinates
---@return vec3 lift The airfoil lift direction vector in construct world coordinates
function Airfoil.getWorldLiftAxis() end

---Returns the airfoil torque axis in contruct world coordinates
---@return vec3 torque The torque axis vector in contruct world coordinates
function Airfoil.getWorldTorqueAxis() end

---Check if the airfoil is stalled
---@return boolean status True if the airfoil is stalled
function Airfoil.isStalled() end

---Returns the airfoil stall angle
---@return number angle The stall angle of the airfoil in degree
function Airfoil.getStallAngle() end

---Returns the minimum angle to produce the maximum lift of the airfoil
---Note that airfoil will produce lift at a lower angle but not optimally
---@return number angle The angle of the airfoil in degree
function Airfoil.getMinAngle() end

---Returns the maximum angle to produce the maximum lift of the airfoil
---Note that the airfoil will produce lift at a higher angle but not optimally
---@return number angle The angle of the airfoil in degree
function Airfoil.getMaxAngle() end

---Returns the obstruction ratio of the engine exhaust by elements and voxels.
---@return number ratio The obstruction ratio of the engine
function Airfoil.getObstructionFactor() end

---Returns the tags of the engine
---@return string tags Tags of the engine, in a CSV string
function Airfoil.getTags() end

---Set the tags of the engine
---@param tags string The CSV string of the tags
---@param ignore boolean True to ignore the default engine tags
function Airfoil.setTags(tags, ignore) end

---Checks if the engine is ignoring default tags
---@return boolean result True if the engine ignores default engine tags
function Airfoil.isIgnoringTags() end
