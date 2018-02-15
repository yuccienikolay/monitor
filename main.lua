-- | By Kiselev Nikolay | --
-- |        2018        | --

function love.load()
    MASHTAB = 3

    
    zipmod = love.filesystem.load("modules/kiselevnikolay.lua")
    ilu = zipmod()
    ilu.panelscreen(900 / MASHTAB, 1600 / MASHTAB)
    ilu.run("frame")

    Font = love.graphics.newFont("fonts/gtw.ttf", 60 / MASHTAB)
    love.graphics.setFont(Font)
end

function love.draw()
    love.graphics.print("hold on", 10, 10)
end