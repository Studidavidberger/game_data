-- Bienvenue dans le fichier ennemies_lvl

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

-- Calculer la vie des zombies
function ft_life(msg, life_men)
  level = 1
  index = 3
  
  os.execute('clear')
  print(welcome)
  print(msg, life_men)
  while ( level <= 10 ) do
    print(level, life_men)
    life_men = ( life_men + life_men /2 )
    index = index + 3
    level = level + 1
    if index >= 100 then break end
  end
  print("END\n\n")
  
end
--


--
function ft_clear()
    os.execute('clear')
    print("Lets clear the term")
end
--