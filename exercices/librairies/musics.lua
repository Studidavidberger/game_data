--m

local bgm_Intro = love.audio.newSource("assets/sounds/train.mp3", "stream")
local bgm_game = love.audio.newSource("assets/sounds/DustOnMixers.mp3", "stream")
local bgm_game_night = love.audio.newSource("assets/sounds/DustOnMixers.mp3", "stream")

function love.keypressed(key)
  assert(bgm_game:getType() == "stream")
  assert(bgm_Intro:getType() == "stream")
  assert(bgm_game_night:getType() == "stream")

  if key == 'a' then
  love.graphics.print("musique d'intro : ", 400, 400)
  love.audio.play(bgm_Intro)
end

  if key == 'b' then
  love.audio.play(bgm_game)
  love.graphics.print("musique le jour", 400, 400)
end

  if key == 'c' then
  love.audio.play(bgm_game_night)
  love.graphics.print("musique la nuit", 400, 400)
end
end

