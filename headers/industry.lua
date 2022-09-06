---@class Industry : GenericElement
Industry = GenericElement:new()

---Start the production, and it will run unless it is stopped or the input resources run out
function Industry.startRun() end

---Start maintaining the specified quantity.
---@param quantity number Quantity to maintain inside output containers
function Industry.startMaintain(quantity) end

---Start the production of numBatches and then stop
---@param numBatches number Number of batches to run before unit stops
function Industry.startFor(numBatches) end

---Stop the production of the industry unit
---@param force boolean (optional by default false) True if you want to force the production to stop immediately
---@param allowLoss boolean (optional by default false) True if you want to allow the industry unit to lose components when recovering in use components
function Industry.stop(force, allowLoss) end

---Return the current running state of the industry
---@return number state The current running state of the industry can be (Stopped = 1, Running = 2, Jammed missing ingredient = 3, Jammed output full = 4, Jammed no output container = 5, Pending = 6, Jammed missing schematics = 7)
function Industry.getState() end

---Returns the complete information of the industry
---@return IndustryInfo info The complete state of the industry, a table with fields {[number] state, [boolean] stopRequested, [number] schematicsRemaining, [number] unitsProduced, [number] remainingTime, [number] batchesRequested, [number] batchesRemaining, [number] maintainProductAmount, [number]currentProductAmount, [table]currentProducts:{{[number] id, [number] quantity}}}
function Industry.getInfo() end

---Get the count of completed cycles since the player started the unit
---@return number cycles The count of completed cycles since startup
function Industry.getCyclesCompleted() end

---Returns the efficiency of the industry
---@return number efficiency The efficiency rate between 0 and 1
function Industry.getEfficiency() end

---Returns the time elapsed in seconds since the player started the unit for the latest time
---@return number time The time elapsed in seconds
function Industry.getUptime() end

---Set the item to produce from its id
---@param itemId number The item id of the item to produce
---@return number result The result of the operation 0 for a success, -1 if the industry is running
function Industry.setOutput(itemId) end

---Returns the list of id of the items currently produced
---@return ItemQuantity[] outputs The list entry in the table is always the main product produced
function Industry.getOutputs() end

---Returns the list of items required to run the selected output product
---@return ItemQuantity[] inputs Returns the list of products
function Industry.getInputs() end

---Send a request to get an update of the content of the schematic bank, limited to one call allowed per 30 seconds
---@return number time If the request is not yet possible, returns the remaining time to wait for
function Industry.updateBank() end

---Returns a table describing the contens of the schematic bank, as a pair itemId and quantity per slot
---@return ItemQuantity[] bank The content of the schematic bank as a table with fields {[number] id, [number] quantity} per slot
function Industry.getBank() end
