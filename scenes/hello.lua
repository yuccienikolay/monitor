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
    love.graphics.print("hello, world", 200, 200)
end

--
return u
