-- | By Kiselev Nikolay | --
-- |        2018        | --

function love.load()
    zipmod = love.filesystem.load("modules/kiselevnikolay.lua")
    ilu = zipmod()
    ilu.panelscreen()
    ilu.run("frame")
end

function love.draw()
    love.graphics.print("hold on", 10, 10)
end