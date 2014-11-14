levelOne = {}

require("collisions")

touching = false

function levelOne.load(arg)
  
  ball = {}
    ball.img = love.graphics.newImage("assets/redBox.png")
    ball.x = 100
    ball.y = 100
    ball.speed = 300
    
  enemyBall = {}
    enemyBall.img = love.graphics.newImage("assets/purpleBox.png")
    enemyBall.x = 200
    enemyBall.y = 200
    enemyBall.speed = 300
    
  square = {}
    square.img = love.graphics.newImage("assets/windowsSquare.JPG")
    square.x = 300
    square.y = 300
    
end

function levelOne.update(dt)
  
  touching = collisions.test(ball, square)
  
  if love.keyboard.isDown("a") then
    ball.x = ball.x - (ball.speed * dt)
  end
  
  if love.keyboard.isDown("d") then
    ball.x = ball.x + (ball.speed * dt)
  end
  
  if love.keyboard.isDown("s") then
    ball.y = ball.y + (ball.speed * dt)
  end
  
  if love.keyboard.isDown("w") then
    ball.y = ball.y - (ball.speed * dt)
  end
  
  if love.keyboard.isDown("escape") then
    love.event.quit()
  end
end

function levelOne.draw()
  love.graphics.setBackgroundColor(255,255,255,255)
  
  
  
 -- love.graphics.print("Hello", 100, 100)
  
  love.graphics.draw(ball.img, ball.x, ball.y)
  love.graphics.draw(square.img, square.x, square.y)
  love.graphics.draw(enemyBall.img, enemyBall.x, enemyBall.y)
  
  love.graphics.setColor(0, 0, 0, 255)
  
  love.graphics.print("FPS: "..tostring(love.timer.getFPS()).."\nBall.x: "..tostring(ball.x).."\nBall.y: "..tostring(ball.y).."\nBall.img.x: "..tostring(ball.img:getWidth()), 0, 0)
  
  if touching then
    love.graphics.print("yes", 500, 500)
  else
    love.graphics.print("no", 500, 500)
  end
  
  love.graphics.setColor(255, 255, 255, 255)
end
