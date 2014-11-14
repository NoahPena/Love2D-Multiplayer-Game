     --socket test SERVER
	
  server = {}
  
local socket = require "socket"
  
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
  
  udp:sendto(dg, "localhost", 12345)
  
end