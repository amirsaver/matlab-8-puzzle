
function A_star(starting_node)
goal = [1,2,3,4,5,6,7,8,9]
% closed = {}
% open = {}
% tree = {}
% g_score[start] = 0
% f_score = g_score[start] + heuristic(start, goal)
% while !open.empty?
%     current = node in open with lowest f_score
%     if current = goal
%         reconstruct_path(tree, current)
%         return
%     open.remove(current)
%     closed.add(current)
%     foreach neighbor in neighbor_nodes(current)
%         if neighbor is in closed
%             continue
%         tentative_g_score = g_score[current] + dist-between(current, neighbor)
%         if neighbor not in open or tentative_g_score < g_score[neighbor]
%             tree[neighbor] = current
%             g_score[neighbor] = tentative_g_score
%             f_score[neighbor] = g_score[neighbor] + heuristic(neighbor, goal)
% return failure
end

function dist = heuristic(node, goal)
%     return the manhattan distance
end
       