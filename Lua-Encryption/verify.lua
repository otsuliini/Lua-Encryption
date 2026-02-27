local string = require("string")

local M = {}

function M.verify(salt, attempt, hash)
    local hashing = require("Lua-Encryption.hashing")
    local salting = require("Lua-Encryption.salting")
    if hashing.sha256(salt .. attempt) ==  salt .. hash then -- if the hash of the salt and the attempt is equal to the salt and the hash, then the attempt is correct
        return true
    else
        print("Incorrect password")
        return false

    end

end
