-- work only with ilu and frame.lua

u = {}
u.scene = {}
u.scene.name = "hello"


u.load = function()
    -- body
end
u.update = function ()
    -- body
end
u.draw = function ()
    love.graphics.print("hi", 200, 200, 0, 4)
end

--
return u
