-- BY KISELEV NIKOLAY

-- DEC
ilu = {}

-- CON
ilu.windowflags = {borderless = true, fullscreen = true}

-- FUN
ilu.mergeTables = function(t1, t2)
    result = t1
    for k,v in pairs(t2) do
        result[k] = v
    end
    return result
end
ilu.merge= function(t1, runstr)
    result = t1
    t2 = ilu.run(runstr)
    for k,v in pairs(t2) do
        result[k] = v
    end
    return result
end
ilu.run = function(path)
    -- cleanup FRAMElove here
    zipmod = love.filesystem.load(path .. ".lua")
    return zipmod()
end
ilu.lay = function(path)
    zipmod = love.filesystem.load(path .. ".lua")
    return zipmod()
end
ilu.panelscreen = function(width, height)
    love.window.setMode(width, height)
end

-- RET
return ilu