-- Fichier main 
require('librairies.game.info')
require("librairies.game.clock")
require("librairies.game.anim8")

-- INTRO
local bgm_Intro = love.audio.newSource("sounds/effects/ZomMoan1.mp3", "static")

function love.load()
	bg_intro = love.graphics.newImage('images/bg_intro.jpg')
end
function love.draw()
	love.graphics.draw(bg_intro)
  love.audio.play(bgm_Intro)
end

-- INFO
--[[
os.execute('clear')
welcome = [[
$$$$$$$$$$$$$$$$$$$$$$
$$ Clash of Zombies $$
$$$$$$$$$$$$$$$$$$$$$$
  
  By Le Studio Maloute

Welcome to the game data.
Lets press a, b, c or d

e for clear terminal.
escape for quitting


print(welcome)

function love.keypressed(key)
  if key == 'escape' then
  love.event.quit('quit')
end

  if key == 'a' then
  ft_men_lvl()
end

  if key == 'b' then
  ft_women_lvl()
end

  if key == 'c' then
  ft_chicken_lvl()
end

  if key == 'd' then
  ft_cuistot_lvl()
end

  if key == 'e' then
    ft_clear()
end


end
--
]]











-- CLOCK
--[[function love.keypressed(key)

  if key == 'a' then
  time_clock(true, "play", 10)
end

  if key == 'b' then
  time_clock(true, "play", 295)
end

  if key == 'c' then
    ft_co(3)
end

  if key == 'escape' then
    love.event.quit('quit')
end

end



]]






-- clock file - lancer les tests avec les touches a, b, c, d etc...


io.stdout:setvbuf('no')
