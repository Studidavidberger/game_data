-- spawn zombies

-- Creer une meta classe
mob = {life = 0, speed = 0, damage = 0}

-- Nouvelle methode de classe derivée
function mob:new (a, speed, damage)
  a = a or {}
  setmetatable(a, self)
  self.__index = self
  self.speed = speed or 0
  slef.damage = damage or 0
  self.life = life or 0
  return 0
end

function mob:printlife ()
  print("the mob lfe is", self.life)
end
