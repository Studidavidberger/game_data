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
function ft_men_lvl(life_men)
  life_men = 3
  level = 1
  index = 0
  
  os.execute('clear')
  print(welcome)
  print("LIFE MEN ZOMBIE - start life at", life_men)
  while ( level <= 10 ) do
    print(level, life_men)
    life_men = ( life_men + life_men / 5 + index )
    index = index + 1
    level = level + 1
    if index >= 100 then break end
  end
  print("END\n\n")
  
end
--

function ft_women_lvl(life_women)
  life_women = 2
  level = 1
  index = 0
  
  os.execute('clear')
  print(welcome)
  print("LIFE WOMEN ZOMBIE - start life at", life_women)
  while ( level <= 10 ) do
    print(level, life_women)
    life_women = ( life_women + life_women / 5 + index )
    index = index + 1
    level = level + 1
    if index >= 100 then break end
  end
  print("END\n\n")
  
end
--

function ft_chicken_lvl(life_chicken)
  life_chicken = 1.5
  level = 1
  index = 0
  
  os.execute('clear')
  print(welcome)
  print("LIFE CHICKEN ZOMBIE - start life at", life_chicken)
  while ( level <= 10 ) do
    print(level, life_chicken)
    life_chicken = ( life_chicken + life_chicken / 5 + index )
    index = index + 1
    level = level + 1
    if index >= 100 then break end
  end
  print("END\n\n")
  
end
--

function ft_cuistot_lvl(life_cuistot)
  life_cuistot = 5
  level = 1
  index = 0
  
  os.execute('clear')
  print(welcome)
  print("LIFE CUISTOT ZOMBIE - start life at", life_cuistot)
  while ( level <= 10 ) do
    print(level, life_cuistot)
    life_cuistot = ( life_cuistot + life_cuistot / 5 + index )
    index = index + 1
    level = level + 1
    if index >= 100 then break end
  end
  print("END\n\n")
  
end
--

function ft_clear()
    os.execute('clear')
    print("Lets clear the term")
end
