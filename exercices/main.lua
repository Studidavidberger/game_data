--main.lua
require('librairies.game.info')
require("librairies.game.clock")
require("librairies.game.anim8")
require("librairies.menu")
require("librairies.playing")
local socket = require('socket')

-- DECLARER LES VARAIBLES
screen = "intro"
cursor =  love.graphics.newImage('images/cursor.png')

-- WAIT 1 SEC
socket.sleep(1)

-- LOAD ICON
function love.load()
    icon = love.graphics.newImage("images/item_banana.png")
    success = love.window.setIcon(icon:getData())
    if success then
        print("L'icône a été changée avec succès")
    else
        print("Erreur lors du changement de l'icône")
    end
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
  love.graphics.draw(cursor, love.mouse.getX(), love.mouse.getY())  
	love.graphics.draw(bg, 0, 0)
  love.audio.play(bgm)
end

print("Affichage", love.window.getPosition())


--  CHANGER D'ECRAN AU CLIQUE DE LA SOURIS
function love.mousepressed()
  if screen == 'intro' then
  ft_menu()
end

  if screen == 'menu' then
    ft_play()
  end
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

  if key == 'escape' then
    love.event.quit('quit')
  end

  if key == 'escape' and screen == 'menu' then
    socket.sleep(1)
    love.graphics.print("Vous avez quitté le jeu au revoir !")
    love.event.quit('quit')
end


  if key == 'escape' and screen == 'info' then
    ft_menu("menu")
end

  

end
--



io.stdout:setvbuf('no')
