-- Regenration de la vie du hero
-- Création d'une coroutine
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
