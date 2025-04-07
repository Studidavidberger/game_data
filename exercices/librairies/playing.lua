-- playing file

function ft_play(screen)
  bg = love.graphics.newImage('images/bg/bg_play_day.jpg')
  bgm = love.audio.newSource('sounds/bgm_day.mp3', "stream")
  assert(bgm:getType() ==  "stream")
  love.audio.play(bgm)
  love.graphics.print("Vous avez lancé une partie", 100,100)

end
