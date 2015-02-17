classdef puzzle
    %PUZZLE Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        state
        parent
    end
    
    methods
        function obj = puzzle(array)
            if(nargin > 0)
                obj.state = array;
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

