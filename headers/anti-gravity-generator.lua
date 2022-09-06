---@class AntiGravityGenerator : GenericElement
AntiGravityGenerator = GenericElement:new()

---Activate the anti-gravity generator
function AntiGravityGenerator.activate() end

---Deactivate the anti-grativity generator
function AntiGravityGenerator.deactivate() end

---Returns the state of activation of the anti-gravity generator
---@return boolean state True when the anti-gravity is started
function AntiGravityGenerator.isActive() end

---Toggle the anti-gravity generator
function AntiGravityGenerator.toggle() end

---Returns the strength of the anti-gravitational field
---@return number strength The power of the anti-gravitational field in Es
function AntiGravityGenerator.getFieldStrength() end

---Returns the current rate of compensation of the gravitational field
---@return number rate The current rate in percentage
function AntiGravityGenerator.getCompensationRate() end

---Returns the current power of the gravitational field
---@return number power The current power in percentage
function AntiGravityGenerator.getFieldPower() end

---Returns the number of pulsors linked to the anti-gravity generator
---@return number count The number of pulsors linked
function AntiGravityGenerator.getPulsorCount() end

---Set the target altitude for the anti-gravity field
---Cannot be called from 'onFlush'
---@param altitude number The target altitude in meters. It will be reached with a slow acceleration
function AntiGravityGenerator.setTargetAltitude(altitude) end

---Returns the target altitude defined for the anti-gravitational field
---@return number altitude The target altitude in meters
function AntiGravityGenerator.getTargetAltitude() end

---Returns the current base altitude of the anti-gravitational field
---@return number altitude The current base altitude in meters
function AntiGravityGenerator.getBaseAltitude() end