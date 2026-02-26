package.path = "C:\\Users\\otsor\\OneDrive\\Documentos\\Lua-Encryption\\src\\?.lua;" .. package.path
local hashing = require("hashing")

print(hashing.sha256("hello world"))