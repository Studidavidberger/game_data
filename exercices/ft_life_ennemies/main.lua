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
  ft_life("LIFE CHICKEN ZOMBIE - start life a", 1.5)
end

  if key == 'b' then
  ft_life("LIFE WOMAN ZOMBIE - start life a", 2)
end

  if key == 'c' then
  ft_life("LIFE MEN ZOMBIE - start life a", 3)
end

  if key == 'd' then
  ft_life("LIFE COOKER ZOMBIE - start life a", 5)
end

  if key == 'e' then
    ft_clear()
end


end
--


io.stdout:setvbuf('no')
