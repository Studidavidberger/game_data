--menu.lua
local menu = "menu"
local socket = require('socket')


function ft_menu(screen)
    if screen == 'intro' then
      bg = love.graphics.newImage('images/bg/bg_main_menu.jpg')
      btn_start = love.graphics.newImage('images/btn_start.png')
      bgm = love.audio.newSource('sounds/pause.mp3', "stream")
      assert(bgm:getType() ==  "stream")
      --    love.graphics.draw(bg)
      --    love.audio.play(bgm)
      
  end

  function love.load()
  love.mouse.setVisible(false)
  love.mouse.setGrabbed(true)
end

function love.draw()
	love.graphics.draw(bg, 0, 0)
	love.graphics.draw(btn_start, 200, 200)
  love.graphics.draw(cursor, love.mouse.getX(), love.mouse.getY())  
  love.audio.play(bgm)
end
  
  function love.resize(w, h)
  print(("Window resized to width: %d and height: %d."):format(w, h))
end
  
  love.graphics.print("You are in the menu")
end
--

