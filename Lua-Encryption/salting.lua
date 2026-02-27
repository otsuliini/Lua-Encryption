local string = require("string")
local math = require("math")

local M = {}


function M.generate_salt()
    local salt = {math.random(0, 255), math.random(0, 255), math.random(0, 255), math.random(0, 255), math.random(0, 255),
            math.random(0, 255), math.random(0, 255), math.random(0, 255), math.random(0, 255), math.random(0, 255), math.random(0, 255), math.random(0, 255), math.random(0, 255),
            math.random(0, 255), math.random(0, 255), math.random(0, 255)} -- 16 random bytes (128 bits) salt
    return string.char(table.unpack(salt)) -- convert the salt to a string and return it
    
end 





return M