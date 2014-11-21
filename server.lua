     --socket test SERVER
     
	
  server = {}
  
local socket = require "socket"

clients = {}

numberOfClients = 0

  
function server.start()
  -- begin
	udp = socket.udp()
	udp:settimeout(0)
	udp:setsockname('*', 12345)
  print("cool")
end
	

--data, msg_or_ip, port_or_nil

	function server.recieveUdpMsg(event) 
    
    data, msg_or_ip, port_or_nil = udp:receivefrom()
    
    if msg_or_ip == nil or port_or_nil == nil then
      
      print("yes")
        return
    end
    
    
    if numberOfClients == 0 then
      
        clients[1] = msg_or_ip, port_or_nil
      
        --clients[1].ip = msg_or_ip
        --clients[1].port = port_or_nil
        
      else
        
        local i = 1
        local found = false
        
        while i < numberOfClients + 1 do
          
          local ip, port = clients[i]
          if ip == msg_or_ip and port == port_or_nil then
            
            found = true
            
          end
          
          i = i + 1
          
        end
        
        if found == false then
          
            clients[numberOfClients + 1] = msg_or_ip, port_or_nil
          
          --clients[numberOfClients + 1].ip = msg_or_ip
          --clients[numberOfClients + 1].port = port_or_nil
          
        end
      
    end
    

    
    if data ~= nil then
      print("Recieved: " .. data)
      return data
     end
     
    
    
		--print("Ready to recieve...")
		--local running = true
		--while running do
		--	data, msg_or_ip, port_or_nil = udp:receivefrom()
		--	if data ~= nil then
		--		print("Recieved: " .. data)
		--		running = false
		--		print("Server paused ")
     --   return data
				--timer.performWithDelay( 3000, recieveUdpMsg )
		--	elseif msg_or_ip ~= 'timeout' then
		--		error("Unknown network error: "..tostring(msg))
		--	end
			--socket.sleep(0.01)
		--end
	end

function server.sendUdpMsg()
  
   if counter == 0 then
      dg = "X: "..tostring(ball.x)
      counter = 1
    else
      dg = "Y: "..tostring(ball.y)
      counter = 0
    end
  local ip, port = clients[1]
  udp:sendto(dg, ip, port)
  --udp:sendto(dg, "localhost", 12345)
  
end