---@class Player
Player = {}
Player.__index = Player

---Returns the player name
---@return string name The player name
function Player.getName() end

---Returns the ID of the player
---@return number id The ID of the player
function Player.getId() end

---Returns the player mass
---@return number mass The mass of the player in kilograms
function Player.getMass() end

---Returns the player's nanopack content mass
---@return number mass The player's nanopack content mass in kilograms
function Player.getNanopackMass() end

---Returns the player's nanopack content volume
---@return number volume The player's nanopack content volume in liters
function Player.getNanopackVolume() end

---Returns the player's nanopack maximum volume
---@return number volume The player's nanopack maximum volume in liters
function Player.getNanopackMaxVolume() end

---Returns the list of organization IDs of the player
---@return number[] ids The list of organization IDs
function Player.getOrgIds() end

---Returns the position of the player in construct local coordinates
---@return vec3 position The position in construct local coordinates
function Player.getPosition() end

--Returns the position of the player in construct world coordinates
---@return vec3 position The position in world coordinates
function Player.getWorldPosition() end

---Returns the position of the head of the player's character, in construct local coordinates
---@return vec3 position The position of the head in construct local coordinates
function Player.getHeadPosition() end

---Returns the position of the head of the player's character, in world coordinates
---@return vec3 position The position of the head in world coordinates
function Player.getWorldHeadPosition() end

---Returns the velocity vector of the player, in construct local coordinates
---@return vec3 velocity The velocity vector in construct local coordinates
function Player.getVelocity() end

---Returns the velocity vector of the player, in world coordinates
---@return vec3 velocity The velocity vector in world coordinates
function Player.getWorldVelocity() end

---Returns the absolute velocity vector of the player, in world coordinates
---@return vec3 velocity The velocity absolute vector in world coordinates
function Player.getAbsoluteVelocity() end

---Returns the forward vector of the player coordinates system
---@return vec3 vector The forward vector of the player coordinates system. It's a static value equal to (0,1,0)
function Player.getForward() end

---Returns the right vector of the player coordinates system
---@return vec3 vector The right vector of the player coordinates system. It's a static value equal to (1,0,0)
function Player.getRight() end

---Returns the up vector of the player coordinates system
---@return vec3 vector The up vector of the player coordinates system. It's a static value equal to (0,0,1)
function Player.getUp() end

---Returns the forward direction vector of the player, in world coordinates
---@return vec3 vector The forward direction vector of the player, in world coordinates
function Player.getWorldForward() end

---Returns the right direction vector of the player, in world coordinates
---@return vec3 vector The right direction vector of the player, in world coordinates
function Player.getWorldRight() end

---Returns the up direction vector of the player, in world coordinates
---@return vec3 vector The up direction vector of the player, in world coordinates
function Player.getWorldUp() end

---Returns the ID of the planet the player is located on
---@return number id The ID of the planet, 0 if none
function Player.getPlanet() end

---Returns the ID of the construct to which the player is parented
---@return number id The ID of the construct, 0 if none
function Player.getParent() end

---Checks if the player is seated
---@return boolean result True if the player is seated
function Player.isSeated() end

---Returns the local ID of the seat on which the player is sitting
---@return number id The local ID of the seat, or 0 if player is not seated
function Player.getSeatId() end

---Checks if the player is parented to the given construct
---@param id number The construct ID
---@return boolean result True if the player is parented to the given construct
function Player.isParentedTo(id) end

---Checks if the player is currently sprinting
---@return boolean result True if the player is sprinting
function Player.isSprinting() end

---Checks if the player's jetpack is organization
---@return boolean result True if the player's jetpack is on
function Player.isJetpackOn() end

---Returns the state of the headlight of the player
---@return boolean state True if the player has his headlight on
function Player.isHeadlightOn() end

---Set the state of the headlight of the player
---@param state boolean True to turn on headlight
function Player.setHeadlightOn(state) end

---Freeze the player movements, liberating the associated movement keys to be used by the script.
---Note that this function is disabled if the player is not running the script explicitly (pressing F on the Control Unit, vs via a plug signal)
---@param state boolean True will freeze the character, False will unfreeze the character
function Player.freeze(state) end

---Checks if the player movements are frozen
---@return boolean state True if the player is frozen
function Player.isFrozen() end

---Checks if the player has DRM autorization to the control unit
---@return boolean result True if the player has DRM authorization on the control unit
function Player.hasDRMAutorization() end
