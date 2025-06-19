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



io.stdout:setvbuf("no")