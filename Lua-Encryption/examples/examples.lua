local crypto = require("Lua-Encryption") -- Require the Lua-Encryption library, which provides functions for hashing, salting, and verifying passwords

local salt = crypto.generate_salt() -- Generate a random salt using the generate_salt function from the Lua-Encryption library
local password = "my_secure_password" -- The password we want to hash and verify_password
local hash = crypto.hash_password(salt .. password) -- Hash the password using the hash_password function from the Lua-Encryption library, combining the salt and the password
 
print("Salt:", salt) -- Print the generated salt
print("Hash:", hash) -- Print the generated hash

local is_valid = crypto.verify_password(salt, password, hash) -- Verify the password using the verify_password function from the Lua-Encryption library, providing the salt, the password attempt, and the hash
print("Is the password valid?", is_valid) -- Print whether the password is valid or not (should be true)

