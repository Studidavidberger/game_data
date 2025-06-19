-- main.lua contain the loading screensize game 

--import CoZ modules


-- display screensize
love.window.setMode( 1280, 720, {fullscreen = false, vsync = true, resizable = true } )

-- socket.sleep
socket = require'socket'

-- globals objects
cursor = love.graphics.newImage('assets/world/images/cursor.png')

player = {
    score = 0,
    character = 0,
    username = "",
    online_score = 0
}

world = {
  -- images
  video = love.graphics.newVideo('opening.ogv'),
  bgm = love.audio.newSource('assets/sounds/bgm_menu.ogg', "stream"),
  bg = love.graphics.newImage('assets/world/images/bg/bg_day.jpg'),
  screen = "",
  
  -- mouse
  mouse = love.graphics.newImage('assets/world/images/cursor.png'),
  mouse_X = love.mouse.getX(),
  mouse_Y = love.mouse.getY(),
  
  -- Langue
  language = "fr",
  titles = "5",
  txt_4 = "4",
  txt_3 = "3",
  txt_2 = "2"
}
  
-- Everything that need to be refresh and is constant
function love.update()
  
  screensize = {
    -- GET screensize SIZE
    wallpaper = love.graphics.newImage('assets/world/images/bg/bg_day.jpg'),
    X = love.graphics.getWidth(),
    Y = love.graphics.getHeight(),
    ratio_X = love.graphics.getWidth()/world.bg:getWidth(),
    ratio_Y = love.graphics.getHeight()/world.bg:getHeight(),
}
print(screensize.ratio_X, screensize.ratio_Y)
end


function ft_intro()
  
  --debug
  world.screen = "intro"
  print("screen : ", world.screen)
  
  -- Play the opening one time at start
  world.video:play()
  
  
  -- Display the screen and text intro
  function love.draw()
    love.graphics.draw(world.video,0,0,r, screensize.ratio_X, screensize.ratio_Y)
    love.graphics.print("Press 'Space Bar'", screensize.X/2-20, screensize.Y/2,r,5,5)
    love.graphics.print("'P' to pause", screensize.X/4-20, screensize.Y/4,r,5,5)
    love.graphics.print("'R' to rewind", screensize.X/8-20, screensize.Y/1.5,r,5,5)
  
  function love.keypressed(key)
  if key == 'p' then
    if (world.video:isPlaying()) then
      world.video:pause()
      else
    world.video:play()
  end
  end

  if key == 'escape' then
    love.graphics.print("Quitter vraiment ?!.. " .. world.screen,  screensize.X/2,screensize.Y/2,r,3,3)
    print("Quitter vraiment ?!.. " .. world.screen)
    --love.event.quit('quit')
  end

  if key == 'r' then
    video:rewind()
  end
  
  if key == 'space' then
  ft_menu()
  print("screensize : menu")
end
end
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

  local btn_playX, btn_playY, btn_playH, btn_playW = screensize.X/3, 20, bg:getWidth()/2, bg:getHeight()/2
  world.video:pause()
  love.audio.play(bgm)

  function love.draw()
  
    
  local btn_pseudo = {
    sprite = love.graphics.newImage('assets/world/images/items/btn_pseudo.png'),
    X = screensize.X/2-190,
    Y = screensize.Y/2,
    right = 0,
    down = 0,
    ratio = 1
  }
  
  local btn_play = {
    sprite = love.graphics.newImage('assets/world/images/items/btn_play.png'),
    X = screensize.X/2-190,
    Y = screensize.Y/10,
    right = 0,
    down = 0,
    ratio = 1
  }
  
  btn_play.right = btn_play.X + btn_play.sprite:getWidth() * btn_play.ratio
  btn_play.down = btn_play.Y + btn_play.sprite:getHeight() * btn_play.ratio
        
  if ( world.mouse_X >= btn_play.X and world.mouse_X <= btn_play.right and
    world.mouse_Y >= btn_play.Y and world.mouse_Y <= btn_play.down ) then
  
  btn_play.sprite = love.graphics.newImage('assets/world/images/items/btn_play_light.png')
  love.graphics.draw(btn_play.sprite, btn_play.X, btn_play.Y,r, btn_play.ratio,btn_play.ratio)
    
    --[[
    print("\nMOUSE: X " .. mouse.X .. " Y " .. mouse.Y)
    print("screensize: X " .. screensize.X .. " Y " .. screensize.X)
    print("BUTTON: X " .. btn_play.X .. " Y " .. btn_play.Y)
    --]]
  
  else
end
  
  love.graphics.draw(world.bg,0, 0,r, world.ratio_X, world.ratio_Y)
  love.graphics.draw(btn_play.sprite, btn_play.X, btn_play.Y,r, btn_play.ratio,btn_play.ratio)
  love.graphics.draw(btn_pseudo.sprite, btn_pseudo.X, btn_pseudo.Y,r, btn_pseudo.ratio,btn_pseudo.ratio)
  love.graphics.print(player.username, screensize.X/2,250)
  love.graphics.draw(world.mouse, love.mouse.getX(), love.mouse.getY())
  love.graphics.draw(world.mouse, love.mouse.getX(), love.mouse.getY())
  love.mouse.setVisible(false)
  
end

    function love.keypressed(key)
      alphabet = {"a","b","c","d","e","f","g","h","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y",1,2,3,4,5,6,7,8,9,"-","_","@"}
      player.username = alphabet[i]
      if key == "up" then
          i = i + 1
      end      
      if key == "down" then
          i = i - 1
      end
      if key == "space" then
        player.username = player.username
      end
      
  end

end
--

  function love.keypressed(key)
    if key == 'escape' then
      love.graphics.print("Quitter vraiment ?!.. " .. world.screen,  screensize.X/2,screensize.Y/2,r,3,3)
      print("Quitter vraiment ?!.. " .. world.screen)
      --love.event.quit('quit')
    end
  end
  
--
io.stdout:setvbuf("no")
	