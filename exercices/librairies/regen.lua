hero_life = 100
print(hero_life)

function love.mousepressed()
  hero_life = hero_life - 10
  print ("lost 10% life", hero_life)
end

local co = coroutine.create(function()
  print("Début de la coroutine")
  for hero_life = 100, 1 do
    print("Régeneration + 5" .. hero_life)
    love.timer.sleep(1)
    -- Suspension de l'exécution en appelant yield
    coroutine.yield()
  end
  print("Fin de la coroutine")
end)

-- Lancement de la coroutine
coroutine.resume(co)


-- Réactivation de la coroutine en appelant resume
while coroutine.status(co) ~= "dead" do
  print("Réactivation de la coroutine")
  coroutine.resume(co)
end
