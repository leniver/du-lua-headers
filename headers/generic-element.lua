---@class GenericElement
GenericElement = {}
GenericElement.__index = GenericElement

---GenericElement constructor
---@return GenericElement
function GenericElement:new() end

---Show the element widget in the in-game widget stack
function GenericElement.showWidget() end

---Hide the element widget in the in-game widget stack
function GenericElement.hideWidget() end

---Returns the widget type compatible with the element data
---@return string type Widget type. "" if invalid
function GenericElement.getWidgetType() end

---Returns the element data as JSON
---@return string data Data as JSON
function GenericElement.getWidgetData() end

---Return the element data ID
---@return string id Data ID. "" if invalid
function GenericElement.getWidgetDataId() end

---Returns the element name
---@return string name The element name
function GenericElement.getName() end

---Returns the class of the element
---@return string class The class name of the element
function GenericElement.getClass() end

---Returns the mass of the element  (includes the included items' mass when the Element is a Container)
---@return number mass The mass of the element
function GenericElement.getMass() end

---Returns the element item ID (to be used with system.getItem() function to get information about the element)
---@return number id The element ID
function GenericElement.getItemId() end

---Returns the unique local ID of the element
---@return number id The element local ID
function GenericElement.getLocalId() end

---Returns the element integrity between 0 and 100
---@return number integrity 0 = Element fully destroyed, 100 = Element fully functionnal
function GenericElement.getIntegrity() end

---Returns the element's current hi points
---@return number hitpoints The hit points, where 0 = Element fully destroyed
function GenericElement.getHitPoints() end

---Return the element's maximal hit points
---@return number hitpoints The max hit points of the element
function GenericElement.getMaxHitPoints() end

---Returns the element's remaining number of restorations
---@return number restorations The number of restorations before the element is ultimately destroyed
function GenericElement.getRemainingRestorations() end

---Returns the element's maximal number of restorations
---@return number restorations The max number of restorations of the element
function GenericElement.getMaxRestorations() end

---Returns the position of the element in construct local coordinates
---@return vec3 position The position of the element in the construct local coordinates
function GenericElement.getPosition() end

---Returns the bounding box dimensions of the element
---@return vec3 size The dimensions of the element bounding box
function GenericElement.getBoundingBoxSize() end

---Returns the position of the center of bounding box of the element in local construct coordinates
---@return vec3 center The position of the center of bounding box
function GenericElement.getBoundingBoxCenter() end

---Returns the up direction vector of the element in construct local coordinates
---@return vec3 up Up direction vector of the element in construct local coordinates
function GenericElement.getUp() end

---Returns the right direction vector of the element in construct local coordinates
---@return vec3 right Right direction vector of the element in construct local coordinates
function GenericElement.getRight() end

---Returns the forward direction vector of the element in construct local coordinates
---@return vec3 forward Forward direction vecetor of the element in construct local coordinates
function GenericElement.getForward() end

---Returns the up direction vecor of the element in world coordinates
---@return vec3 up Up direction vector of the element in world coordinates
function GenericElement.getWorldUp() end

---Returns the right direction vector of the element in world coordinates
---@return vec3 right Right direction vector of the element in world coordinates
function GenericElement.getWorldRight() end

---Returns the forward direction vector of the element in world coordinates
---@return vec3 forward Forward direction vector of the element in world coordinates
function GenericElement.getWorldForward() end

---Set the value of a signal in specified IN plug of Element
---@param plug string The plug name, in the form of IN-SIGNAL-index
---@param state number The plug signal state
function GenericElement.setSignalIn(plug, state) end

---Returns the value of a signal in the specified IN plug of the element.
---@param plug string The plug name, in form of IN-SIGNAL-index
---@return number signal The plug signal state
function GenericElement.getSignalIn(plug) end

---Returns the value fo the signal in the specified OUT plug of the element
---@param plug string The plug name, in forma of OUT-SIGNAL-index
---@return number signal The plug signal state
function GenericElement.getSignalOut(plug) end
