---@class ManualSwitch : GenericElement
ManualSwitch = GenericElement:new()

---Switches the switch on
function ManualSwitch.activate() end

---Switches the switch off
function ManualSwitch.deactivate() end

---Checks if the switch is active
---@return boolean state True if the switch is active
function ManualSwitch.isActive() end

---Toggle the switch
function ManualSwitch.toggle() end
