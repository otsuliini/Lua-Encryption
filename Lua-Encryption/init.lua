local M = {}

local hashing = require("Lua-Encryption.hashing")
local salting = require("Lua-Encryption.salting")
local verify = require("Lua-Encryption.verify")

M.hash_password = hashing.sha256_Hashing     
M.generate_salt = salting.generate_salt
M.verify_password = verify.verify

return M
