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

  mouse = {
    sprite = love.graphics.newImage('assets/world/images/cursor.png'),
    X = love.mouse.getX(),
    Y = love.mouse.getY()
}

end


function ft_intro()
  
  --debug
  world.screen = "intro"
  print("screen : ", world.screen)
  
  -- Play the opening one time at start
  
  -- muted
  --world.video:play()
  
  
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
    bg = love.graphics.newImage('assets/world/images/bg/bg_quitter.png')
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
  
  -- switch music
  --mute
  world.video:pause()
  --love.audio.play(bgm)

  function love.draw()
  
    
  local btn_pseudo = {
    sprite = love.graphics.newImage('assets/world/images/items/btn_pseudo.png'),
    posx = screensize.X/2,
    posy = screensize.Y/6,
    ratio = 1,
  }

  local btn_play = {
    sprite = love.graphics.newImage('assets/world/images/items/btn_play.png'),
    posx = screensize.X/2,
    posy = screensize.Y/20,
    ratio = 1,
  }
  
  if ( mouse.X > btn_play.posx and mouse.X < btn_play.posx+64 and mouse.Y > btn_play.posy and mouse.Y < btn_play.posy+64 ) 
    then
    btn_play.sprite = love.graphics.newImage('assets/world/images/items/btn_play_light.png')
  end
  
    if ( mouse.X > btn_pseudo.posx and mouse.X < btn_pseudo.posx+256 and mouse.Y > btn_pseudo.posy and mouse.Y < btn_pseudo.posy+256 ) 
    then
    btn_pseudo.sprite = love.graphics.newImage('assets/world/images/items/btn_pseudo_light.png')
  end
  
  -- BG
  love.graphics.draw(world.bg,0, 0,r, screensize.ratio_X, screensize.ratio_Y)
  
  -- button play
  love.graphics.draw(btn_play.sprite, screensize.X/2, screensize.Y/20 ,r, screensize.ratio_X*2 )
  
    -- username button
  love.graphics.draw(btn_pseudo.sprite, btn_pseudo.X, btn_pseudo.Y,r, btn_pseudo.ratio,btn_pseudo.ratio)  
  love.graphics.print(player.username, screensize.X/2,250)
  
  -- custom mouse
  love.graphics.draw(mouse.sprite, love.mouse.getX(), love.mouse.getY())
  love.graphics.draw(mouse.sprite, love.mouse.getX(), love.mouse.getY())
  love.mouse.setVisible(false)
  
    function love.keypressed(key)
        if key == "d" then
        print("\ntmin, mouse_pos, tmax", btn_play.posx, mouse.X, btn_play.posx+64)
        print("screensize.ratio_X", screensize.ratio_X)
      end
        if key == 'escape' then
          love.event.quit('quit')
        end
      --[[
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
      ]]

      
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
	