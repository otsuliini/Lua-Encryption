# Documentation

## So basically:
A tiny pure-Lua library for learning purposes, providing password hashing (using sha256), salting, and verification.

## Functions:

- `generate_salt()`
  Returns a random salt as a string.

- `sha256_Hashing(data, salt)`  
  Returns the hash of the provided data. You can include the salt if you want.

- `verify(data, salt, hash)`  
  Returns a boolean:  
  - `true` → input data matches the salted hash  
  - `false` → doesn't match

### For examples see examples/examples.lua
