local function foo(x)
  if x == nil then return end
  -- Check if the key actually exists within the table before accessing it
  if x.bar ~= nil then
    print(x.bar)
  else
    print("Key 'bar' not found")
  end
end

foo({}) -- Works as expected
foo(nil) -- Works as expected

local t = {}
t.bar = 10
foo(t) -- Works as expected

local t = setmetatable({}, {__index = function(t,k) return 10 end})
foo(t) -- Now works correctly; prints "Key 'bar' not found"