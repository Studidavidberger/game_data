-- clock
time = 0 -- si 300 reviens 0
day_night = 0

function time_clock (playing, screen, time)
  while ( playing == true and screen == 'play' ) do
    time = time + 1
    love.timer.sleep(1)
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