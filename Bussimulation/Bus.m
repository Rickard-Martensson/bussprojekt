classdef Bus < handle
   properties
      location % (x,y) vector
      road     % index of current road
      velocity % (x,y) vector for velocity
      acceleration % the bus acceleration per tick
      breakspeed % the bus breakspeed per tick
      busLength % the length of the bus from the front
   end
   methods
        function obj = Bus(location, road, velocity, acceleration, breakspeed, bussLength)
            obj.location = location;
            obj.road = road;
            obj.velocity = velocity;
            obj.acceleration = acceleration;
            obj.breakspeed = breakspeed;
            obj.busLength = bussLength;
        end
        function changeVelocity(obj, maxVelocity)
            if maxVelocity > obj.velocity
                obj.velocity = obj.velocity - obj.breakspeed;
            else 
                obj.velocity = obj.velocity + obj.acceleration;
            end
        end
    end
end