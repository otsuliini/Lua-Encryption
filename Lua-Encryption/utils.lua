local M = {}

local function bit_ror(x, y)
  return ((x >> y) | (x << (32 - y))) & 0xFFFFFFFF
end

return M
