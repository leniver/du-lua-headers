---@class Radar : GenericElement
Radar = GenericElement:new()

---Returns radar operational state, 1 if radar not broken, works in the current environment and is not used by another control unit
---@return number state Operational state: 1 if radar is operational, 0 = broken, -1 = bad environment, -2 = obstructed, -3 = already in use
function Radar.getOperationalState() end

---Returns the scan range of the radar
---@return number range The scan range
function Radar.getRange() end

---Returns ranges to identify a target based on its core size
---@return number[] The list of number values for ranges in meters as {xsRange, sRange, mRange, lRange}
function Radar.getIdentifyRanges() end

---Returns the list of construct IDs in the scan range
---@return number[] The list of scanned construct IDs
function Radar.getConstructIds() end

---Returns the list of identified construct IDs
---@return number[] the list of the identified construct IDs
function Radar.getIdentifiedConstructIds() end

---Returns the ID of the target construct
---@return number id The ID of the target construct
function Radar.getTargetId() end

---Returns the distance to the given construct
---@param id number The ID of the construct
---@return number distance The distance between the current and target construct center
function Radar.getConstructDistance(id) end

---Returns True if the given construct is identified
---@param id number The ID of the construct
---@return boolean state True if the construct is identified
function Radar.isConstructIdentified(id) end

---Returns True if the given construct is abandoned
---@param id number The ID of the construct
---@return boolean state True if the contruct is abandoned
function Radar.isConstructAbandoned(id) end

---Returns the core size of the given construct
---@param id number The ID of the construct
---@return string size The core size name: can be "XS","S","M","L","XL"
function Radar.getConstructCoreSize(id) end

---Returns the threat rate your construct is for the given construct
---@param id number The ID of the construct
---@return number threat The threat rate index (None = 1, Identified = 2, Threatened and Identified = 3, Threatened = 4, Attacked = 5)
function Radar.getThreatRateTo(id) end

---Returns the threat rate the given construct is for your construct
---@param id number The ID of the construct
---@return number threat The threat rate index (None = 1, Identified = 2, Threatened and Identified = 3, Threatened = 4, Attacked = 5)
function Radar.getThreatRateFrom(id) end

---Returns whether the target has an active transponder with matching tags
---@param id number The ID of the construct
---@return boolean state True if our construct and the target have active transponders with matching tags
function Radar.hasMatchingTransponder(id) end

---Returns a table with id of the owner entity (player or organization) of the given construct, if in range and if active transponder tags match for owned dynamic constructs
---@param id number The ID of the construct
---@return OwnerEntity owner A table with fields {[number] id, [boolean] isOrganization} describing the owner.
function Radar.getConstructOwnerEntity(id) end

---Return the size of the bounding box of the given construct, if in range
---@param id number The ID of the construct
---@return vec3 size The size of the construct in xyz-coordinates
function Radar.getConstructSize(id) end

---Return the kind of the given construct
---@param id number The ID of the construct
---@return number kind The kind index of the construct (Universe = 1, Planet = 2, Asteroid = 3, Static = 4, Dynamic = 5, Space = 6, Alien = 7)
function Radar.getConstructKind(id) end

---Returns the position of the given construct in construct local coordinates, if active transponder tags match for owned dynamic constructs
---@param id number The ID of the construct
---@return vec3 position The xyz local coordinates relative to the construct center
function Radar.getConstructPos(id) end

---Returns the position of the given construct in world coordinates, if active transponder tags match for owned dynamic constructs
---@param id number The ID of the construct
---@return vec3 position The xyz world coordinates of the construct center
function Radar.getConstructWorldPos(id) end

---Returns the velocity vector of the given construct in construct local coordinates, if identified and if active transponder tags match for owned dynamic constructs
---@param id number The ID of the construct
---@return vec3 velocity The xyz local coordinates of the construct velocity
function Radar.getConstructVelocity(id) end

---Returns the velocity vector of the given construct in world coordinates, if identified and if active transponder tags match for owned dynamic constructs
---@param id number The ID of the construct
---@return vec3 velocity The xyz world coordinates of the construct velocity
function Radar.getConstructWorldVelocity(id) end

---Returns the mass of the given construct, if identified for owned dynamic constructs
---@param id number The ID of the construct
---@return number mass The mass of the construct in kilograms
function Radar.getConstructMass(id) end

---Returns the name of the given construct, if defined
---@param id number The ID of the construct
---@return string name The name of the construct
function Radar.getConstructName(id) end

---Returns a table of working elements on the given construction, if identified for owned dynamic constructs
---@param id number The ID of the construct
---@return ConstructInfo info A table with fields: {[number]weapons, [number]radars, [number]antiGravity, [number]atmoEngines, [number]spaceEngines, [number]rocketEngines} with values between 0.0 and 1.0. Exceptionally antiGravity and rocketEngines are always 1.0 if present, even if broken
function Radar.getConstructInfos(id) end

---Returns the speed of the given construct, if identified for owned dynamic constructs
---@param id number The ID of the construct
---@return number speed The speed of the construct relative to the universe in meters per seconds
function Radar.getConstructSpeed(id) end

---Returns the angular speed of the given construct to your construct, if identified for owned dynamic constructs
---@param id number The ID of the construct
---@return number speed The angular speed of the construct relative to our construct in radians per seconds
function Radar.getConstructAngularSpeed(id) end

---Returns the raidal speed of the given construct to your construct, if identified for owned dynamic constructs
---@param id number The ID of the construct
---@return number speed The radial speed of the construct relative to our construct in meters per seconds
function Radar.getConstructRadialSpeed(id) end
