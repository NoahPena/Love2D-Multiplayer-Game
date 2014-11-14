require("titleScreen")
require("levelOne")
require("menuScreen")
--require("collisions")
require("server")
require("client")

state = "titleScreen"
online = ""
msg = ""

function love.load(arg)
  
  if arg[#arg] == "-debug" then require("mobdebug").start() end
  
  titleScreen.load(arg)
  
  menuScreen.load(arg)
  
  levelOne.load(arg)
  
end

function love.update(dt)
  
 -- print(online);
 -- print(state);
  
  if state == "titleScreen" then
    titleScreen.update(dt)
  end
 
  if state == "levelOne" then
    levelOne.update(dt)
  end
  
  if state == "pause" then
    menuScreen.update(dt)
  end
  
  if online == "server" then
    print("Tried Recieving")
    msg = server.recieveUdpMsg()
    
    if msg ~= nil then
    
    if string.sub(msg, 0, 1) == "X" then
      
      enemyBall.x = string.sub(msg, 3)
      
    else 
      
      enemyBall.y = string.sub(msg, 3)
      
    end
    
    print("Tried Sending")
   -- sendUdpMsg()
   
    end
  
  end
  
  if online == "client" then
    print("Tried Sending")
    client.sendUdpMsg()
    
   -- msg = recieveUdpMsg()
    
   -- if string.sub(msg, 0, 1) == "X" then
      
    --  enemyBall.x = string.sub(msg, 3)
      
   -- else 
      
   --   enemyBall.y = string.sub(msg, 3)
      
   -- end
   
  end
  
end

function love.draw()
  
  love.graphics.print(love.timer.getFPS(), 0, 0)
  
  if state == "titleScreen" then
    titleScreen.draw()
  end
  
  if state == "levelOne" then
    levelOne.draw()
  end
  
  if state == "pause" then
    menuScreen.draw()
  end
  
 
end

--function love.focus(f)
  
 -- if f == false then
   -- state = "pause"
  --end
  
--end

function love.quit()
  
end

