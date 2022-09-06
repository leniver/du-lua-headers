---@class Library
Library = {}
Library.__index = Library

---Solve the 3D linear system M*x=c0 where M is defined by its column vectors c1,c2,c3
---@param c1 vec3 The first column of the matrix M
---@param c2 vec3 The second column of the matrix M
---@param c3 vec3 The third column of the matrix M
---@param c0 vec3 The target column vector of the system
---@return vec3 vector The vec3 solution of the above system
function Library.systemResolution3(c1, c2, c3, c0) end

---Solve the 2D linear system M*x=c0 where M is defined by its column vectors c1,c2
---@param c1 vec3 The first column of the matrix M
---@param c2 vec3 The second column of the matrix M
---@param c0 vec3 The target column vector of the system
---@return vec3 vector The vec3 solution of the above system
function Library.systemResolution2(c1, c2, c0) end

---Returns the position of the given point in world coordinates system, on the game screen
---@param worldPos vec3 The world position of the point
---@return vec3 position The position in percentage (between 0 and 1) of the screen resolution as vec3 with {x, y, depth}
function Library.getPointOnScreen(worldPos) end
