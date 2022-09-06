---@class Gyro : GenericElement
Gyro = GenericElement:new()

---Selects the gyro as the main gyro used for ship orientation
function Gyro.activate() end

---Deselects this gyro as the main gyro used for ship orientation, using the Core Unit instead
function Gyro.deactivate() end

---Toggle the activation state of the gyro
function Gyro.toggle() end

---Returns the activation state of the gyro
---@return boolean state True when the gyro is the active ship orientation unit
function Gyro.isActive() end

---The pitch value relative to the gyro orientation and the local gravity
---@return number pitch The pitch angle in degrees, relative to the gyro orientation and the local gravity
function Gyro.getPitch() end

---The roll value relative to the gyro orientation and the local gravity
---@return number roll The roll angle in degrees, relative to the gyro orientation and the local gravity
function Gyro.getRoll() end
