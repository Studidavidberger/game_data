-- main.lua contain the loading screen game 

-- display screen
love.window.setMode( 1280, 720, {fullscreen = false, vsync = true, resizable = true } )

-- socket.sleep
socket = require'socket'

-- local
local video = love.graphics.newVideo('opening.ogv')
local username = ""

-- global
bg = love.graphics.newImage('assets/world/images/bg/bg_menu.jpg')
player = {
  score = 0,
  character = 0,
  name = "Gamiron",
  online_score = 0,
  }

-- Everything that need to be refresh and is constant
function love.update()
  
  -- Get size of the window.
  screen = {
    X = love.graphics.getWidth(),
    Y = love.graphics.getHeight(),
    state = "",
  }
  
  -- load cursor.png
  cursor = love.graphics.newImage('assets/world/images/cursor.png')
  
  -- set world data
  world = {
    bg_x = screen.X / bg:getWidth(),
    bg_y = screen.Y / bg:getHeight(),
    }

end


function ft_intro()
  
  --debug
  screen = "intro"
  print("screen : ", screen)
  
  -- Play the opening one time at start
  video:play()
  
  
  -- Display the screen and text intro
  function love.draw()
    local bg_width = screen.X / bg:getWidth()
    local bg_height = screen.Y / bg:getHeight()
    love.graphics.draw(video,0,0,r, bg_width, bg_height)
    love.graphics.print("Press 'Space Bar'", screen.X/2-20, screen.Y/2,r,bg_width*5,bg_height*5)
    love.graphics.print("'P' to pause", screen.X/4-20, screen.Y/4,r,bg_width*5,bg_height*5)
    love.graphics.print("'R' to rewind", screen.X/8-20, screen.Y/1.5,r,bg_width*5,bg_height*5)
  end
end
-- init the game start by the intro
ft_intro()

--
function ft_menu()
  
  -- load bg_menu.jpg
  bg = love.graphics.newImage('assets/world/images/bg/bg_menu.jpg')
    
  --load bgm_menu.ogg
  bgm = love.audio.newSource('assets/sounds/bgm_menu.ogg', "stream")

  local btn_scoreX, btn_scoreY, btn_scoreH, btn_scoreW = screen.X/3, 20, bg_width/2, bg_height/2
  local btn_score = love.graphics.newImage('assets/world/images/textures/btn_score.jpg')
  video:pause()
  love.audio.play(bgm)

  function love.draw()
  

  
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
    love.graphics.draw(mouse.sprite, love.mouse.getX(), love.mouse.getY())
    love.mouse.setVisible(false)
  
end


  function love.keypressed(key)
  
    if key == 'escape' then
      love.event.quit('quit')
    end
    username = username .. key
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
