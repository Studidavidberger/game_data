require ('librairies.zombie')

love.window.setMode( 1280, 720, {fullscreen = false, vsync = true, resizable = false } )
screen_width, screen_height = love.window.getMode()
cx = screen_width/2
cy = screen_height/2
--
function love.load()
  --ennemies_images
  img_male = love.graphics.newImage('images/ennemies/male/male_01.png')
  img_female = love.graphics.newImage('images/ennemies/female/female_front.png')
  img_slut = love.graphics.newImage('images/ennemies/male/male_01.png')
  img_cooker = love.graphics.newImage('images/ennemies/male/male_01.png')
  img_boss = love.graphics.newImage('images/ennemies/male/male_01.png')
  img_chicken = love.graphics.newImage('images/ennemies/male/male_01.png')
  --hero_images
  img_hero = love.graphics.newImage('images/hero/bob/bob.png')
  img_heroine = love.graphics.newImage('images/hero/alice/alice.png')
  --bgs
  bg = love.graphics.newImage('images/bg/bg_day_full.jpg')
  --bgms
  --
  --ennemis
  zombie = {x=cx,y=cy,angle=0,image=img_female,ox=img_female:getWidth()/2,oy=img_female:getHeight()/2}
  --
  hero = {x=cx+200,
    y=cy,
    image=img_hero,
    ox=img_hero:getWidth()/2,
    oy=img_hero:getHeight()/2}
  
    heroine = {x=cx+100,
    y=cy,
    image=img_heroine,
    ox=img_heroine:getWidth()/2,
    oy=img_heroine:getHeight()/2}
 end
--
function love.update(dt)
end
--
function love.draw()
  love.graphics.draw(bg)
  love.graphics.draw(zombie.image, zombie.x, zombie.y)
  love.graphics.draw(hero.image, zombie.x, zombie.y)
end
--


function love.mousepressed()
end
--
function love.keypressed(key)
  if key == 'right' then
    zombie.x = zombie.x + 10
  end
  
  if key == 'down' then
    zombie.y = zombie.y + 10
  end
  
  if key == 'escape' then
    love.event.quit('quit')
  end
end
--

function love.update(dt)
  love.keypressed(key)
    if key == 'right' then
    end
end
--
love.window.setTitle('mini prograam')

io.stdout:setvbuf('no')