-- clock
day_night = 0

function time_clock (playing, screen, time)
  while ( playing == true and screen == 'play' ) do
    time = time + 1
    os.execute("sleep 1")
    print(playing, screen, time, day_night)
  if ( time == 300 ) then
    day_night = 1
    time = 0
  end
  if key == 'escape' then
    love.event.quit()
end 
end

end

print("test clock")


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
