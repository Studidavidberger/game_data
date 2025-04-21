-- ft_regen
socket=require'socket'
hero_life = 100

function love.mousepressed()
  hero_life = hero_life - 10
  print("lost 10% life", hero_life)
end

function love.update(dt)
  if hero_life < 100 then
    hero_life = math.min(hero_life + 1 * dt, 100)
    socket.sleep(1)
  end
end

function love.draw()
  w = love.graphics.getWidth()/2
  h = love.graphics.getHeight()/2
  love.graphics.print("Régeneration +1/s ",10, 20)
  love.graphics.print("life hero " .. hero_life,10, 100)
end

io.stdout:setvbuf'no'