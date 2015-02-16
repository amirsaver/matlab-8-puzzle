% path_cost = 0
% tree = {}
% function DLS(node, goal, depth):
%     if depth >= 0
%         if node = goal
%             return node
%     else
%         return null
%     for each child in expand(node)
%         path_cost++
%         tree.add(child)
%         node = DLS(child, goal, depth-1)
%         if node != null return node
%
% function IDDFS(root, goal)
%     node = null
%     for i = 1, i< 81 i++
%         node = DLS(root, goal, limit = i
%         if node != null
%                reconstruct_path(tree, node)
%                return