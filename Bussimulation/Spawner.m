classdef Spawner
   properties
      frequency % The rate of spawning
      object    % The type of object to be spawned
   end
   methods
        function obj = Spawner(frequency, object)
            if nargin > 0
                obj.frequency = frequency;
                obj.object = object;
            end     
        end
    end
end