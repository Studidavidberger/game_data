-- Colorier des objets

function love.draw()
  
  clock = os.time()
  pos = love.math.random()*800
  
  --RED
	love.graphics.setColor(1, 0, 0)
	love.graphics.line(600,200, pos,240)
  love.graphics.print(pos,200,20,r,2,2)
  
  --GREEN
	local myColor = {0, 1, 0, 1}
	love.graphics.setColor(myColor)
	love.graphics.line(pos,500, 13,240)
  love.graphics.print(pos,200,100,r,2,2)

  --BLUE
	love.graphics.setColor(0, 0, 1)
	love.graphics.line(pos,500, pos,240)
  love.graphics.print(pos,200,60,r,2,2)

end