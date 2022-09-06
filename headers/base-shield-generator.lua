---@class BaseShieldGenerator : GenericElement
BaseShieldGenerator = GenericElement:new()

---Activate the shield
function BaseShieldGenerator.activate() end

---Deactivate the shield
function BaseShieldGenerator.deactivate() end

---Toggle the state of the shield
function BaseShieldGenerator.toggle() end

---Returns the activation state of the shield
---@return boolean state True if the shield is active
function BaseShieldGenerator.getState() end

---Returns the current hit points of the shield
---@return number hitpoints The current hit points of the shield
function BaseShieldGenerator.getShieldHitpoints() end

---Returns the maximal hit points of the shield
---@return number hitpoints The maximal hit points of the shield
function BaseShieldGenerator.getMaxShieldHitpoints() end

---Returns distribution of resistance pool over resistance types
---@return Resistances resistances Resistances to damage type {antimatter, electromagnetic, kinetic, thermic}
function BaseShieldGenerator.getResistances() end

---Distribute the resistance pool according to damage type
---@param antimatter number Antimatter damage resistance
---@param electromagnetic number Electromagnetic damage resistance
---@param kinetic number Kinetic damage resistance
---@param thermic number Thermic damage resistance
---@return boolean result True if the resistance we distributed
function BaseShieldGenerator.setResistances(antimatter, electromagnetic, kinetic, thermic) end

---Retuns time after which adjusting resistances is possible again
---@return number cooldown Remaining seconds of the resistance cooldown
function BaseShieldGenerator.getResistancesCooldown() end

---Returns maximal cooldown between adjusting resistances
---@return number cooldown Maximal seconds of the resistance cooldown
function BaseShieldGenerator.getResistancesMaxCooldown() end

---Returns total resistasnce pool tant may be distributed
---@return number pool Total pool of resistances
function BaseShieldGenerator.getResistancesPool() end

---Returns the remaining amount of the resistance pool that can be distributed
---@return number pool Remaining resistance pool
function BaseShieldGenerator.getResistancesRemaining() end

---Returns ratio per damage type of recent weapon impacts after applying resistance
---@return Resistances stress Stress ratio due to damage type {antimatter, electromagnetic, kinetic, thermic}
function BaseShieldGenerator.getStressRatio() end

---Return ratio per damage type of recent weapon impacts without resistance
---@return Resistances stress Stress ratio due to damage type {antimatter, electromagnetic, kinetic, thermic}
function BaseShieldGenerator.getStressRatioRaw() end

---Returns stress, that is the total hit points of recent weapon impacts after applying resistance
---@return number hitpoints Total stress hit points due to recent weapon impacts
function BaseShieldGenerator.getStressHitpoints() end

---Returns stress, that is the total hit points of recent weapon impacts without resistance
---@return number hitpoints Total stress hit points due to recent weapon impacts
function BaseShieldGenerator.getStressHitpointsRaw() end

---Returns whether the base shield is currently in lockdown
---@return boolean result Whether the base shield is in lockdown
function BaseShieldGenerator.isLockdown() end

---Returns the remaining time of the base shield lockdown
---@return boolean time Remaining lockdown time in seconds
function BaseShieldGenerator.getLockdownRemaining() end

---Returns the hour since midnight of the preferred lockdown exit
---@return number time Preferred lockdown exit hour UTC (0-23)
function BaseShieldGenerator.getLockdownExitTime() end

---Set hour since midnight for the preferred lockdown exit
---@param hour number Preferred lockdown exit hour UTC (0-23)
---@return boolean result True if lockdown exit was set
function BaseShieldGenerator.setLockdownExitTime(hour) end