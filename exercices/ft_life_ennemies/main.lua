-- Fichier main 
require('calculer_vie')

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
]]

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


io.stdout:setvbuf('no')
