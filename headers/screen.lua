---@class Screen : GenericElement
Screen = GenericElement:new()

---Switch on the screen
function Screen.activate() end

---Switch off the screen
function Screen.deactivate() end

---Checks if the screen is on
---@return boolean status True if the screen is on
function Screen.isActive() end

---Toggle the state of the screen
function Screen.toggle() end

---Displays the given text at the given coordinates in the screen, and returns an ID to move it later
---@param x number Horizontal position, as a percentage (between 0 and 100) of the screen width
---@param y number Vertical position, as a percentage (between 0 and 100) of the screen height
---@param fontSize number Text font size, as a percentage of the screen width
---@param text string The text to display
---@return number id An integer ID that can be used later to update/remove the added element
function Screen.addText(x, y, fontSize, text) end

---Displays the given text centered in the screen with a font to maximize its visibility
---@param text string The text to display
function Screen.setCenteredText(text) end

---Set the whole screen HTML content (override anything already set)
---@param html string The HTML content to display
function Screen.setHTML(html) end

---Set the screen render script, switching the screen to native rendering mode
---@param script string The Lua render script
function Screen.setRenderScript(script) end

---Defines the input of the screen rendering script, which will be automatically defined during the execution of Lua
---@param input string A string that can be retrieved by calling getInput in a render script
function Screen.setScriptInput(input) end

---Set the screen render script output to the empty string
function Screen.clearScriptOutput() end

---Get the screen render script output
---@return string output The contents of the last render script setOutput call, or an empty string
function Screen.getScriptOutput() end

---Displays the given HTML content at the given coordinates in the screen, and returns an ID to move it later
---@param x number Horizontal position, as a percentage (between 0 and 100) of the screen width
---@param y number Vertical position, as a percentage (between 0 and 100) of the screen height
---@param html string The HTML content to display, which can contain SVG elements to make drawings
---@return number id An integer id that can be used later to update/remove the added element
function Screen.addContent(x, y, html) end

---Displays SVG code (anything that fits within a <svg> section), which overrides any preexisting content
---@param svg string The SVG content to display, which fits inside a 1920x1080 canvas
function Screen.setSVG(svg) end

---Update the element with the given ID (returned by addContent) with a new HTML content
---@param id number An integer ID that is used to identify the element in the screen. Methods such as addContent return the ID that you can store to use later here
---@param html string The HTML content to display, which can contain SVG elements to make drawings
function Screen.resetContent(id, html) end

---Delete the element with the given ID (returned by addContent)
---@param id number An integer iD that is used to identify the element in the screen. Methods such as addContent return the ID that you can store to use later here
function Screen.deleteContent(id) end

---Update the visibility of the element with the given ID (returned by addContent)
---@param id number An integer iD that is used to identify the element in the screen. Methods such as addContent return the ID that you can store to use later here
---@param state boolean True to show the content, False to hide
function Screen.showContent(id, state) end

---Move the element with the given id (returned by addContent) to a new position in the screen
---@param id number An integer iD that is used to identify the element in the screen. Methods such as addContent return the ID that you can store to use later here
---@param x number Horizontal position, as a percentage (between 0 and 100) of the screen width
---@param y number Vertical position, as a percentage (between 0 and 100) of the screen height
function Screen.moveContent(id, x, y) end

---Returns the x-coordinates of the position pointed at in the screen
---@return number x The x-position as a percentage (between 0 and 1) of screen width; -1 if nothing is pointed at
function Screen.getMouseX() end

---Returns the y-coordinates of the position pointed at in the screen
---@return number y The y-position as a percentage (between 0 and 1) of screen width; -1 if nothing is pointed at
function Screen.getMouseY() end

---Returns the state of the mouse click
---@return boolean state True if the mouse is pressed
function Screen.getMouseState() end

---Clear the screen
function Screen.clear() end