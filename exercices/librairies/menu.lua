--menu.lua
local menu = "menu"
local socket = require('socket')


function ft_menu()
  if not screen then
    bg = love.graphics.newImage('images/bg/bg_main_menu.jpg')
    btn_start = love.graphics.newImage('images/btn_start.png')
    bgm = love.audio.newSource('sounds/bgm_menu.mp3', "stream")
    assert(bgm:getType() ==  "stream")
    --    love.graphics.draw(bg)
    --    love.audio.play(bgm)
    screen = true
  end
end
--


  function love.load()
  love.mouse.setVisible(false)
  love.mouse.setGrabbed(true)
end

function love.draw()
  love.audio.play(bgm)
	love.graphics.draw(bg, 0, 0)
	love.graphics.draw(btn_start, 200, 200)
  love.graphics.draw(cursor, love.mouse.getX(), love.mouse.getY())  
end
  
  function love.resize(w, h)
  print(("Window resized to width: %d and height: %d."):format(w, h))
end
--  