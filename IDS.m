% Iterative Deeping Search algorithm for solving an 8-puzzle.
% Attempts to find the goal state [123456789].
% --- arguments ---
% starting_node : the initial puzzle state from which the goal state should
% be found
function IDS(starting_node)
tic %start timer
goal = int8(1:9);
starting_node.depth = 0;
setGlobalStartStack(starting_node);

for i = 1:29% depth shouldn't go past 30 due to generation of starting states
    limit = i;
    successful = DLS(goal, limit);
    if(successful)
        clear global start_stack;
        toc %display elapsed time
        return
    end
end
end
% --- arguments ---
% starting_node : the initial puzzle state that will be placed at the root
% of the tree
% goal state : the goal state that should be reached 
% depth_limit : the maximum depth to be reached 
function success = DLS(goal_state, depth_limit)
visited = zeros(1,9,'int8');
stack = getGlobalStartStack;
stack_index = length(stack);
unexpanded_nodes = stack;
unexpanded_nodes_index = 1;
success = 0;

while stack_index > 0
    % pop first element off from stack
    node = stack(stack_index);
    stack_index = stack_index - 1;
    
    %set node as visited
    visited(length(visited) + 1, :) = node.state;
    
    if(isequal(node.state,goal_state))
        reconstruct_path(node);
        success = 1;
        %sprintf('Goal found at depth %d', node.depth)
        return
     elseif(node.depth <= depth_limit)  %limit the depth DFS can reach here
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
    else
        unexpanded_nodes(unexpanded_nodes_index) = node;
        unexpanded_nodes_index = unexpanded_nodes_index + 1;
    end
end
setGlobalStartStack(unexpanded_nodes);
end

% --- Global Variable ---
% start_stack : stores the nodes of the tree that weren't expanded in the 
% last interation of the IDS algorithm.
function r  = getGlobalStartStack
global start_stack
r = start_stack;
end

function setGlobalStartStack(val)
global start_stack
start_stack = val;
end
