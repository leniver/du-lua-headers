---@class Databank : GenericElement
Databank = GenericElement:new()


---Clear the Databank
function Databank.clear() end

---Returns the number of keys that are stored inside the Databank
---@return number keys The number of keys
function Databank.getNbKeys() end

---Returns all the keys in the Databank
---@return string[] keys The key list, as a list of string
function Databank.getKeyList() end

---Check if the key is present in the Databank
---@param key string The key used to store a value
---@return boolean result True if the key exists
function Databank.hasKey(key) end

---Remove the given key if the key is present in the Databank
---@param key string The key used to store a value
---@return boolean result True if the key has been successfully removed
function Databank.clearValue(key) end

---Stores a string value at givent key
---@param key string The key used to store a value
---@param val string The value as a string
function Databank.setStringValue(key, val) end

---Returns value stored in the given key as a string
---@param key string The key used to store a value
---@return string value The value as a string
function Databank.getStringValue(key) end

---Stores an integer value at the given key
---@param key string The key used to store a value
---@param val number The value as an integer
function Databank.setIntValue(key, val) end

---Returns value stored in the given key as an integer
---@param key string The key used to store a value
---@return number value The value as an integer
function Databank.getIntValue(key) end

---Stores a floating number value at the given key
---@param key string The key used to store a value
---@param val number The value as an floating number
function Databank.setFloatValue(key, val) end

---Returns value stored in the given key as an floating number
---@param key string The key used to store a value
---@return number value The value as an floating number
function Databank.getFloatValue(key) end