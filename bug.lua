local function foo(x)
  if x == nil then return end
  print(x.bar)
end

foo({}) -- This will work fine
foo(nil) -- This will also work fine, due to the explicit check

local t = {}
t.bar = 10
foo(t) -- This will work fine as well

-- However, consider this scenario:
local t = setmetatable({}, {__index = function(t,k) return 10 end})
foo(t) -- This will throw an error, even though t.bar seems to exist