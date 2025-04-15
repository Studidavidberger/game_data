love.window.setMode( 1280, 720, {fullscreen = false, vsync = true, resizable = true } )
screen_width, screen_height = love.window.getMode()
cx = screen_width/2
cy = screen_height/2
--
function love.load()
  image = love.graphics.newImage('images/ennemies/male/male_01.png')
  bg = love.graphics.newImage('images/bg/bg_day_full.jpg')
  cat = {x=cx,y=cy,angle=0,image=image,ox=image:getWidth()/2,oy=image:getHeight()/2}
 end
--
function love.update(dt)
  local mx, my = love.mouse.getPosition()
  local dx, dy = mx-cat.x, my-cat.y
  cat.angle = math.atan2 (dy, dx)
  cat.x = cat.x + dt*dx
  cat.y = cat.y + dt*dy
end
--
function love.draw()
  love.graphics.draw(bg)
  love.graphics.draw(cat.image, cat.x, cat.y, cat.angle, 1.2, 1, cat.ox, cat.oy)
  love.graphics.print("cat", cat.x, cat.y+75)
  love.graphics.print("life 100", cat.x, cat.y-75)
  love.graphics.print(cat.x, screen_width/10,0)
  love.graphics.print(cat.y, screen_width/10,20)
end
--
function love.mousepressed()
    local instance = setmetatable({}, {__index = cat})
    instance.x = 100
    instance.y = 100
    print(instance.y)
    return instance
end
--
function love.keypressed(key)
  if key == 'right' then
    cat.x = cat.x + 10
  end
  
  if key == 'down' then
    cat.y = cat.y + 10
  end
end
--

love.window.setTitle('mini prograam')

io.stdout:setvbuf('no')