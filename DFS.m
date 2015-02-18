% Depth First Search algorithm for solving an 8-puzzle.
% Attempts to find the goal state [123456789].
% Here we make the assumption that any goal state can be reached before the
% 81st depth, so we stop looking down a branch past the 81st level. 
% --- arguments ---
% starting_node : the initial puzzle state from which the goal state
% should be achieved. 
function DFS(starting_node)
tic % start timer
goal = int8(1:9);
stack = starting_node;
stack_index = 1;
starting_node.depth = 0;

visited = zeros(100,9,'int8');

while stack_index > 0
    % pop off the first node from the stack
    node = stack(stack_index);
    stack_index = stack_index - 1;
    
    %set node as visited
    visited(length(visited) + 1, :) = node.state;
    
    %check if current node is goal state
    if(isequal(node.state, goal))
        reconstruct_path(node);
        %sprintf('Goal found at depth %d', node.depth)
        toc %display elapsed time
        return
    elseif(node.depth <= 80)  %limit the depth DFS can reach here
        %for each possible move push onto stack if it's state has not been
        %visited
        nodeMoveLeft = moveBlankLeft(node);
        if(~ismember(nodeMoveLeft.state, visited, 'rows'))
            nodeMoveLeft.parent = node;
            nodeMoveLeft.depth = node.depth + 1;
            stack_index = stack_index + 1;
            stack(stack_index) = nodeMoveLeft;
        end

        nodeMoveRight = moveBlankRight(node);
        if(~ismember(nodeMoveRight.state, visited, 'rows'))
            nodeMoveRight.parent = node;
            nodeMoveRight.depth = node.depth + 1;
            stack_index = stack_index + 1;
            stack(stack_index) = nodeMoveRight;
        end

        nodeMoveDown = moveBlankDown(node);
        if(~ismember(nodeMoveDown.state, visited, 'rows'))
            nodeMoveDown.parent = node;
            nodeMoveDown.depth = node.depth + 1;
            stack_index = stack_index + 1;
            stack(stack_index) = nodeMoveDown;
        end

        nodeMoveUp = moveBlankUp(node);
        if(~ismember(nodeMoveUp.state, visited, 'rows'))
            nodeMoveUp.parent = node;            
            nodeMoveUp.depth = node.depth + 1;
            stack_index = stack_index + 1;
            stack(stack_index) = nodeMoveUp;
        end
    end
end
end