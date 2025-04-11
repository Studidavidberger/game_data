local socket = require('socket')
--menu.lua
function ft_menu()
  
  -- LOAD ASSETS
    bg = love.graphics.newImage('images/bg/bg_menu.jpg')
    btn_start = love.graphics.newImage('images/btn_start.png')
    bgm = love.audio.newSource('sounds/bgm_menu.ogg', "stream")
    bgm:setLooping(true)
    assert(bgm:getType() ==  "stream")
    love.audio.play(bgm)
    screen = 'menu'

  
  -- DRAW ASSETS
  function love.draw()
    love.graphics.draw(bg, 0, 0)
    love.graphics.draw(btn_start, 200, 200)
    love.graphics.draw(cursor, love.mouse.getX(), love.mouse.getY())  
    socket.sleep(fps)
  end

end
--
