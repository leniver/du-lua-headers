---@class MiningUnit : GenericElement
MiningUnit = GenericElement:new()

---Returns the current state of the mining unit
---@return number state The state of the mining unit can be (Stopped = 1, Running = 2, Jammed output full = 3, Jammed no output container = 4)
function MiningUnit.getState() end

---Returns the remaining time of the current batch extraction process
---@return number time The remaining time in seconds
function MiningUnit.getRemainingTime() end

---Returns the item ID of the currently selected ore
---@return number id The item ID of the selected ore
function MiningUnit.getActiveOre() end

---Returns the list of available ore pools
---@return OrePool[] pools A list of tables composed with {[number]oreId, [number]available, [number]maximum}
function MiningUnit.getOrePools() end

---Returns the base production rate of the mining unit
---@return number rate The production rate in L/h
function MiningUnit.getBaseRate() end

---Returns the efficiency rate of the mining unit
---@return number efficiency The efficiency rate
function MiningUnit.getEfficiency() end

---Returns the calibration rate of the mining unit
---@return number rate The calibration rate of the mining unit
function MiningUnit.getCalibrationRate() end

---Returns the optimal calibration rate of the mining unit
---@return number rate The optimal calibration rate of the mining unit
function MiningUnit.getOptimalRate() end

---Returns the current production rate of the mining unit
---@return number rate The production rate in L/h
function MiningUnit.getProductionRate() end

---Returns the territory's adjacency bonus to the territory of the mining unit
---@return number bonus The territory's adjacency bonus
function MiningUnit.getAdjacencyBonus() end

---Returns the position of the last calibration excavation, in world coordinates.
---@return vec3 position The coordinates in world coordinates
function MiningUnit.getLastExtractionPosition() end

---Returns the ID of the last player who calibrated the mining unit.
---@return number id The ID of the player
function MiningUnit.getLastExtractingPlayerId() end

---Returns the time in seconds since the last calibration of the mining unit
---@return number second The time in seconds with milliseconds percision
function MiningUnit.getLastExtractionTime() end

---Returns the item ID of the ore extracted during the last calibration excavation
---@return number id The item ID of the extracted ore
function MiningUnit.getLastExtractedOre() end

---Returns the volum of ore extracted during the last calibration excavation
---@return number volume The volume of ore extracted in L
function MiningUnit.getlastExtractedVolume() end
