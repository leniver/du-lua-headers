---@class PlasmaExtractor : GenericElement
PlasmaExtractor = GenericElement:new()

---Returns the current status of the plasma extractor
---@return number state The status of the plasma extractor can be
function PlasmaExtractor.getState() end

---Returns the remaining time of the current batch extraction process
---@return number time The remaining time in seconds
function PlasmaExtractor.getRemainingTime() end

---Returns the list of available plasma pools
---@return PlasmaOrePool[] A list of tables composed with {[number] oreId, [number] quantity}
function PlasmaExtractor.getPlasmaPools() end
