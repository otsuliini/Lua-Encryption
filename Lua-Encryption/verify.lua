local string = require("string")
local hashing = require("Lua-Encryption.hashing")

local M = {}

function M.verify(salt, attempt, hash)
    local hashing = require("Lua-Encryption.hashing")
    local salting = require("Lua-Encryption.salting")
    if hashing.sha256_Hashing(salt .. attempt) ==  hash then -- if the hash of the salt and the attempt is equal to the salt and the hash, then the attempt is correct
        return true
    else
        return false
    end

end

return M
