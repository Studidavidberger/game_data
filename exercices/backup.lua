--main.lua
require('librairies.game.info')
require("librairies.game.clock")
require("librairies.game.anim8")
require("librairies.menu")
require("librairies.pause")
require("librairies.playing")
require("librairies.mobs")
require("librairies.modules.push")
local socket = require('socket')
Push = require "librairies.modules.push"


-- test code area
print(a == 2)

-- DECLARER LES VARAIBLES
screen = "intro"
cursor =  love.graphics.newImage('images/cursor.png')
fps = 1/15

--SET THE NAME OF THE GAME 
love.window.setTitle("Clash of Zombies")

-- ADJUST WINDOW SIZE
--  love.window.setMode( 1280, 720, {fullscreen = false, vsync = true } )

local btn_start =  love.graphics.newImage('images/btn_start.png')


local bg =  love.graphics.newImage('images/bg/bg_menu.png')
-- Taille de l'cran avec la librairie Push
WINDOWS_WIDTH, WINDOWS_HEIGHT = love.window.getDesktopDimensions()
print(WINDOWS_WIDTH, WINDOWS_HEIGHT)
WINDOWS_WIDTH, WINDOWS_HEIGHT = WINDOWS_WIDTH * 0.8, WINDOWS_HEIGHT * 0.8

VIRTUAL_WIDTH, VIRTUAL_HEIGHT = 320,200


function love.load()
  love.graphics.setDefaultFilter("nearest", "nearest")
  Push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOWS_WIDTH, WINDOWS_HEIGHT,{fullscreen = false, vsync = true, resizable = true})
end

function love.update(dt)
end

function love.draw()
  Push:start()
    love.graphics.draw(bg, 0, 0)
    love.graphics.draw(btn_start, 0, 0)
  Push:finish()
end


-- LOAD THE INTRO ASSETS.
bg =  love.graphics.newImage('images/bg/bg_intro.jpg')
bgm = love.audio.newSource("sounds/effects/ZomMoan1.mp3", "static")

-- CREATE THE CURSOR
function love.load()
  love.mouse.setVisible(false)
  --love.mouse.setGrabbed(true)
end

function love.draw()
  Push:start()
    love.graphics.draw(bg, 0, 0)
    love.graphics.draw(cursor, love.mouse.getX(), love.mouse.getY())  
  Push:finish()
  
  -- DEFINE THE FPS
  -- socket.sleep(fps)
end
--
  love.audio.play(bgm)


--  CHANGER D'ECRAN AU CLIQUE DE LA SOURIS
function love.mousepressed()


  if screen == 'menu' then
    ft_play()
  end
  
    if screen == 'intro' then
  ft_menu()
end
  print("main", screen)
end
--

--  CHANGER D'ECRAN A LA TOUCHE TAB PRESSE
function love.keypressed(key)
  if key == 'tab' then
  ft_pause()
end

  if key == 'i' and screen == 'menu' then
    ft_info()
end

  if key == 'a' then
    ft_mob()
  end
  
end
--

io.stdout:setvbuf('no')