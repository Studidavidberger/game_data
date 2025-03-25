local bgmIntro = love.audio.newSource("assets/bgm/train.mp3", "stream")
local sndJump = love.audio.newSource("assets/bgm/sample.mp3", "static")
local bgmPlay = love.audio.newSource("assets/bgm/DustOnMixers.mp3", "stream")

local vol = 1
local pitch = 1

function love.keypressed(key)
  assert(bgmPlay:getType() == "stream")
  assert(bgmIntro:getType() == "stream")
  if key == "space" then
    sndJump:play()
  end

  if key == "escape" then
    love.event.quit()
    print("You've hit escape")
  end
  
  if key == "up" then
    vol = vol + .2
    bgmPlay:setVolume(vol)
    bgmPlay:play()
    print(vol)
  end
  
  if key == "down" then
    if vol <= .4 then
      vol = vol + .2
    end
    vol = vol - .2
    bgmPlay:setVolume(vol)
    bgmPlay:play()
  end

  if key == "left" then
    if pitch <= .2 then
      pitch = pitch + .1
    end
    pitch = pitch - .1
    bgmPlay:setPitch(pitch)
    bgmPlay:play()
  end
  
  if key == "right" then
    pitch = pitch + .1
    bgmPlay:setPitch(pitch)
    bgmPlay:play()
  end
  
  if key == "m" then
    love.mouse.setPosition( love.graphics.getWidth() * 0.5, love.mouse.getY() )
  end
  
 if key == "tab" then
    local state = not love.mouse.isGrabbed()   -- the opposite of whatever it currently is
    love.mouse.setGrabbed(state) --Use love.mouse.setGrab(state) for 0.8.0 or lower
 end
 
end


function love.load()
  hero_idle = love.graphics.newImage("assets/characters/hero/bob/bob_idle.png")
  hero_dance = love.graphics.newImage("assets/characters/hero/bob/bob_dance.png")
end

function love.draw()
  love.graphics.draw(hero_idle, 100, 200)
  love.graphics.draw(hero_dance, 300, 300)
end

                  index = 0

repeat
    value = math.random(0, 10)
    index = index + 1
    print("repeat", index, value)
  until ( value == 7 )
  
  function sum (x, y)
    sum = x+y
    return sndJump
  end
  
  
    loveme = sum(5, 5)
    print("return ft", loveme)


hero_life = 100
print(hero_life)

function love.mousepressed()
  hero_life = hero_life - 10
  print ("lost 10% life", hero_life)
end

-- Regenration de la vie du hero
-- Création d'une coroutine
local co = coroutine.create(function()
  print("Début de la coroutine")
  for hero_life = 100, 1 do
    print("Régeneration + 5" .. hero_life)
    love.timer.sleep(1)
    -- Suspension de l'exécution en appelant yield
    coroutine.yield()
  end
  print("Fin de la coroutine")
end)

-- Lancement de la coroutine
coroutine.resume(co)


-- Réactivation de la coroutine en appelant resume
while coroutine.status(co) ~= "dead" do
  print("Réactivation de la coroutine")
  coroutine.resume(co)
end




-- ANIm8 
package.path = package.path .. '/home/david/Desktop/game_data/anim8/anim8.lua'
local anim8 = require 'anim8.anim8'

local image, animation

function love.load()
  image = love.graphics.newImage('assets/characters/hero/bob/bob_dance.png')
  local g = anim8.newGrid(16, 16, image:getWidth(), image:getHeight())
  animation = anim8.newAnimation(g('1-8',1), 0.1)
end

function love.update(dt)
  animation:update(dt)
end

function love.draw()
  animation:draw(image, 100, 200)
end


