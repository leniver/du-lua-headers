---@class Fireworks : GenericElement
Fireworks = GenericElement:new()


---Fire the firework
function Fireworks.fire() end

---Set the delay before the launched Fireworks explodes
---@param delay number The delay before explosion in seconds (maximum 5s)
function Fireworks.setExplosionDelay(delay) end

---Returns the delay before the launched Fireworks explodes
---@return number delay The delay before explosition in seconds
function Fireworks.getExplositionDelay() end

---Set the speed at which the firework will be launched (impacts its altitude, depending on the local gravity)
---@param speed number The launch speed in m/s (maximum 200m/s)
function Fireworks.setLaunchSpeed(speed) end

---Returns the speed at which the firework will be launched
---@return number speed The launch speed in m/s
function Fireworks.getLaunchSpeed() end

---Set the type of launched firework (will affect which firework is picked in the attached Container)
---@param type number The type index of the firework (Ball = 1, Ring = 2, Palmtree = 3, Shower = 4)
function Fireworks.setType(type) end

---Returns the type the launched firework
---@return number type The type index of the firework (Ball = 1, Ring = 2, Palmtree = 3, Shower = 4)
function Fireworks.getType() end

---Set the color of the launched firework (will affect which firework is picked in the attached Container)
---@param color number The color index of the firework (Blue = 1, Gold = 2, Green = 3, Purple = 4, Red = 5, Silver = 6)
function Fireworks.setColor(color) end

---Returns the color of the launched firework
---@return number color The color index of the firework (Blue = 1, Gold = 2, Green = 3, Purple = 4, Red = 5, Silver = 6)
function Fireworks.getColor() end