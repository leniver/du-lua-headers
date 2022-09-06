---@class ForceField : GenericElement
ForceField = GenericElement:new()

---Deploys the forcefield
function ForceField.deploy() end

---Retracts the forcefield
function ForceField.retract() end

---Checks if the forcefield is deployed
---@return boolean state True if the forcefield is deployed
function ForceField.isDeployed() end

---Toggle the forcefield
function ForceField.toggle() end