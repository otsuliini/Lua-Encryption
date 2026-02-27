local M = {}
-- Bitwise right rotation

function M.bit_ror_right(x, y)
  return ((x >> y) | (x << (32 - y))) & 0xFFFFFFFF
end

return M
