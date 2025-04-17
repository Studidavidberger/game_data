love.window.setMode( 1280, 720, {fullscreen = true, vsync = true, resizable = false } )
screen_width, screen_height = love.window.getMode()
cx = screen_width/2
cy = screen_height/2



-- meta classe
zombie = {  name = 'origin_zombie',
  life = 3,
  speed = 5,
  damage = 5,
  sprite = 'images/ennemies/male/male.png',
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
  print("\nTable du zombie", self.name,
    "\nlife", self.life,
    "\nspeed", self.speed,
    "\ndamage", self.damage,
    "\nsprite", self.sprite)
--    "\nspawn XY", self.spawny[1], self.spawny[2])
  return o
end
-- Create every zombie of the game
chicken = zombie:new(nil, "chicken", 1.5, 5, 5, 'images/ennemies/chicken/chicken_front.png')

female = zombie:new(nil, "female", 2, 6, 6, 'images/ennemies/female/female_front.png')

slut = zombie:new(nil, "slut", 2, 7, 8, 'images/ennemies/slut/slut_front.png')

male = zombie:new(nil, "male", 3, 4, 7, 'images/ennemies/male/male.png')

cooker = zombie:new(nil, "cooker", 5, 6, 6, 'images/ennemies/cooker/cooker.png')

boss = zombie:new(nil, "boss", 25, 3, 6, 'images/ennemies/boss_face.png')

print(zombie:new())
print ("print methode", #boss)

--
--[[for i, xXXX_6_FA°25_____xXX in pairs(zombie) do
print(zombie[i])
end
]]