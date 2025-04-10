Push = require "librairies.modules.push"
require("librairies.mobs")
local bg =  love.graphics.newImage('images/bg/bg_menu.png')
-- Taille de l'cran avec la librairie Push
WINDOWS_WIDTH, WINDOWS_HEIGHT = love.window.getDesktopDimensions()
print(WINDOWS_WIDTH, WINDOWS_HEIGHT)
WINDOWS_WIDTH, WINDOWS_HEIGHT = WINDOWS_WIDTH * 0.8, WINDOWS_HEIGHT * 0.8

VIRTUAL_WIDTH, VIRTUAL_HEIGHT = 320,200


function love.load()
  love.graphics.setDefaultFilter("nearest", "nearest")
  Push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOWS_WIDTH, WINDOWS_HEIGHT,{fullscreen = false, vsync = true})
end

function love.update(dt)
end

function love.draw()
  Push:start()
    love.graphics.draw(bg, 0, 0)    
  Push:finish()
end
