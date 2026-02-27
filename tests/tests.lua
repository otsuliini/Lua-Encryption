local hashing = require("lua-encryption.hashing")
local salting = require("lua-encryption.salting")
local verify = require("lua-encryption.verify")

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


