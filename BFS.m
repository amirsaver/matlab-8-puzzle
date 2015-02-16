% Breadth First Search algorithm for solving an 8-puzzle.
% Attempts to find the goal state [123456789].
% -- arguments -- 
% start_node: the initial state of the 8-puzzle.
% graph:
function BFS = BFS(graph, start_node)
    start_node.visited = true;
    start_node.parent = null;
%   queue q = x
%   tree T = x
%   current_vertex = x
%   while !q.empty? 
%       v = q.pop
%         v.visited = true
%         for each neighbor in w G.adjacentEdges(v) di
%             if !w.visited
%                 w.visited = true
%                 q.push(w)
%                 T.add((v,w))
%                 current_vertex = w
%                 if current_vertex = goal
%                       reconstruct_path(T, current_vertex)
%                       return
end
                      
                     