--menu.lua
local menu = "menu"


function ft_menu(menu)
  bg = love.graphics.newImage('images/other/start.jpg')
  bgm = love.audio.newSource('sounds/pause.mp3')
  assert(bgm_main_menu:getType() ==  "stream")
  
  love.graphics.draw(bg)
  love.audio.play(bgm)
  
  love.graphics.print("You are in the menu")
end
