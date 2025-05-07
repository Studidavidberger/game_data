-- Display a random number 0 or 1
--[[
local rand = 0
function love.load()
    math.randomseed(os.time())
end

function love.update(dt)
    rand = math.random(1, 100)%2
end

function love.draw()
    love.graphics.print("rand : " .. rand, 10, 10)
end

io.stdout:setvbuf('no')
]]

socket = require'socket'

love.window.setMode( 1280, 720, {fullscreen = false, vsync = true, resizable = true } )

bg = love.graphics.newImage('bg_menu.png')

local zombie = {
  name = "zombie",
  force = 1,
  degat = 1
  }
--
function zombie:new(o, a, b, c)
o = o or {}
setmetatable(o, self)
self.__index = self  
o.name = a
o.force = b
o.degat = c
print("name=", a,"force=", b, "degat=", c)
return o
end
--
math.randomseed(os.time())
function love.update()
  rand_male = math.random(1, 2)
  rand_female = math.random(1, 3)
  rand_cooker = math.random(1, 10)
end
--
ct_zombie_male = 0
ct_zombie_female = 0
ct_zombie_cooker = 0
get_now = os.time()
--
function ct_zombies()
cd = 0
  if rand_male == 1 then
    male = zombie:new(nil, "male", 2, 3)
    socket.sleep(cd)
    ct_zombie_male = ct_zombie_male + 1
end

  if rand_female == 1 then
  female = zombie:new(nil, "female", 3, 4)
    socket.sleep(cd)
    ct_zombie_female = ct_zombie_female + 1
end

if rand_cooker == 1 then
  cooker = zombie:new(nil, "cooker", 4, 5)
    socket.sleep(cd)
    ct_zombie_cooker = ct_zombie_cooker + 1
end
end
--
function love.draw()
  ct_zombies()
-- decalr variables
local width = love.graphics.getWidth()
local height = love.graphics.getHeight()
local scaleX = width / bg:getWidth()
local scaleY = height / bg:getHeight()
love.graphics.draw(bg, 0, 0, 0, scaleX, scaleY)
love.graphics.print("curseur", love.mouse.getX()-20, love.mouse.getY()-20)
timer = os.time() - get_now
-- print zombies counter
love.graphics.print(rand_male, width/20, 10)
love.graphics.print(ct_zombie_male, width/20+20, 10)
love.graphics.print(rand_female, width/20, 30)
love.graphics.print(ct_zombie_female, width/20+20, 30)
love.graphics.print(rand_cooker, width/20, 50)
love.graphics.print(ct_zombie_cooker, width/20+20, 50)
love.graphics.print("temps ecoulé " .. timer, width/2, 20)
end
--
-- ft_zombie Create an object and instanciate it.
--[[

-- creer une variable table
-- etape 1 creer une fonction de creation  d'object
-- etape 2 creer une instance ou une copie, puis l'appeler
-- separer le main de la fonction de clone
-- implementer une fonction de spawn par probabilité de types zombies.


local personnage = {}
object = {
  name = "object",
  age = "1 sec",
  like = "code"
  }

function personnage:new(o, a, b, c)
  o = o or {}
  setmetatable(o, self)
  self.__index = self
  o.name = a
  o.age = b
  o.like = c
  return o
end

clone_empty = personnage:new(nil)
clone_A = personnage:new(nil, "a1", "a2", "a3")
clone_B = personnage:new(nil, "b1", "b2", "b3")

clone_clone_A = clone_A:new(nil, nil, "", "c3")

print(clone_A.name, clone_A.age, clone_A.like)
print(clone_B.name, clone_B.age, clone_B.like)
print(clone_empty.name, clone_empty.age, clone_empty.like)
print(clone_clone_A.name, clone_clone_A.age, clone_clone_A.like)


--]]

io.stdout:setvbuf'no'
