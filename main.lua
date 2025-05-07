-- Welcome in the main file.
-- the whole assets of the game has source from the next called functions here.
love.window.setMode( 1280, 720, {fullscreen = false, vsync = true, resizable = true } )
socket = require'socket'
require("debug")
bg = love.graphics.newImage('assets/world/images/bg/bg_menu.png')
local video = love.graphics.newVideo('video_lua.ogv')
username = ""
--
function ft_intro()
  print("screen : intro")
  video:play()
  function love.draw()
  local width, height = love.window.getMode()
  local bg_width = width / bg:getWidth()
  local bg_height = height / bg:getHeight()
  love.graphics.draw(video,0,0,r, bg_width, bg_height)
  love.graphics.print("Press 'Space Bar'", width/2-20, height/2,r,bg_width*5,bg_height*5)
  love.graphics.print("'P' to pause", width/4-20, height/4,r,bg_width*5,bg_height*5)
  love.graphics.print("'R' to rewind", width/8-20, height/1.5,r,bg_width*5,bg_height*5)
end
end
ft_intro()
--
function ft_menu()
  
    local bgm = love.audio.newSource('assets/sounds/bgm_menu.ogg', "stream")
    local bg = love.graphics.newImage('assets/world/images/bg/bg_menu.png')
    local width, height = love.window.getMode()
    local mouseX, mouseY = love.mouse.getPosition()
    local bg_width = width / bg:getWidth()
    local bg_height = height / bg:getHeight()
    local btn_scoreX, btn_scoreY, btn_scoreH, btn_scoreW = width/3, 20, bg_width/2, bg_height/2
    local cursor = love.graphics.newImage('assets/world/images/cursor.png')
    local btn_score = love.graphics.newImage('assets/world/images/textures/btn_score.jpg')
    local score = 0
    video:pause()
    love.audio.play(bgm)
 
 
  function love.draw()
  
    local screen = {
    X = love.graphics.getWidth(),
    Y = love.graphics.getHeight(),
  }
  
  local btn_score = {
    sprite = love.graphics.newImage('assets/world/images/textures/btn_score.jpg'),
    X = screen.X/2-190,
    Y = screen.Y/10,
    right = 0,
    down = 0,
    ratio = .3
  }
  
  btn_score.right = btn_score.X + btn_score.sprite:getWidth() * btn_score.ratio
  btn_score.down = btn_score.Y + btn_score.sprite:getHeight() * btn_score.ratio
      
  function love.keypressed(key)
  
  if key == 'escape' then
    love.event.quit('quit')
  end
  username = username .. key
end
      
      local mouse = {
    sprite = love.graphics.newImage('assets/world/images/cursor.png'),
    X = love.mouse.getX(),
    Y = love.mouse.getY()
  }
    love.graphics.draw(bg,0, 0,r, bg_width, bg_height)
    love.graphics.print("BUTTON : X " .. btn_score.X, 100,100)
    love.graphics.print("BUTTON : Y " .. btn_score.Y,100,120)
    love.graphics.print("BUTTON DOWN " .. btn_score.down,100,160)
    love.graphics.print("BUTTON RIGHT " .. btn_score.right,100,140)
    love.graphics.print("MOUSE : X " .. mouse.X,100,180)
    love.graphics.print("MOUSE : Y " .. mouse.Y,100,200)
    
    
    love.graphics.print("TEST : Y " ,screen.X/2,250)
  if ( mouse.X >= btn_score.X and mouse.X <= btn_score.right and
  mouse.Y >= btn_score.Y and mouse.Y <= btn_score.down ) then
  
    btn_score.sprite = love.graphics.newImage('assets/world/images/textures/btn_score_light.jpg')
  love.graphics.draw(btn_score.sprite, btn_score.X, btn_score.Y,r, btn_score.ratio,btn_score.ratio)
    
    --[[
    print("\nMOUSE: X " .. mouse.X .. " Y " .. mouse.Y)
    print("SCREEN: X " .. screen.X .. " Y " .. screen.X)
    print("BUTTON: X " .. btn_score.X .. " Y " .. btn_score.Y)
    ]]
  else
  love.graphics.draw(btn_score.sprite, btn_score.X, btn_score.Y,r, btn_score.ratio,btn_score.ratio)
end
    love.graphics.print("NAME : " .. username,width/2,height/10)
    love.graphics.draw(mouse.sprite, love.mouse.getX(), love.mouse.getY())
    love.mouse.setVisible(false)    

end
 
 end
--
function love.keypressed(key)
  
  if key == 'p' then
    if (video:isPlaying()) then
      video:pause()
      else
    video:play()
  end
end

  if key == 'r' then
    video:rewind()
  end
  
  if key == 'space' then
  ft_menu()
  print("screen : menu")
end
end
--
io.stdout:setvbuf("no")
