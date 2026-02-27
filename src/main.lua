package.path = "C:\\Users\\otsor\\OneDrive\\Documentos\\Lua-Encryption\\src\\?.lua;" .. package.path
local hashing = require("hashing")
local salting = require("salting")
print(hashing.hash( "Hello, World!"))