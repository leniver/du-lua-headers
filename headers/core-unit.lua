---@class CoreUnit : GenericElement
CoreUnit = GenericElement:new()

---Returns the list of all the local IDs of the Elements of this construct
---@return number[] ids The list of elements local IDs
function CoreUnit.getElementIdList() end

---Returns the name of the element, identified by its local ID
---@param localId number The local ID of the element
---@return string name The name of the element
function CoreUnit.getElementNameById(localId) end

---Returns the class of the element, identified by its local ID
---@param localId number The local ID of the element
---@return string class The class of the element
function CoreUnit.getElementClassById(localId) end

---Returns the display name of the element, identified by its local ID
---@param localId number The local ID of the element
---@return string class The display name of the element
function CoreUnit.getElementDisplayNameById(localId) end

---Returns the item ID of the element, identified by its local ID
---@param localId number The local ID of the element
---@return number id The item ID of the element
function CoreUnit.getElementItemIdById(localId) end

---Returns the current level of hit points of the element, identified by its local ID
---@param localId number The local ID of the element
---@return number hitpoints Current level of hit points of the element
function CoreUnit.getElementHitPointsById(localId) end

---Returns the maximum level of hit points of the element, identified by its local ID
---@param localId number The local ID of the element
---@return number hitpoints The max level of hit points of the element
function CoreUnit.getElementMaxHitPointsById(localId) end

---Returns the mass of the element, identified by its local ID
---@param localId number The local ID of the element
---@return number mass The mass of the element in kilograms
function CoreUnit.getElementMassById(localId) end

---Returns the position of the element, identified by its local ID, in construct local coordinates
---@param localId number The local ID of the element
---@return vec3 position The position of the element in construct local coordinates
function CoreUnit.getElementPositionById(localId) end

---Returns the up direction vector of the element, identified by its local ID, in construct local coordinates
---@param localId number The local ID of the element
---@return vec3 position The up direction vector of the element identified by its local ID, in construct local coordinates
function CoreUnit.getElementUpById(localId) end

---Returns the right direction vector of the element, identified by its local ID, in construct local coordinates
---@param localId number The local ID of the element
---@return vec3 position The right direction vector of the element identified by its local ID, in construct local coordinates
function CoreUnit.getElementRightById(localId) end

---Returns the forward direction vector of the element, identified by its local ID, in construct local coordinates
---@param localId number The local ID of the element
---@return vec3 position The forward direction vector of the element identified by its local ID, in construct local coordinates
function CoreUnit.getElementForwardById(localId) end

---Returns the information of the industry unit element, identified by its local ID
---@param localId number The local ID of the element
---@return IndustryInfo info If the element is an industry unit a table with fields 
function CoreUnit.getElementIndustryInfoById(localId) end

---Returns the list of tags associated to the element, identified by its local ID
---@param localId number The local ID of the element
---@return string tags The tags as a JSON list
function CoreUnit.getElementTagsById(localId) end

---Returns the altitude above sea level, with respect to the closest planet (0 in space)
---@return number altitude The sea level altitude in meters
function CoreUnit.getAltitude() end

---Returns the local gravity intensity
---@return number gravity The gravitation acceleration where the construct is located in m/s2
function CoreUnit.getGravityIntensity() end

---Returns the local gravity vector in world coordinates
---@return vec3 gravity The local gravity field vector in world coordinates in m/s2
function CoreUnit.getWorldGravity() end

---Returns the vertical unit vector along gravity, in world coordinates (0 in space)
---@return vec3 vertical The local vertical vector in world coordinates in meters
function CoreUnit.getWorldVertical() end

---Returns the id of the current close stellar body
---@return number id The id of the current close stellar body
function CoreUnit.getCurrentPlanetId() end

---Returns the core's current stress, destroyed when reaching max stress
---@return number stress The stress the core absorbed
function CoreUnit.getCoreStress() end

---Return the maximal stress the core can bear before it gets destroyed
---@return number stress The maximal stress before destruction
function CoreUnit.getMaxCoreStress() end

---Returns the core's current stress to max stress ratio
---@return number ratio The stress ratio, between 0 for no stress and 1 for destruction
function CoreUnit.getCoreStressRatio() end

---Spawns a number sticker in the 3D world, with coordinates relative to the construct
---@param nb number The number to display 0 to 9
---@param x number The x-coordinate in the construct in meters. 0 = center
---@param y number The y-coordinate in the construct in meters. 0 = center
---@param z number The z-coordinate in the construct in meters. 0 = center
---@param orientation string Orientation of the number. Possible values are "front", "side"
---@return number index An index that can be used later to delete or move the item, -1 if error or maxnumber reached
function CoreUnit.spawnNumberSticker(nb, x, y, z, orientation) end

---Spawns an arrow sticker in the 3D world, with coordinates relative to the construct
---@param x number The x-coordinate in the construct in meters. 0 = center
---@param y number The y-coordinate in the construct in meters. 0 = center
---@param z number The z-coordinate in the construct in meters. 0 = center
---@param orientation string Orientation of the number. Possible values are "up", "down", "north", "south", "east", "west"
---@return number index An index that can be used later to delete or move the item, -1 if error or maxnumber reached
function CoreUnit.spawnArrowSticker(x, y, z, orientation) end

---Delete the referenced sticker
---@param index number Index of the sticker to delete
---@return boolean result True in case of success
function CoreUnit.deleteSticker(index) end

---Move the referenced sticker
---@param index number Index of the sticker to move
---@param x number The x-coordinate in the construct in meters. 0 = center
---@param y number The y-coordinate in the construct in meters. 0 = center
---@param z number The z-coordinate in the construct in meters. 0 = center
---@return boolean result True in case of success
function CoreUnit.moveSticker(index, x, y, z) end

---Rotate the referenced sticker
---@param index number Index of the sticker to move
---@param angle_x number Rotation along the x-axis in degrees
---@param angle_y number Rotation along the y-axis in degrees
---@param angle_z number Rotation along the z-axis in degrees
---@return boolean result True in case of success
function CoreUnit.rotateSticker(index, angle_x, angle_y, angle_z) end