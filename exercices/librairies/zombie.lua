
-- meta classe
local tbl = {life = 1}

-- nouvelle methode de classe derivée
for i = 1, #tbl do
print(tbl[i])
end

function tbl:new (o, life)
  o = o or {}
  setmetatable(o, self)
  self.__index = self
  self.life = 2
  return o
end

-- methode de classe derivée printlife
function tbl:printlife ()
  print("printlife dit", self.life)
end

mylife = tbl:new(nil, 3)

print("mylife: dit", mylife:printlife())
print("mylife dit", mylife.life)

