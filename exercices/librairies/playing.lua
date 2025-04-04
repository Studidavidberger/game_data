-- playing file

-- require("librairies.game.clock")
function ft_play(screen)
  bgm = love.audio.newSource('sounds/bgm_day.mp3')
  assert(bgm_main_menu:getType() ==  "stream")
  
    love.audio.play(bgm)
    love.graphics.print("Vous avez lancé une partie", 100,100)
end
