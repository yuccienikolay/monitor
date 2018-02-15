-- work only with ilu and frame.lua

u = {}
u.scene = {}
u.scene.name = "start"


u.load = function()
    -- body
end
u.update = function ()
    -- body
end
u.draw = function ()
    love.graphics.print("strt", 200, 200)
end

--
return u
