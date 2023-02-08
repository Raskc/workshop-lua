local meta = {
    __add = function(t1, t2)
        return {x = t1.x + t2.x, y = t1.y + t2.y}
   end
}

local t1 = setmetatable({x = 5, y = 10}, meta)
local t2 = setmetatable({x = 15, y = 15}, meta)
local t3 = t1 + t2

print(string.format("x %i, y %i", t3.x, t3.y))