---@class Container : GenericElement
Container = GenericElement:new()

---Returns the mass ot the Container element (as if it were empty)
---@return number mass The mass of the container in kilograms
function Container.getSelfmass() end

---Returns the container content mass(the sum of the mass of all items it contains)
---@return number mass The total mass of the contents of the container, excluding the contain's own mass, in kilograms
function Container.getItemsMass() end

---Returns the container content volume(the sum of the volume of all items it contains)
---@return number volume The total volume of the contents of the container in liters
function Container.getItemsVolume() end

---Returns the maximum volume of the container
---@return number volumn The maximum volume of the container in liters
function Container.getMaxVolume() end

---Returns a table describing the contents of the container, as a pair itemId and quantity per slot
---@return ItemQuantity[] content The content of the container as a table with fields {[number]id,[number]quantity} per slot.
function Container.getContent() end

---Send a request to get an update of the content of the container, limited to one call allowed per 30 seconds.
---The onContentUpdate event is emitted by the container when the content is updated
---@return number time If the request is not yet possible, return the remaining time to wait for.
function Container.updateContent() end
