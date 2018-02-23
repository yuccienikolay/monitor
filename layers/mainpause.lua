-- work only with ilu and frame.lua

u = {}
u.scene = {}
u.scene.name = "hello"


u.load = function(NowScene)
    u.backpack = NowScene
	-- body
end
u.update = function ()
    -- body
end
u.resume = function (NowScene)
    NowScene = ilu.merge(NowScene, u.backpack)
	NowScene.load()
	-- body
	-- end body
	return NowScene
end
u.draw = function ()
    love.graphics.print("hello, world", 200, 200)
end

--
return u
