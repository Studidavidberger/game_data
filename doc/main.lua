-- display screensize
love.window.setMode( 1280, 720, {fullscreen = false, vsync = true, resizable = true } )


-- exercice 1 : faire un structure.
--[[
socket = require'socket'

for i=1,10,1 do
  
  personnage = 
  {
    tete="tete",
    corps="corpulent",
      esprit=
      {
        ame="sensible",
        paisible="paisible"
        }}
  
  print(personnage) -- tableau
  print(personnage.tete) -- valeure
  print(personnage.esprit) -- tableau 
  print(personnage.esprit.ame, "\n") -- variable
  
end
--]]



-- Exo 2 : Declarer une metatable, et Appeler une metamethode.
--[[
mytable = setmetatable( {key1="value1"}, {__index=function( mytable, key, otherkey ) 
    
      --Check key
      if key == "mem" then
        memory = 64
        for i=1,4,1 do
          memory = memory*2
        end
        
        return memory .. "KB"
      else
        return nil
      end
    end
    
  }
)
print(mytable.mem)
io.write("Hello world, from ",_VERSION,"!\n")
--]]

local bg = love.graphics.newImage('bg_night.jpg')

function love.draw()
  love.graphics.draw(bg)

function love.keypressed(key)
  if key == 'space' then
      bg = love.graphics.newVideo('video_lua.ogv')
      bg:play()
  end
end
end



io.stdout:setvbuf("no")