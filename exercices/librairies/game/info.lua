-- INFO.LUA

function ft_info()
  
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

-- MESSAGE
print(welcome)
function ft_info(screen)
  arr = {"MEN", "WOMAN", "CHICKEN", "COOKER", 3, 2, 1.5, 5 }
  function love.mousepressed()
      ft_life(arr[index], arr[index+4])
      index = index + 1

end
end
--



-- Calculer la vie des zombies
function ft_life(zomb, life)
  level = 1
  index = 0
  offset = 0
  
  os.execute('clear')
  print(welcome)
  print( "LIFE ZOMBIE - ", zomb, "start life at", life )
  while ( level <= 10 ) do
    love.draw()
      love.graphics.print(life, 100, offset)
    end
    print(level, life)
    life = ( life + life / 5 + index )
    index = index + 1
    level = level + 1
    offset = offset + 50
  end
  print("END\n\n")
  

-- EFFACER LE TERMINAL
function ft_clear()
    os.execute('clear')
    print("Lets clear the term")
end
end
--