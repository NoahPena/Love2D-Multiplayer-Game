Player = 

  {
  
  name = nil,
  ip = nil,
  port = nil,
  x = 0,
  y = 0,
  speed = 300,
  img = nil
  
  }

function Player:setName(name)
  
  self.name = name;
  
end

function Player:setNetworkCredentials(ip, port)
  
  self.ip = ip
  self.port = port
  
end

function Player:setImage(img)
  
  self.img = img
  
end

function Player:setPosition(x, y)
  
  self.x = x
  self.y = y
  
end

function Player:getName()
  
  return self.name
  
end

function Player:getNetworkCredentials()
  
  return self.ip, self.port
  
end

function Player:getImage()
  
  return self.img 
  
end

function Player:getPosition()
  
  return self.x, self.y
  
end 