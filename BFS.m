% Breadth First Search algorithm for solving an 8-puzzle.
% Attempts to find the goal state [123456789].
% -- arguments -- 
% start_node: the initial state of the 8-puzzle.
function BFS(start_node)
tic %start timer
goal = int8(1:9);
% starting node is the initial state, it has no parent since it is the
% 'root' and has been visitied
start_node.parent = [];
    
queue = start_node;
visited = zeros(100,9,int8);%preallocate a 100x9 matrix of ints
visited_index = 1;
while ~isempty(queue)
    % pop first element off from queue
    node = queue(1);
    queue = queue(2:end);
    
    % add state to visited
    visited(visited_index, :) = node.state;
    visited_index = visited_index + 1;
    
    if(isequal(node.state,goal))
        reconstruct_path(node);
        toc % display time elapsed
        return
    else
        %for each possible move add to the queue if it's state has not been
        %visited
        nodeMoveLeft = moveBlankLeft(node);
        if(~ismember(nodeMoveLeft.state, visited, 'rows'))
            nodeMoveLeft.parent = node;
            queue(length(queue) + 1) = nodeMoveLeft;
        end
        
        nodeMoveRight = moveBlankRight(node);
        if(~ismember(nodeMoveRight.state, visited, 'rows'))
            nodeMoveRight.parent = node;
            queue(length(queue) + 1) = nodeMoveRight;
        end
        
        nodeMoveDown = moveBlankDown(node);
        if(~ismember(nodeMoveDown.state, visited, 'rows'))
            nodeMoveDown.parent = node;
            queue(length(queue) + 1) = nodeMoveDown;
        end
        
        nodeMoveUp = moveBlankUp(node);
        if(~ismember(nodeMoveUp.state, visited, 'rows'))
            nodeMoveUp.parent = node;
            queue(length(queue) + 1) = nodeMoveUp;
        end
    end % if end
end % while end
return 
end % function end

                      
                     