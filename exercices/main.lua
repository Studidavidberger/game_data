--main.lua
require('librairies.game.info')
require("librairies.game.clock")
require("librairies.game.anim8")
require("librairies.menu")
require("librairies.playing")
local socket = require('socket')

-- LOAD THE INTRO BG AND BGM.
cursor =  love.graphics.newImage('images/cursor.png')

bg =  love.graphics.newImage('images/bg/bg_intro.jpg')
bgm = love.audio.newSource("sounds/effects/ZomMoan1.mp3", "static")

local screen = "intro"


function love.load()
  love.mouse.setVisible(false)
  love.mouse.setGrabbed(true)
end

socket.sleep(1)

function love.draw(bgm_intro)
  love.graphics.draw(cursor, love.mouse.getX(), love.mouse.getY())  
	love.graphics.draw(bg, 0, 0)
  love.audio.play(bgm)
end


function love.mousepressed()
  ft_menu()
  print("you've clicked to menu")
end

function love.keypressed(key)
  if key == 'a' then
end

  if key == 'b' then
    ft_menu(bg_main_menu)
  end
  
  if key == 'c' then
    ft_start()
  end


  if key == 'escape' then
  love.event.quit('quit')
end

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
