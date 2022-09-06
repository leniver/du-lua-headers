---@class LandingGear : GenericElement
LandingGear = GenericElement:new()

---Deploys the landing gear
function LandingGear.deploy() end

---Retracts the landing gear
function LandingGear.retract() end

---Checks if the landing gear is deployed
---@return boolean state True if the landing gear is deployed
function LandingGear.isDeployed() end

---Toggle the landing gear
function LandingGear.toggle() end