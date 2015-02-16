% tree = {}
% path_cost = 0
% function DFS(G, v):
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