local string = require("string")
local u32 = require("nums.uintn").u32

local function bit_ror(x, y)
  return ((x >> y) | (x << (32 - y))) & 0xFFFFFFFF
end

sha256 = function(data)

      local k = { -- round constants
      0x428a2f98, 0x71374491, 0xb5c0fbcf, 0xe9b5dba5, 0x3956c25b, 0x59f111f1, 0x923f82a4, 0xab1c5ed5,
      0xd807aa98, 0x12835b01, 0x243185be, 0x550c7dc3, 0x72be5d74, 0x80deb1fe, 0x9bdc06a7, 0xc19bf174,
      0xe49b69c1, 0xefbe4786, 0x0fc19dc6, 0x240ca1cc, 0x2de92c6f, 0x4a7484aa, 0x5cb0a9dc, 0x76f988da,
      0x983e5152, 0xa831c66d, 0xb00327c8, 0xbf597fc7, 0xc6e00bf3, 0xd5a79147, 0x06ca6351, 0x14292967,
      0x27b70a85, 0x2e1b2138, 0x4d2c6dfc, 0x53380d13, 0x650a7354, 0x766a0abb, 0x81c2c92e, 0x92722c85,
      0xa2bfe8a1, 0xa81a664b, 0xc24b8b70, 0xc76c51a3, 0xd192e819, 0xd6990624, 0xf40e3585, 0x106aa070,
      0x19a4c116, 0x1e376c08, 0x2748774c, 0x34b0bcb5, 0x391c0cb3, 0x4ed8aa4a, 0x5b9cca4f, 0x682e6ff3,
      0x748f82ee, 0x78a5636f, 0x84c87814, 0x8cc70208, 0x90befffa, 0xa4506ceb, 0xbef9a3f7, 0xc67178f2
    }

    local function padding(data)
       local bit_len = #data * 8 -- lenght in bits 
       data = data .. "\x80" -- append 1 bit (or 0x80 in hex)
         while (#data * 8) % 512 ~= 448 do
            data = data .. "\x00" -- append 0 bits (or 0x00 in hex)
         end
         -- append the original message length as a 64-bit big-endian integer
         data = data .. string.char(
            bitLen >> 56 & 0xFF,
            bitLen >> 48 & 0xFF,
            bitLen >> 40 & 0xFF,
            bitLen >> 32 & 0xFF,
            bitLen >> 24 & 0xFF,
            bitLen >> 16 & 0xFF,
            bitLen >> 8 & 0xFF,
            bitLen & 0xFF
         )
            return data
    end
    -- hash values
    H0 = 0x6a09e667
    H1 = 0xbb67ae85
    H2 = 0x3c6ef372
    H3 = 0xa54ff53a
    H4 = 0x510e527f
    H5 = 0x9b05688c
    H6 = 0x1f83d9ab
    H7 = 0x5be0cd19

    local function make_chunks(data)
        local chunks = {}
        for i = 1, #data, 64 do  -- chunk up the data into 64-byte chunks (512 bits)
            table.insert(chunks, data:sub(i, i + 63))
        end
        
        return chunks
    end

    local function process_chunk(chunk)
        local w = {} -- message schedule array
        for i = 1, 64 do
            if i <= 16 then
                w[i] = string.byte(chunk, (i - 1) * 4 + 1) << 24 | -- convert 4 bytes to 32-bit words
                        string.byte(chunk, (i - 1) * 4 + 2) << 16 |
                        string.byte(chunk, (i - 1) * 4 + 3) << 8 |
                        string.byte(chunk, (i - 1) * 4 + 4)
                        
        
        end
        

    end
    

end






