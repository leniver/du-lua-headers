---@class Telemeter : GenericElement
Telemeter = GenericElement:new()

---Emits a raycast from the telemeter, returns a raycastHit object
---@return RaycastHit hit A table with fields: {[boolean]hit, [number]distance, [vec3] point}
function Telemeter.raycast() end

---Returns telemeter raycast origin in local construct coordinates
---@return vec3 origin The telemeter raycast origin
function Telemeter.getRayOrigin() end

---Returns telemeter raycast origin in world coordinates
---@return vec3 origin The telemeter raycast origin
function Telemeter.getRayWorldOrigin() end

---Returns telemeter raycast axis in local construct coordinates
---@return vec3 axis The telemeter raycast axis
function Telemeter.getRayAxis() end

---Returns telemter raycast axis in world coordinates
---@return vec3 axis The telementer raycast axis
function Telemeter.getRayWorldAxis() end

---Returns the max distance from which an obstacle can be detected (default is 100m)
---@return number distance The max distance to detectable obstacles in meters
function Telemeter.getMaxDistance() end
