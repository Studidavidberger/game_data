-- Welcome in the main file.
-- the whole assets of the game has source from the next called functions here.
--[[
require("exercices.clock")

function love.load()
	btn_start = love.graphics.newImage("exercices/start.jpg")
end
function love.draw()
	love.graphics.draw(btn_start, 100,100)
end

]]
io.stdout:setvbuf("no")
