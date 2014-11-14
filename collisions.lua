collisions = {}

function collisions.test(objectOne, objectTwo)
  
  return objectOne.x < objectTwo.x + objectTwo.img:getWidth() and
         objectTwo.x < objectOne.x + objectOne.img:getWidth() and
         objectOne.y < objectTwo.y + objectTwo.img:getHeight() and
         objectTwo.y < objectOne.y + objectOne.img:getHeight()
  
end
