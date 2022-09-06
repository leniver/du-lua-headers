---@class Door : GenericElement
Door = GenericElement:new()

---Open the door
function Door.open() end

---Close the door
function Door.close() end

---Returns the opening status of the door
---@return boolean result True if the door is open
function Door.isOpen() end

---Toggle the door
function Door.toggle() end