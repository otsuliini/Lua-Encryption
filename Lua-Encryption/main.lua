local hashing = require("Lua-Encryption.hashing")
local salting = require("Lua-Encryption.salting")

print(hashing.sha256_Hashing(salting.generate_salt() .. "Hello, World!"))