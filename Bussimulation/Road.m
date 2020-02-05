classdef Road
   properties (SetAccess = protected)
      start % (x,y) vector for the start
      finish % (x,y) vector end
      length % length of road
      velocity % (x,y) vector for max velocity
   end
   methods
        function obj = Road(start, finish, velocity)
            if nargin > 0
                obj.start = start;
                obj.finish = finish;
                obj.velocity = velocity;
                obj.length = 0;
            end
        end
    end
end