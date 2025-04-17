local rand = 0
function love.load()
    math.randomseed(os.time())
end

function love.update(dt)
    rand = math.random(1, 100)%2
end

function love.draw()
    love.graphics.print("rand : " .. rand, 10, 10)
end

io.stdout:setvbuf('no')