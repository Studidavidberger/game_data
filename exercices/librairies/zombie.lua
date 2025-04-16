love.window.setMode( 1280, 720, {fullscreen = true, vsync = true, resizable = false } )
screen_width, screen_height = love.window.getMode()
cx = screen_width/2
cy = screen_height/2

--get random spawn position
rand = (love.math.random()*999)%2
if rand >= 1 then
  spawn = {1200,cy}
else
  spawn = {0,cy}
end
-- meta classe
zombie = {life = 3,
  speed = 5,
  damage = 5,
  name = 'origin_zombie',
  sprite = 'images/ennemies/male/male_01.png',
  spawny = spawn
}
-- nouvelle methode de classe derivée
function zombie:new (o, name, life, speed, damage, sprite)
  o = o or {}
  setmetatable(o, self)
  self.__index = self
  self.name = name
  self.life = life
  self.speed = speed
  self.damage = damage
  self.sprite = sprite
  return o
end
-- declarer la fonction printlife
function zombie:printlife ()
  print("Table du zombie",
    "\nname",self.name,
    "\nlife", self.life,
    "\nspeed", self.speed,
    "\ndamage", self.damage,
    "\nsprite", self.sprite,
    "\nspawn XY", self.spawny[1], self.spawny[2])
end
--
female = zombie:new(nil, "female", 2, 6, 6, 'images/ennemies/female/female_front.png')
male = zombie:new(nil, "male", 3, 4, 7, 'images/ennemies/male/male_01.png')
male:printlife()
female:printlife()
--
--[[for i, xXXX_6_FA°25_____xXX in pairs(zombie) do
print(zombie[i])
end
]]