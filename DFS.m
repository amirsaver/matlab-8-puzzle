% Depth First Search algorithm for solving an 8-puzzle.
% Attempts to find the goal state [123456789].
% -- arguments -- 
% start_node: the initial state of the 8-puzzle.
%
% tree = {}
% path_cost = 0
% function DFS(G, v):
function DFS(start_node)
%     v.visited = true
%     tree.add(v)
%     path_cost++
%     for each neighbor v to w in G.adjacentEdges(v) do
%         if !v.visited
%             if v = goal
%                reconstruct_path(tree, v)
%                exit
%             else
%                 DFS(G,w)
    
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
