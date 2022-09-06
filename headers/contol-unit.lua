---@class ControlUnit : GenericElement
ControlUnit = GenericElement:new()

---Stops the control unit's Lua code and exits.
function ControlUnit.exit() end

---Set up a timer with a given tag in a given period
---This will start to trigger the "onTimer" event with the corresponding tag as an argument, to help you identify what is ticking, and when.
---@param tag string The tag of the timer, as a string, which will be used in the "onTimer" event to identify this particular timer
---@param period number The period of the timer, in seconds. The time resolution is limited by the framerate here, so you cannot set arbitrarily fast timers.
function ControlUnit.setTimer(tag, period) end

---Stop the timer with the given time
---@param tag string The tag of the timer to stop, as a string.
function ControlUnit.stopTimer(tag) end

---Return the ambient atmospheric density
---@return number density The atmospheric density (between 0 and 1)
function ControlUnit.getAtmosphereDensity() end

---Returns the influence rate of the nearest planet
---@return number rate The planet influence rate(between 0 and 1)
function ControlUnit.getClosestPlanetInfluence() end


---Checks if the control unit is protected by DRM
---@return boolean result True if the control unit is protected by DRM
function ControlUnit.hasDRM() end

---Check if the construct is remote controlled
---@return boolean result True if the construct is remote controlled
function ControlUnit.isRemoteConstrolled() end

---Automatically assign the engies within the taglist to result in the given acceleration and angular acceleration provided.
---Can only be called within the 'system.onFlush' event.
---If engines designated by the tags are not capable of producing the desired command, setEngineCommand will try to do its best to approximate it.
---@param taglist string Comma(for union) or space(for intersection) separated list of tags.
---@param acceleration vec3 The desired acceleration expressed in world coordinates in m/s2
---@param angularAcceleration vec3 The desired angular acceleration expressed in world coordinates in rad/s2
---@param keepForceCollinearity boolean Forces the resulting acceleration vector to be collinear to the acceleration parameter
---@param keepTorqueCollinearity boolean Forces the resulting angular acceleration to be collinear to the angular acceleration parameter
---@param priority1SubTags string Comma(for union) or space(for intersection) separated list of tags of included engines to use as priority 1
---@param priority2SubTags string Comma(for union) or space(for intersection) separated list of tags of included engines to use as priority 1
---@param priority3SubTags string Comma(for union) or space(for intersection) separated list of tags of included engines to use as priority 1
---@param toleranceRatioToSkipOtherPriorities number When going through with priority, if we reach a command that is achieved within this tolerance, we will stop there
function ControlUnit.setEngineCommand(taglist, acceleration, angularAcceleration, keepForceCollinearity, keepTorqueCollinearity, priority1SubTags, priority2SubTags, priority3SubTags, toleranceRatioToSkipOtherPriorities) end

---Sets the thrust values for all engines in the tag list. 
---This function must be used on a piloting controller
---@param taglist string Comma(for union) or space(for intersection) separated list of tags.
---@param thrust number The desired thrust in newtons(note that for boosters, any non zero value here will set them to 100%)
function ControlUnit.setEngineThrust(taglist, thrust) end

---Returns the total thrust values of all engines in the tag list.
---This function must be used on a piloting controller
---@param taglist string string Comma(for union) or space(for intersection) separated list of tags.
---@return number thrust The total thrust in newtons
function ControlUnit.getEngineThrust(taglist) end

---Set the value of throttle in the cockpit, which will be displayed in the cockipt widget when flying.
---This function must be used on a piloting controller
---@param axis number Longitudinal = 0, Lateral = 1, Vertical = 2
---@param commandValue number In 'by throttle', the value of the throttle position: -1 = full reverse, 1 = full forward. Or 'by target speed', the value of the target speed in km/h
function ControlUnit.setAxisCommandValue(axis, commandValue) end

---Get the value of throttle in the cockpit
---This function must be used on a piloting controller
---@param axis number Longitudinal = 0, Lateral = 1, Vertical = 2
---@return number thottle In travel mode, return the value of the throttle position: -1 = full reverse, 1 = full forward or in cruise mode, return the value of the target speed
function ControlUnit.getAxisCommandValue(axis) end

---Set the properties of an axis command
---This function must be used on a piloting controller
---These properties will be used to display the command in UI
---@param axis number Longitudinal = 0, Lateral = 1, Vertical = 2
---@param commandType number By throttle = 0, By target speed = 1, Hidden = 2
---@param targetSpeedRanges number[] This is to specify the cruise control target speed ranges in m/s
function ControlUnit.setupAxisCommandProperties(axis, commandType, targetSpeedRanges) end

---Returns the current control mode. The mode is set by clicking the UI button or using the associated keybinding.
---This function must be used on a piloting controller
---@return number mode The current control mode (for now only 2 are available, 0 and 1)
function ControlUnit.getControlMode() end

---Cancel the current master mode in use.
---This function must be used in a piloting controller
function ControlUnit.cancelCurrentControlMasterMode() end

---Check if a mouse control scheme is selected.
---This function must be used in a piloting controller
---@return boolean control True if a mouse control scheme is selected
function ControlUnit.isMouseControlActivated() end

---Check if the mouse control direct scheme is selected
---This function must be used in a piloting controller
---@return boolean control True if the mouse control direct scheme is selected
function ControlUnit.isMouseDirectControlActivated() end

---Check if the mouse control virtual joystick scheme is selected.
---This function must be used in a piloting controller
---@return boolean control True if a mouse control virtual joystick scheme is selected
function ControlUnit.isMouseVirtualJoystickActivated() end

---The ground engines will stabilize to this altitude within their limits.
---The stabilization will be done by adjusting thrust to never go over the target altitude.
---This includes VerticalBooster and HoverEngine.
---This function must be used in a piloting controller
---@param targetAltitude number The stabilization target altitude in m
function ControlUnit.activateGroundEngineAltitudeStabilization(targetAltitude) end

---Return the ground engines' stabilization altitude.
---This function must be used in a piloting controller
---@return number stab Stabilization altitude in m or 0 if none is set
function ControlUnit.getSurfaceEngineAltitudeStabilization() end

---The ground engine will behave like regular engine.
---This includes VerticalBooster and HoverEngine.
---This function must be used in a piloting controller
function ControlUnit.deactivateGroundEngineAltitudeStabilization() end

---Returns ground engine stabilization altitude capabilities (lower and upper ranges).
---This function must be used in a piloting controller
---@return vec2 stab Stabilization altitude capabilities for the least powerful engine and the most powerful engine
function ControlUnit.computeGroundEngineAltitudeStabilizationCapabilities() end

---Return the current throttel value
---This function must be used in a piloting controller
---@return number throttle Throttle value between -100 and 100
function ControlUnit.getThrottle() end

---Set the label of the control mode buttons shown in the control unit widget
---This function must be used in a piloting controller
---@param modeId number The control mode: 0=Travel Mode, 1=Cruise control by default
---@param label string The displaly name of the control mode, displayed on the widget button
function ControlUnit.setWidgetControlMode(modeId, label) end

---Checks if ny landing gear is deployed
---@return boolean result True if any landing guear is deployed
function ControlUnit.isAnyLandingGearDeployed() end

---Deploy all landing gears
function ControlUnit.deployLandingGears() end

---Retract all landing gears
function ControlUnit.retractLandingGears() end

---Check construct lights status
---@return boolean result True if any headlight is switched on
function ControlUnit.isAnyHeadlightSwitchedOn() end

---Turn on the construct headlights
function ControlUnit.switchOnHeadlights() end

---Turn off the construct headlights
function ControlUnit.switchOffHeadlights() end