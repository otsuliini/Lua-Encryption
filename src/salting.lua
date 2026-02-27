local string = require("string")
local math = require("math")

local M = {}


function M.generate_salt()
    salt = {math.random(0, 255), math.random(0, 255), math.random(0, 255), math.random(0, 255), math.random(0, 255),
            math.random(0, 255), math.random(0, 255), math.random(0, 255), math.random(0, 255), math.random(0, 255), math.random(0, 255), math.random(0, 255), math.random(0, 255),
            math.random(0, 255), math.random(0, 255), math.random(0, 255)} -- 16 random bytes (128 bits) salt
end 





return M