local hashing = require("Lua-Encryption.hashing")
local salting = require("Lua-Encryption.salting")
local verify = require("Lua-Encryption.verify")

local password = "Hello, World!"

local salt = salting.generate_salt()
local hash = hashing.sha256_Hashing(salt .. password)
print("Salt: " .. salt)
print("Hash: " .. hash)
local is_valid = verify.verify(salt, password, hash)
if is_valid then
    print("Password is correct")
    print("Correct password test passed successfully")
else
    print("Password is incorrect")
    print("Correct password test failed")
end

local wrong_password = "Wrong Password"
local is_valid_wrong = verify.verify(salt, wrong_password, hash)

if is_valid_wrong then
    print("Password is correct")
    print("Wrong password test failed")
else
    print("Password is incorrect")
    print("Wrong password test passed successfully")
end


