-- playing

require("clock")

function love.load()
	btn_start = love.graphics.newImage("exercices/start.jpg")
end
function love.draw()
	love.graphics.draw(btn_start, 100,100)
end

time_clock(true, "play", 0)