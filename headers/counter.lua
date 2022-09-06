---@class Counter : GenericElement
Counter = GenericElement:new()

---Returns the index of the current active output plug
---@return number index The index of the active plug
function Counter.getIndex() end

---Returns the maximum index of the counter
---@return number index The maximum index
function Counter.getMaxIndex() end

---Moves the next counter index
function Counter.nextIndex() end

---Sets the counter index
---@param index number The index of the plug to activate
function Counter.setIndex(index) end
