---@class ShieldGenerator : GenericElement
ShieldGenerator = GenericElement:new()

---Activate the shield
function ShieldGenerator.activate() end

---Deactivate the shield
function ShieldGenerator.deactivate() end

---Toggle the state of the shield
function ShieldGenerator.toggle() end

---Returns the activation state of the shield
---@return boolean state True if the shield is active
function ShieldGenerator.isActive() end

---Returns the current hit points of the shield
---@return number hitpoints The current hit points of the shield
function ShieldGenerator.getShieldHitpoints() end

---Returns the maximal hit points of the shield
---@return number hitpoints The maximal hit points of the shield
function ShieldGenerator.getMaxShieldHitpoints() end

---Activate shield venting to restore hit points
---@return boolean result True if venting started
function ShieldGenerator.startVenting() end

---Stop shield venting
---@return boolean result True if venting stopped
function ShieldGenerator.stopVenting() end

---Check whether venting is in progress
---@return boolean state TRue if venting is ongoing
function ShieldGenerator.isVenting() end

---Returns time after which venting is possible again
---@return number cooldown Remaining seconds of the venting cooldown
function ShieldGenerator.getVentingCooldown() end

---Returns maximal cooldown between venting
---@return number cooldown Maximal seconds of the venting cooldown
function ShieldGenerator.getVentingMaxCooldown() end

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
