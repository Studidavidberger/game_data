-- Déclaration des variables
local sprite
local spriteVisible = false

function love.load()
    -- Chargez l'image du sprite
    sprite = love.graphics.newImage('images/ennemies/slut/slut_front.png')
end

function love.mousepressed(x, y, button, istouch, presses)
    -- Vérifiez si le bouton gauche de la souris a été cliqué
    if button == 1 then
        -- Changez la visibilité du sprite
        spriteVisible = not spriteVisible
    end
end

function love.draw()
    -- Si le sprite doit être visible, dessinez-le
    if spriteVisible then
        love.graphics.draw(sprite, 100, 100) -- Changez les coordonnées (100, 100) selon vos besoins
    end
end
