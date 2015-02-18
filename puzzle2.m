classdef puzzle2
    %PUZZLE is an object that represents a node in a tree of possible
    %states for an 8-puzzle.
    %   PUZZLE has the properties state and parent. State is the current
    %   arrangement of the tiles for the 8-puzzle. Parent is the current
    %   node's predescessor. 
    
    properties
        state
        parent
        depth
        g_score
        f_score
    end
    
    methods
        function obj = puzzle(array)
            if(nargin > 0)
                obj.state = array;
                obj.depth = 0;
            end
        end
        
        function obj = moveBlankUp(obj)
            for i = 1:length(obj.state),
                if(obj.state(i) == 9)
                    blankPosition = i;
                    break;
                end
            end
            
            if(blankPosition - 3 >= 1)
                temp = obj.state(blankPosition - 3);
                obj.state(blankPosition) = temp;
                obj.state(blankPosition - 3) = 9;
            end
        end
        
        function obj = moveBlankDown(obj)
            for i = 1:length(obj.state),
                if(obj.state(i) == 9)
                    blankPosition = i;
                    break;
                end
            end
            
            if(blankPosition + 3 <= 9)
                temp = obj.state(blankPosition + 3);
                obj.state(blankPosition) = temp;
                obj.state(blankPosition + 3) = 9;
            end
        end
        
        function obj = moveBlankLeft(obj)
            for i = 1:length(obj.state),
                if(obj.state(i) == 9)
                    blankPosition = i;
                    break;
                end
            end
            
            if(blankPosition ~= 1 && blankPosition ~= 4 && blankPosition ~= 7)
                temp = obj.state(blankPosition - 1);
                obj.state(blankPosition) = temp;
                obj.state(blankPosition - 1) = 9;
            end
        end

        function obj = moveBlankRight(obj)
            for i = 1:length(obj.state),
                if(obj.state(i) == 9)
                    blankPosition = i;
                    break;
                end
            end
            
            if(blankPosition ~= 3 && blankPosition ~= 6 && blankPosition ~= 9)
                temp = obj.state(blankPosition + 1);
                obj.state(blankPosition) = temp;
                obj.state(blankPosition + 1) = 9;
            end
        end
    end % end methods
    
end

