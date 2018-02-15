-- BY KISELEV NIKOLAY

-- DEC
ilu = {}

-- CON
ilu.windowflags = {borderless = true, fullscreen = true}

-- FUN
ilu.run = function(path)
    zipmod = love.filesystem.load(path .. ".lua")
    return zipmod()
end
ilu.panelscreen = function()
    width, height = love.window.getDesktopDimensions()
    love.window.setMode(width, height, ilu.windowflags)
end

-- RET
return ilu