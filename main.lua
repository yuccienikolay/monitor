-- | By Kiselev Nikolay | --
-- |        2018        | --

function love.load()
    -- Check mode 
	production = true
	
	-- Load ilu module
	zipmod = love.filesystem.load("modules/kiselevnikolay.lua")
    ilu = zipmod()
    -- Window setting (width, Height)
	ilu.panelscreen(900, 1600)
	-- Load global font
    Font = love.graphics.newFont("fonts/gtw.ttf", 60)
    love.graphics.setFont(Font)
	-- Run frame
	ilu.run("frame")
end

function love.draw()
	-- Loading Screen
    love.graphics.print("hold on", 10, 10)
end