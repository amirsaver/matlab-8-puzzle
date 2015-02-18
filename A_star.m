function A_star(starting_node)
    goal_state = (1:9)
    closed(1) = puzzle; closed(1) = []; % initialize empty
    open(1) = puzzle; open(1) = []; % initialize empty

    starting_node.g_score = 0;
    starting_node.f_score = starting_node.g_score + heuristic(starting_node.state);
    open(1) = starting_node;

    while length(open) > 0 % while openset is not empty
        current = open(1); % current = node in open with lowest f_score
        current_index = 1;
    
        for i=1:length(open)
            if open(i).f_score < current.f_score
                current = open(i);
                current_index = i;
            end
        end
        
        if isequal(current.state, goal_state)
            reconstruct_path(current);
            return
        end
        
        open(current_index) = []; % remove current from openset
        closed(length(closed) + 1) = current; % add current to closedset
        
        
        
        
        
        
        
        
        
        neighbors(1) = puzzle();
        neighbors(1,:) = []; % initialize empty
        
        % move blank left
        validNeighbor = true;
        nodeMoveLeft = moveBlankLeft(current);
        for i=1:length(closed)
            if isequal(closed(i).state, nodeMoveLeft.state)
                validNeighbor = false;
                break;
            end
        end
        if validNeighbor == true
            nodeMoveLeft.parent = current;
            nodeMoveLeft.g_score = current.g_score + 1;
            neighbors(length(neighbors) + 1) = nodeMoveLeft;
        end
        
        % move blank right
        validNeighbor = true;
        nodeMoveRight = moveBlankRight(current);
        for i=1:length(closed)
            if isequal(closed(i).state, nodeMoveRight.state)
                validNeighbor = false;
                break;
            end
        end
        if validNeighbor == true
            nodeMoveRight.parent = current;
            nodeMoveRight.g_score = current.g_score + 1;
            neighbors(length(neighbors) + 1) = nodeMoveRight;
        end
        
        % move blank down
        validNeighbor = true;
        nodeMoveDown = moveBlankDown(current);
        for i=1:length(closed)
            if isequal(closed(i).state, nodeMoveDown.state)
                validNeighbor = false;
                break;
            end
        end
        if validNeighbor == true
            nodeMoveDown.parent = current;
            nodeMoveDown.g_score = current.g_score + 1;
            neighbors(length(neighbors) + 1) = nodeMoveDown;
        end
        
        % move blank up
        validNeighbor = true;
        nodeMoveUp = moveBlankUp(current);
        for i=1:length(closed)
            if isequal(closed(i).state, nodeMoveUp.state)
                validNeighbor = false;
                break;
            end
        end
        if validNeighbor == true
            nodeMoveUp.parent = current;
            nodeMoveUp.g_score = current.g_score + 1;
            neighbors(length(neighbors) + 1) = nodeMoveUp;
        end
        
        % for each neighbor
        for i=1:length(neighbors)
            inOpen = false;
            for j=1:length(open)
                if isequal(open(j), neighbors(i))
                    inOpen = true;
                end
            end
            
            if inOpen == false
                neighbors(i).f_score = neighbors(i).g_score + heuristic(neighbors(i).state);
                open(length(open) + 1) = neighbors(i);
            end
        end        

    end % while
end % function