---@class Light : GenericElement
Light = GenericElement:new()

---Switches the light on
function Light.activate() end

---Switches the light off
function Light.deactivate() end

---Checks if the light is on
---@return boolean state True if the light is on
function Light.isActive() end

---Toggle the state of the light
function Light.toggle() end

---Set the color of the light to RGB.
---Lights can use HDR color values above 1.0 to glow
---@param r number The red component, between 0.0 and 1.0, up to 5.0 for HDR colors.
---@param g number The green component, between 0.0 and 1.0, up to 5.0 for HDR colors.
---@param b number The blue component, between 0.0 and 1.0, up to 5.0 for HDR colors.
function Light.setColor(r, g, b) end

---Returns the light color in RGB
---@return vec3 color A vec3 for the red, blue and green components of the light, with values between 0.0 and 1.0 up to 5.0.
function Light.getColor() end

---Returns the blinking state of the light
---@param state boolean True to enable light blinking
function Light.setBlinkingState(state) end

---Checks if the light blinking is enabled
---@return boolean state True if the light blinking is enabled
function Light.isBlinking() end

---Returns the light 'on' blinking duration
---@return number duration The duration of the 'on' blinking in seconds
function Light.getOnBlinkingDuration() end

---Set the light 'on' blinking duration
---@param time number The duration of the 'on' blinking in seconds
function Light.setOnBlinkingDuration(time) end

---Returns the light 'off' blinking duration
---@return number duration The duration of the 'off' blinking
function Light.getOffBlinkingDuration() end

---Set the light 'off' blinking duration
---@param time number The duration of the 'off' blinking in seconds
function Light.setOffBlinkingDuration(time) end

---Returns the light blinking time shift
---@return number time The time shift of the blinking in seconds
function Light.getBlinkingTimeShift() end

---Set the light blinking time shift
---@param shift number The time shift of the blinking in seconds
function Light.setBlinkingTimeShift(shift) end