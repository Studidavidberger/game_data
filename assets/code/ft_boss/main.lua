-- Test de code
love.window.setMode( 1280, 720, {fullscreen = false, vsync = true, resizable = true } )
--[[
local b = os.time()
local d = 0

function love.draw()
  local a = os.date()
  local c = os.clock()
  
  love.graphics.print("CLOCK 1 : " .. os.date(), 10, 10,r,3,3)
  love.graphics.print("CLOCK 2 : " .. os.time()-b, 10, 40,r,3,3)
  love.graphics.print("CLOCK 3 : " .. os.clock()*10, 10, 70,r,3,3)
  love.graphics.print("CLOCK 4 : " .. d, 10, 100,r,3,3)
  d = d + 1

end
]]
--
local bg = love.graphics.newImage('bg_day.png')
local path_step = love.graphics.newImage('path_step.png')

local path = {}

path = {
  step1 = {500, 400},
  step2 = {300, 240},
  step3 = {249, 149},
  step3 = {249, 149}
  }

function ft_boss_particules()
  print("particules video 1 sec spawn et mort")
end
--
function ft_boss()

  boss = {}
  
  boss = {
    life = 100,
    speed = 5,
    damage = 10,
    animation = love.graphics.newImage('boss_walk.png'),
    phase = 0,
    IsTH = false,
    IsVisible = true
    }
    
end
--
function love.draw()
  mouse = {}

  mouse = {
  X = love.mouse.getX(),
  Y = love.mouse.getY(),
  }

  love.graphics.draw(bg,x,y,r,.5,.5)
  love.graphics.draw(path_step,150,200,r,.3,.3)
  love.graphics.print("Mouse X : " .. mouse.X,20,600,r,2,2)
  love.graphics.print("Mouse Y : " .. mouse.Y,20,620,r,2,2)
  
end
--
io.stdout:setvbuf'no'