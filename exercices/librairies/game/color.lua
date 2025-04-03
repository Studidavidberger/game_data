-- Colorier des objets

function love.draw()
	love.graphics.setColor(1, 0, 0)
	love.graphics.circle("fill", 50,50, 20)

	love.graphics.setColor(0, 0, 1)
	love.graphics.circle("fill", 50,100, 20)

	local myColor = {0, 1, 0, 1}
	love.graphics.setColor(myColor)
	love.graphics.circle("fill", 50,150, 20)
end