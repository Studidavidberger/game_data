function hexadecagon (mode, x, y, radius) -- same as love.graphics.circle
	local w1 = math.atan(2/5) -- ratio of two integers, 21.8 degrees 
	local w2 = math.atan(5/5) -- ratio of two integers, 45 degrees 
	local k1 = (w1+w2)/2
	local k2 = math.cos((w2-w1)/2)
	local a = radius
	local b = radius*math.tan (w1 / 2)
	local c = radius*math.cos (k1) / k2
	local d = radius*math.sin (k1) / k2
	local vertices = {
		 a, b,  c, d,  d, c,  b, a, 
		-b, a, -d, c, -c, d, -a, b, 
		-a,-b, -c,-d, -d,-c, -b,-a, 
		 b,-a,  d,-c,  c,-d,  a,-b}
	love.graphics.translate (x+0.5, y+0.5)
	love.graphics.polygon (mode, vertices)
	love.graphics.translate (-x-0.5, -y-0.5)
end

canvas = love.graphics.newCanvas(width, height)
canvas:setFilter("nearest", "nearest")
love.graphics.setLineStyle("rough")
love.graphics.setCanvas (canvas)
	love.graphics.setColor (0,1,0)
	hexadecagon ("line", 200, 250, 150)
love.graphics.setCanvas ()

function love.draw()
	love.graphics.setColor (1,1,1)
	love.graphics.draw (canvas)
end