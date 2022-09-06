---@class System
System = {}
System.__index = System

---Returns the currently key bound to the given action.
---@param actionName string The action name, represented as a string taken among the set of predefined Lua-available actions
---@return string key The key associated to the given action name
function System.getActionKeyName(actionName) end

---Control the display of the Control Unit custom screen, where you can define customized display information in HTML.
---Note that this function is disabled if the player is not running the script explicitly (pressing F on the Control Unit vs via a plug signal)
---@param bool boolean True to show the screen, False to hide the screen
function System.showScreen(bool) end

---Set the content of the Control Unit custom screen with some HTML code
---Note that this function is disabled if the player is not running the script explicitly (pressing F on the Control Unit vs via a plug signal)
---@param content string The HTML content you want to display on the screen widget. You can also use SVG here to make drawings.
function System.setScreen(content) end

---Create an empty panel.
---Note that this function is disabled if the player is not running the script explicitly (pressing F on the Control Unit vs via a plug signal)
---@param label string The title of the panel
---@return string panelId The panel ID or "" on failure
function System.createWidgetPanel(label) end

---Destroy the panel. 
---Note that this function is disabled if the player is not running the script explicitly (pressing F on the Control Unit vs via a plug signal)
---@param panelId string The panel ID
---@return boolean result True on success
function System.destroyWidgetPanel(panelId) end

---Create an empty widget and add it to a panel.
---Note that this function is disabled if the player is not running the script explicitly (pressing F on the Control Unit vs via a plug signal)
---@param panelId string The panel ID
---@param type string Widget type, determining how it will diaply data attached to ID
---@return string widgetId The widget ID or "" on failure
function System.createWidget(panelId, type) end

---Destroy the widget.
---Note that this function is disabled if the player is not running the script explicitly (pressing F on the Control Unit vs via a plug signal)
---@param widgetId string The widget ID
---@return boolean result True on success
function System.destroyWidget(widgetId) end

---Create data
---Note that this function is disabled if the player is not running the script explicitly (pressing F on the Control Unit vs via a plug signal)
---@param dataJson string The data fields as JSON
---@return string dataId The dataID or "" on failure
function System.createData(dataJson) end

---Destroy the data
---Note that this function is disabled if the player is not running the script explicitly (pressing F on the Control Unit vs via a plug signal)
---@param dataId string The data ID
---@return boolean result True on success
function System.destroyData(dataId) end

---Update JSON associated to data
---Note that this function is disabled if the player is not running the script explicitly (pressing F on the Control Unit vs via a plug signal)
---@param dataId string The data ID
---@param dataJson string The data fields as JSON
---@return boolean result True on success
function System.updateData(dataId, dataJson) end

---Add data to widget
---Note that this function is disabled if the player is not running the script explicitly (pressing F on the Control Unit vs via a plug signal)
---@param dataId string The data ID
---@param widgetId string The widget ID
---@return boolean result True on success
function System.addDataToWidget(dataId, widgetId) end

---Remove data from widget
---Note that this function is disabled if the player is not running the script explicitly (pressing F on the Control Unit vs via a plug signal)
---@param dataId string The data ID
---@param widgetId string The widget ID
---@return boolean result True on success
function System.removeDataFromWidget(dataId, widgetId) end

---Returns the current value of the mouse wheel
---@return number value The current value of the mouse wheel
function System.getMouseWheel() end

---Returns the current value of the mouse delta X
---@return number value The current value of the mouse delta X
function System.getMouseDeltaX() end

---Returns the current value of the mouse delta Y
---@return number value The current value of the mouse delta Y
function System.getMouseDeltaY() end

---Returns the current value of the mouse pos X
---@return number value The current value of the mouse pos X
function System.getMousePosX() end

---Returns the current value of the mouse pos Y
---@return number value The current value of the mouse pos Y
function System.getMousePosY() end

---Returns the current value of the screen height
---@return number height The current value of the screen height
function System.getScreenHeight() end

---Returns the current value of the screen width
---@return number width The current value of the screen width
function System.getScreenWidth() end

---Returns the current value of the player's horizontal field of view
---@return number value The current value of the player's horizontal field of view
function System.getCameraHorizontalFov() end

---Returns the current value of the player's vertical field of view
---@return number value The current value of the player's vertical field of view
function System.getCameraVerticalFov() end

---Returns the active camera mode
---@return number mode Camera mode (First person view = 1, Look around contruct view = 2, Follow construct view = 3)
function System.getCameraMode() end

---Checks if the active camera is in first person view
---@return boolean state True if the camera is in first person view
function System.isFirstPerson() end

---Returns the position of the camera, in construct local coordinates
---@return vec3 position Camera position in construct local coordinates
function System.getCameraPos() end

---Returns the position of the camera, in world coordinates
---@return vec3 position Camera position in world coordinates
function System.getCameraWorldPos() end

---Returns the forward direction vector of the active camera, in world coordinates
---@return vec3 position Camera forward direction in world coordinates
function System.getCameraWorldForward() end

---Returns the right direction vector of the active camera, in world coordinates
---@return vec3 position Camera right direction in world coordinates
function System.getCameraWorldRight() end

---Returns the up direction vector of the active camera, in world coordinates
---@return vec3 position Camera up direction in world coordinates
function System.getCameraWorldUp() end

---Returns the forward direction vector of the active camera, in construct local coordinates
---@return vec3 position Camera forward direction in construct local coordinates
function System.getCameraForward() end

---Returns the right direction vector of the active camera, in construct local coordinates
---@return vec3 position Camera right direction in construct local coordinates
function System.getCameraRight() end

---Returns the up direction vector of the active camera, in construct local coordinates
---@return vec3 position Camera up direction in construct local coordinates
function System.getCameradUp() end

---Returns the current value of the mouse wheel (for the throttle speedUp/speedDown action)
---@return number input The current input
function System.getThrottleInputFromMouseWheel() end

---Returns the mouse input for the ship control action (forward/backward)
---@return number input The current input
function System.getControlDeviceForwardInput() end

---Returns the mouse input for the ship control action (yaw right/left)
---@return number input The current input
function System.getControlDeviceYawInput() end

---Returns the mouse input for the ship control action (right/left)
---@return number input The current input
function System.getControlDeviceLeftRightInput() end

---Lock or unlock the mouse free look.
---Note that this function is disabled if the player is not running the script explicitly (pressing F on the Control Unit vs via a plug signal)
---@param state boolean True to lock and False to unlock
function System.lockView(state) end

---Returns the lock state of the mouse free look
---@return boolean state True when locked and False when unlocked
function System.isViewLocked() end

---Returns the current time since the arrival of the Arkship on September 30th, 2017
---@return number time Time in seconds
function System.getArkTime() end

---Returns the current time since January 1st, 1970
---@return number time Time in seconds
function System.getUtcTime() end

---Returns the time offset between local timezone and UTC
---@return number offset Time in seconds
function System.getUtcOffset() end

---Returns the locale in which the game is currently running
---@return string locale The locale, currently one of "en-US", "fr-FR" or "de-DE"
function System.getLocale() end

---Returns delta time of action updates (to use in ActionLoop)
---@return number time The delta item in seconds
function System.getActionUpdateDeltaTime() end

---Returns the name of the given player, if in range of visibility or broadcasted by a transponder
---@param id number The ID of the player
---@return string name The name of the player
function System.getPlayerName(id) end

---Returns the world position of the given player, if in range or visibility
---@param id number The ID of the player
---@return vec3 position The coordinates of the player in world coordinates
function System.getPlayerWorldPos(id) end

---Returns the item table corresponding to the given item ID
---@param id number The ID of the item
---@return Item item An item table with fields: {[number] id, [string] name, [string] displayName, [string] locDisplayName, [string] displayNameWithSize, [string] locDisplayNameWithSize, [string] description, [string] locDescription, [string] type, [number] unitMass, [number] unitVolume, [number] tier, [string] scale, [string] iconPath, [table] schematics, [table] products:{[number] id, [number], quantity}}
function System.getItem(id) end

---Returns a list of recipes producing the given item form its ID
---@param id number The ID of the item
---@return Recipe recipe A list of recipe table with field: {[number] id, [number] tier, [number] time, [boolean] nanocraftable, [table] products:{[number] id, [number] quantity}, [table] ingredients: {[number] id, [number] quantity}}
function System.getRecipes(id) end

---Returns the corresponding organization to the given organization ID.
---@param id number The ID of the organization
---@return Organization organization A table containing information about the given organization {[string] name, [string] tag}
function System.getOrganization(id) end

---Returns the player's world position as a waypoint string, starting with '::pos'
---Note that this function is disabled if the player is not running the script explicitly (pressing F on the Control Unit vs via a plug signal)
---@return string waypoint The waypoint as a string
function System.getWaypointFromPlayerPos() end

---Set a waypoint at the destination described by the waypoint string, of the form '::pos'
---Note that this function is disabled if the player is not running the script explicitly (pressing F on the Control Unit vs via a plug signal)
---@param waypointStr string The waypoint as string
---@param notify? boolean True to display a notification on waypoint change
function System.setWaypoint(waypointStr, notify) end

---Clear the active destination waypoint
---Note that this function is disabled if the player is not running the script explicitly (pressing F on the Control Unit vs via a plug signal)
---@param notify? boolean True to display a notification on waypoint change
function System.clearWaypoint(notify) end

---Set the visibility of the helper top menu
---Note that this function is disabled if the player is not running the script explicitly (pressing F on the Control Unit vs via a plug signal)
---@param show boolean True to show the top helper menu, False to hide it
function System.showHelper(show) end

---Play a sound file from your audio folder
---(Located in "My documents/NQ/DualUniverse/audio")
---Only one sound can be played at a timecomment
---@param filePath string Relative path to autio folder (.mp3, .wav)
function System.playSound(filePath) end

---Checks if a sound is playing
---@return boolean state True if a sound is playing
function System.isPlayingSound() end

---Stop the current playing sound
function System.stopSound() end