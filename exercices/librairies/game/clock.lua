-- CLOCK.LUA

-- DECLARER LES VARIABLES
local thread
time = 0

function ft_clock(playing, screen, time)
  
  while ( playing == true and screen == 'play' ) do
    thread = love.thread.newThread( threadCode )
    thread:start( 99, 1000 )
    
    function love.update( dt )
      time = time + dt
    end
    
    socket.sleep(1)
    print(playing, screen, time, day_night)
    
  -- PASSER LA NUIT
  if ( time == 300 ) then
    function love.load()
      bg = love.graphics.newImage('images/bg/bg_play_night.jpg')
      bgm = love.audio.newSource('sounds/bgm_night.ogg')
    end
    
    function love.draw()
      love.audio.play(bgm)
      love.graphics.draw(bg)
    end
    
  end
end
end
--


function ft_co (i)
  print("test")
co = coroutine.create(function ()
   for i=1,10 do
     print("co", i, coroutine.status(co))
     love.event.wait(1)
     coroutine.yield()
   end
end)
end
