--[[ Main lua file ]]

--[[Live edit]]
io.stdout:setvbuf('no')

--[[Declarer la variable a]]
a = 1

--[[ Afficher la variable a l'ecran ]]
print("salut", a)

function love.draw()
	while ( a <= 100000)
		do
			print("salut", a)
			a = a + 1;
    love.graphics.print("Hello World", 400, 300)
    love.graphics.print(a)
	end
end