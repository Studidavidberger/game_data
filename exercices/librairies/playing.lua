local socket = require('socket')
--playing.lua
function ft_play()
  
  -- LOAD ASSETS
    love.audio.stop()
    bg = love.graphics.newImage('images/bg/bg_day.jpg')
    bgm = love.audio.newSource('sounds/bgm_day.mp3', "stream")
    bgm:setLooping(true)
    assert(bgm:getType() ==  "stream")
    screen = 'play'
  
  --PLAY BGM
    love.audio.play(bgm)
    
  -- USE ASSETS
    function love.draw()
      love.graphics.draw(bg)
      love.graphics.print("Vous avez lancé une partie", 100,100)
      love.graphics.draw(cursor, love.mouse.getX(), love.mouse.getY())
      socket.sleep(fps)
    end
    print("play", screen)
    screen = 'play'

end


-- List of bugs and things that happen at run
--[[
1) - mouse disapear at play screen

]]