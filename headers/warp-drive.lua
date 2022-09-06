---@class WarpDrive : GenericElement
WarpDrive = GenericElement:new()

---Initiate the warp jump process
function WarpDrive.initiate() end

---Returns the current status of the warp WarpDrive
---@return number status The current status of the warp drive (NoWrapDrive = 1, Broken = 2, Warping = 3, ParentWarping = 4, NotAnchored = 5, WarpCooldown = 6, PvPCooldown = 7, MovingChild = 8, NoContainer = 9, PlanetTooClose = 10, DestinationNotSet = 11, DestinationTooClose = 12, DestinationTooFar = 13, NotEnoughWarpCells = 15, Ready = 15)
function WarpDrive.getStatus() end

---Returns the distance to the current wrap destination
---@return number distance The distance to the current warp destination
function WarpDrive.getDistance() end

---Returns the construct ID of the current warp destination
---@return number id The construct ID of the warp destination
function WarpDrive.getDestination() end

---Returns the name of the current warp destination construct
---@return string name The warp destination name
function WarpDrive.getDestinationName() end

---Returns the local id of the container linked to the warp drive
---@return number id The local id of the container
function WarpDrive.getContainerid() end

---Returns the quantity of warp cells available in the linked container
---@return number quantity The quantity of warp cells
function WarpDrive.getAvailableWarpCells() end

---Returns the quantity of warp cells required to warp to the warp destination set
---@return number quantity The quantity of warp cells
function WarpDrive.getRequiredWarpCells() end
