#Lua Encryption 1.0#
**So basically:**

The function **generate_salt()** returns the salt as a string.
The function **sha25_Hashing/()** returns the hash of the provided data. (You can choose whether to include the salt or not)

There is also a **verify** function which returns a boolean (True if inputed data matches salted hash, and False if not)





