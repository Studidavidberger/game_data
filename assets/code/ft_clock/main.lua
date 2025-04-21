-- CLOCK.LUA
time_now = os.time()
bg = love.graphics.newImage('bg_day.png')
bgm = love.audio.newSource('bgm_night.ogg', "stream")
  
--while ( playing == true and screen == 'play' ) do
  -- PASSER EN MODE NUIT
  
function ft_day()
  local timer = os.time() - time_now+295
  if ( timer >= 300 ) then
    ft_night()
end
return timer
end
--
function ft_night()
  function love.load()
    bg = love.graphics.newImage('bg_night.png')
    bgm = love.audio.newSource('bgm_night.ogg')
    timer = 0
    return timer
end
end
--
function love.draw()
  love.audio.play(bgm)
  love.graphics.draw(bg)
  love.graphics.print("timer= " .. ft_day(), 100, 100)
end
--end
--

--[[
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
--]]

io.stdout:setvbuf'no'