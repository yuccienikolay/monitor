-- Expendable executor

-- Declare NowScene value
Now = {}
Now.scene = {}
Now.scene.name = "main"
Now.draw = function() end
Now.update = function() end

-- How to change scene
Now = ilu.merge(Now, "scenes/hello")
-- Run Scene.Load(). Delete line if scene do not need to be loaded first
Now.load()

-- How to lay scene
Now = ilu.merge(Now, "scenes/hello")
Now.load()
-- To unlay do this line and make back Now.Scene code running.
if true then
	Now.resume()
end

function love.update(dt)
    -- Run Scene.Draw
	Now.update(dt)
	-- Run only in production
	if not production then
		if love.keyboard.isDown("l") then
			love.event.quit()
		end
	end
end

function love.draw()
	-- Run Scene.Draw
	Now.draw()
	-- Run only in production
	if not production then
		col = {love.graphics.getColor()}
		love.graphics.setColor(255, 255, 255)
		love.graphics.print(Now.scene.name, 0, 0, 0)
		love.graphics.print("yo", 0, 0, 0, 0.3)
		love.graphics.setColor(col)
	end
end