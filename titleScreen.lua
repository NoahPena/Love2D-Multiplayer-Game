require("server")
require("client")

titleScreen = {}


function titleScreen.load(arg)
  
end

function titleScreen.update(dt)
  
  if love.keyboard.isDown("return") then
    state = "levelOne"
  end
  
  if love.keyboard.isDown("c") then
    online = "client"
    state = "levelOne"
    client.start()
  end
  
  if love.keyboard.isDown("s") then
    online = "server"
    state = "levelOne"
    server.start()
  end
  
 -- state = "levelOne"
  
end

function titleScreen.draw()
  
  love.graphics.setBackgroundColor(20,255,0,255)
  love.graphics.setFont(love.graphics.newFont(50))
  love.graphics.print("Press Enter to Start", 100, 200)
  love.graphics.print("Press C for Client", 100, 300)
  love.graphics.print("Press S for Server", 100, 400)
  
end