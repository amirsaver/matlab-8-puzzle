% Breadth First Search algorithm for solving an 8-puzzle.
% Attempts to find the goal state [123456789].
% -- arguments -- 
% start_node: the initial state of the 8-puzzle.
function BFS(start_node)
tic %start timer
goal = [1, 2, 3, 4, 5, 6, 7, 8, 9];
% starting node is the initial state, it has no parent since it is the
% 'root' and has been visitied1
start_node.parent = [];
    
% queue q = x
queue(1,1) = start_node;
visited = [];
% while !q.empty? 
visited_index = 1;
while ~isempty(queue)
    % pop first element off from queue
    node = queue(1,:);
    queue = queue(2:end,:);
    
    % add state to visited
    visited(visited_index, :) = node.state;
    visited_index = visited_index + 1;
    
    if node.state == goal
        disp(reconstruct_path(node))
        toc % display time elapsed
        return
    else
        toc %%%% DEBUG %%%%
        %for each possible move add to the queue if it's state has not been
        %visited
        nodeMoveLeft = moveBlankLeft(node);
        if(~ismember(nodeMoveLeft.state, visited))
            nodeMoveLeft.parent = node;
            queue(length(queue) + 1) = nodeMoveLeft;
        end
        
        nodeMoveRight = moveBlankRight(node);
        if(~ismember(nodeMoveRight.state, visited))
            nodeMoveRight.parent = node;
            queue(length(queue) + 1) = nodeMoveRight;
        end
        
        nodeMoveDown = moveBlankDown(node);
        if(~ismember(nodeMoveDown.state, visited))
            nodeMoveDown.parent = node;
            queue(length(queue) + 1) = nodeMoveDown;
        end
        
        nodeMoveUp = moveBlankUp(node);
        if(~ismember(nodeMoveUp.state, visited))
            nodeMoveUp.parent = node;
            queue(length(queue) + 1) = nodeMoveUp;
        end
        toc %%%% DEBUG %%%%
        disp(queue) %%%% DEBUG %%%%
    end % if end
end % while end
end % function ed

                      
                     