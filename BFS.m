% function BFS(G, x):
%   x.visited = true
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
                      
                     