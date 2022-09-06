---@class Weapon : GenericElement
Weapon = GenericElement:new()

---Returns the item id of the currently equipped ammo
---@return number id The item id of the ammunition in the weapon
function Weapon.getAmmo() end

---Returns the current amount of remaining ammunition
---@return number count Returns the current amount of remaining ammunition
function Weapon.getAmmoCount() end

---Returns the maximum amount of ammunition the weapon can categoryScroll
---@return number amount The maximum amount of ammunition
function Weapon.getMaxAmmo() end

---Checks if the weapon is out of ammo
---@return boolean state True if the weapon is out of ammo
function Weapon.isOutOfAmmo() end

---Returns the weapon operational state
---@return number state Current state of the weapon (Incompatible size = -1 , Broken = 0, Operational = 1)
function Weapon.getOperationalState() end

---Returns the current weapon status
---@return number status The current status fo the weapon (Idle = 1, Firing =2, Reloading = 3, Unloading = 4)
function Weapon.getStatus() end

---Returns the local id of the container linked to the weapon
---@return number id The local id of the container
function Weapon.getContainerId() end

---Returns the current hit probability of the weapon for the current target
---@return number probability The hit probability of the weapon
function Weapon.getHitProbability() end

---Returns the base weapon damage
---@return number damage The base weapon damage in hitpoints
function Weapon.getBaseDamage() end

---Returns the optimal aim cone
---@return number cone The optimal aim cone in degree
function Weapon.getOptimalAimingCone() end

---Returns theh optimal distance to target
---@return number distance The optimal distance in meters
function Weapon.getOptimalDistance() end

---Returns the maximum distance to target
---@return number distance The optimal distance in meters
function Weapon.getMaxDistance() end

---Returns the optimal tracking rate
---@return number rate The optimal tracking rate in degrees per second
function Weapon.getOptimalTracking() end

---Returns the magazine volume
---@return number volume The magazine volume in liters
function Weapon.getMagazineVolume() end

---Returns the weapon cycle time
---@return number time The weapon cycle time in seconds
function Weapon.getCycleTime() end

---Returns the weapon reload time
---@return number time The weapon reload time in seconds
function Weapon.getReloadTime() end

---Returns the weapon unload time
---@return number time The weapon unload time in seconds
function Weapon.getUnloadTime() end

---Returns the id of the current target construct of the weapon
---@return number id The target construct id
function Weapon.getTargetId() end
