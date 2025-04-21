-- BOSS SPAWN
--[[psuedo code
lorsce que le pourcentage d'apparition attein 100% ou que le joueur attein un des palier de niveau
definit tout les 10000 PTS, un boss apparait,


boss
vitesse 3 pixel / sec
degat 20
vie 100

]]

--[[
function love.load()
  boss = {}
  boss.x = 400
  boss.y = 200
  boss.speed = 3
  boss.sprite = love.graphics.newImage('exercices/boss_face_large.png')
  boss.spriteSheet = love.graphics.newImage('exercices/boss_face.png')

  background = love.graphics.newImage('exercices/bg_river_01.png')
end
function love.draw()
  love.graphics.draw(boss)
end
]]


life_boss = 100
vitesse = 3

boss_damage = 50
score_player = 0

spn_boss = 0.05
phase_1 = true 
phase_2 = false

life_player = 200
click_damage = 1


function hero_hit()
  love.keypressed = 'a'
  
end

function boss_hit()

-- lancer les tests avec les touches a, b, c, d etc...
function love.keypressed(key)
    
  if key == 'a' then
    score_player = score_player + 1000
    print(score_player)
end

  if key == 'b' then
    spn_boss = spn_boss + 10
    print(score_player)
end
  
  
  if key == 'escape' then
  love.event.quit('quit')
end


end

function damage()
 local damage = 50
    life_player = life_player - damage
    print("la vie du joueur après l'attaque de la phase 1 : " .. life_player)
    return life_player
  end

function damage_phase2()
  print ("le boss est presque vaincu un dernière effort !!")
  local damage = 100
    life_player = life_player - damage
    print("la vie du joueur après l'attaque de la phase 2 : " .. life_player)
    return life_player
      end

while life_boss > 50 and TA > 0.05 and score_player >= 10000 do
  if phase_1 then
  print ("Première phase")
  life_player = damage()

   if life_player <=0 then
    print ("Game Over")
    break
  end
  
  
  life_boss = life_boss - damage_phase1
  print("la vie du boss après l'attaque du joueur : " .. life_boss)
  

  if life_boss <= 50 then
    print ("phase 2")
    phase_1 = false
    phase_2 = true
  end


  if phase_2 then
    life_player = damage_phase2()
  if life_player <= 0 then
    print("Game Over")
    break
  end
end

  life_boss = life_boss - damage_phase2
  print("La vie du boss après l'attaque du joueur  " .. life_boss)

if life_boss <= 0 then
  print("le boss est vaincu !! Vous avez gagné !!")
  break
end
end

 os.execute("sleep 1")
end