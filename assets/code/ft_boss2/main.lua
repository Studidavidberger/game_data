function love.load()
  boss = {}
  boss.x = 400
  boss.y = 200
  boss.speed = 5
  boss.sprite = love.graphics.newImage('boss_face.png')
  boss.spriteSheet = love.graphics.newImage('boss_face.png')
  
  bg = love.graphics.newImage('../bg_test.png')

end
function love.draw()
  love.graphics.draw(bg,x,y,r,.5,.5)
  love.graphics.draw(boss.sprite, 100, 100)
end
--
life_boss = 100
damage_phase1 = 50
damage_phase2 = 100
score_player = 10000
TA = 0.05
phase_1 = true 
phase_2 = false
life_player = 200

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
  
  
  