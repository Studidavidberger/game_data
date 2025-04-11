-- INFO.LUA
-- DECLARER LES VARIABLES
liste = {"MEN", "WOMAN", "CHICKEN", "COOKER", 3, 2, 1.5, 5 }
bgm = love.audio.newSource("sounds/effects/sfx_zombie_01.mp3", "static")
bg = love.graphics.newSource('images/bg/info.jpg')


function love.mousepressed()
    ft_info(liste[index], liste[index+4])
    index = index + 1
    if index > 4 then
      index = 1
    end
end
--

function ft_info(zomb, life)
  life = 0
  level = 1
  index = 0
  offset = 0
  
  print( "LIFE ZOMBIE - ", zomb, "start life at", life )
  while ( level <= 10 ) do
    print(level, life)
    life = ( life + life / 5 + index )
    index = index + 1
    level = level + 1
    offset = offset + 50
    info = "zombie", zomb, "vie", life
  end
end
--
function love.draw()
  love.graphics.draw(bg)
  love.audio.play(bgm)
  love.graphics.print(info)
end

print("info", screen)
screen = 'info'

