       --socket test CLIENT
 
  require("levelOne")
  
  client = {}
	
	local socket = require "socket"

	local address, port = "localhost", 12345
  
  local counter = 0
  
  function client.start()
    
    udp = socket.udp()
		udp:settimeout(0)
		udp:setpeername(address, port)
    
  end

	function client.sendUdpMsg()
		
    
    if counter == 0 then
      dg = "X: "..tostring(ball.x)
      counter = 1
    else
      dg = "Y: "..tostring(ball.y)
      counter = 0
    end
    
		--local dg = "X: "..tostring(ball.x).." Y: "..tostring(ball.y)
		local snd = udp:send(dg)
		print("Sent: " .. dg)
	end
  
  function client.receiveUdpMsg(event)
    
    data, msg_or_ip, port_or_nil = udp:receivefrom()
    
  end

	--sendUdpMsg()