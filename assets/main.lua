love.window.setMode( 1280, 720, {fullscreen = false, vsync = true, resizable = true } )
 
btn_score_sprite = love.graphics.newImage('world/images/textures/btn_score.jpg')
 
function love.draw()
  
    local screen = {
    X = love.graphics.getWidth(),
    Y = love.graphics.getHeight(),
  }
  
  local btn_score = {
    sprite = love.graphics.newImage('world/images/textures/btn_score.jpg'),
    X = screen.X/2-190,
    Y = screen.Y/10,
    right = 0,
    down = 0,
    ratio = .3
  }
  
  btn_score.right = btn_score.X + btn_score.sprite:getWidth() * btn_score.ratio
  btn_score.down = btn_score.Y + btn_score.sprite:getHeight() * btn_score.ratio
  name = "ClashofZombieXXX"
      
  function love.keypressed(key)
  
  if key == 'escape' then
    love.event.quit('quit')
  end
  string = string .. key
end
      
      local mouse = {
    sprite = love.graphics.newImage('world/images/cursor.png'),
    X = love.mouse.getX(),
    Y = love.mouse.getY()
  }
    love.graphics.print("BUTTON : X " .. btn_score.X, 100,100)
    love.graphics.print("BUTTON : Y " .. btn_score.Y,100,120)
    love.graphics.print("BUTTON DOWN " .. btn_score.down,100,160)
    love.graphics.print("BUTTON RIGHT " .. btn_score.right,100,140)
    love.graphics.print("MOUSE : X " .. mouse.X,100,180)
    love.graphics.print("MOUSE : Y " .. mouse.Y,100,200)
    love.graphics.print("NAME : " .. string,100,300)
    
    love.graphics.print("TEST : Y " ,screen.X/2,250)
  if ( mouse.X >= btn_score.X and mouse.X <= btn_score.right and
  mouse.Y >= btn_score.Y and mouse.Y <= btn_score.down ) then
  
    btn_score.sprite = love.graphics.newImage('world/images/textures/btn_score_light.jpg')
  love.graphics.draw(btn_score.sprite, btn_score.X, btn_score.Y,r, btn_score.ratio,btn_score.ratio)
    --[[
    print("\nMOUSE: X " .. mouse.X .. " Y " .. mouse.Y)
    print("SCREEN: X " .. screen.X .. " Y " .. screen.X)
    print("BUTTON: X " .. btn_score.X .. " Y " .. btn_score.Y)
    ]]
  else
  love.graphics.draw(btn_score.sprite, btn_score.X, btn_score.Y,r, btn_score.ratio,btn_score.ratio)
end
    love.graphics.draw(mouse.sprite, love.mouse.getX(), love.mouse.getY())
    love.mouse.setVisible(false)    

end
--
string = "a"
--
io.stdout:setvbuf'no'


