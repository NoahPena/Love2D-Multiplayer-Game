menuScreen = {}

function menuScreen.load(arg)
  
end

function menuScreen.update(dt)
 
 if love.keyboard.isDown("return") then
    state = "levelOne"
 end
 
end

function menuScreen.draw()
  
  love.graphics.setBackgroundColor(20,20,0,20)
  love.graphics.print("Press Enter to Continue", 100, 400)
  
end