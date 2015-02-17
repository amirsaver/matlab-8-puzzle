% Depth First Search algorithm for solving an 8-puzzle.
% Attempts to find the goal state [123456789].
function DFS(start_node)

% procedure DFS-iterative(G,v):
%     let S be a stack
%     S.push(v)
%     while S is not empty
%           v ← S.pop() 
%           if v is not labeled as discovered:
%               label v as discovered
%               for all edges from v to w in G.adjacentEdges(v) do
%                   S.push(w)

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
end
