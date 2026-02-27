package.path = "C:\\Users\\otsor\\OneDrive\\Documentos\\Lua-Encryption\\src\\?.lua;" .. package.path
local hashing = require("hashing")
local salting = require("salting")
print(hashing.sha256(salting.generate_salt() .. "Hello, World!"))