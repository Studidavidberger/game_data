require ('librairies.zombie')
socket = require'socket'

love.window.setMode( 1280, 720, {fullscreen = false, vsync = true, resizable = false } )
screen_width, screen_height = love.window.getMode()
cx = screen_width/2
cy = screen_height/2
--


function love.load()
    math.randomseed(os.time())
  --ennemies_images
  local img_male = love.graphics.newImage('images/ennemies/male/male.png')
  local img_female = love.graphics.newImage('images/ennemies/female/female_front.png')
  local img_slut = love.graphics.newImage('images/ennemies/slut/slut_front.png')
  local img_cooker = love.graphics.newImage('images/ennemies/male/male.png')
  local img_boss = love.graphics.newImage('images/ennemies/male/male.png')
  local img_chicken = love.graphics.newImage('images/ennemies/male/male.png')
  --hero_images
  local img_hero1 = love.graphics.newImage('images/hero/bob/bob.png')
  local img_hero2 = love.graphics.newImage('images/hero/alice/alice.png')
  --bgs
  bg = love.graphics.newImage('images/bg/bg_day.png')
  bg2 = love.graphics.newImage('images/bg/bg_night.png')
  --bgms
  --
  -- LOAD HERO
  hero1= {x=cx+200,
    y=cy,
    sprite=img_hero1,
    ox=img_hero1:getWidth()/2,
    oy=img_hero1:getHeight()/2}
  
  hero2 = {x=cx+100,
    y=cy,
    sprite=img_hero2,
    ox=img_hero2:getWidth()/2,
    oy=img_hero2:getHeight()/2}
 end
--
local rand = 0
function love.update(dt)
    rand = math.random(1, 100)%2
end
--
function love.draw()
  love.graphics.draw(bg)
  love.graphics.draw(hero1.sprite, cx, cy)
  love.graphics.print("rand : " .. rand, 10, 10)
end
--
function love.keypressed(key)
  
  if key == 'escape' then
    love.event.quit('quit')
  end

  if key == 'a' then

  end

end
--
love.window.setTitle('mini prograam')

io.stdout:setvbuf('no')