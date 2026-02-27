local string = require("string")

local M = {}

function M.verify_hash(salt, attempt, hash)
    local hashing = require("hashing")
    local salting = require("salting")
    if hashing.sha256(salt .. attempt) ==  salt .. hash then -- if the hash of the salt and the attempt is equal to the salt and the hash, then the attempt is correct
        return true
    else
        print("Incorrect password")
        return false

    end

end
