-- GEM
Now = {}
Now.scene = {}
Now.scene.name = "main"
Now.draw = function() end
Now.update = function() end

Now = ilu.merge(Now, "scenes/start")
Now.load()

function love.update(dt)
    Now.update(dt)
    if love.keyboard.isDown("l") then
        love.event.quit()
    end
end

function love.draw()
    love.graphics.print(Now.scene.name, 0, 0)
    love.graphics.print("onfrm", 0, 15)
    Now.draw()
end