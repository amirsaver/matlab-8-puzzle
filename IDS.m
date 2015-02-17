% path_cost = 0
% tree = {}

function node = DLS(starting_node, goal_state, depth)
%     if depth >= 0
if depth >= 0
    if node == goal_state
        return
    end
else
    return 
end
%     for each child in expand(node)
%         path_cost++
%         tree.add(child)
%         node = DLS(child, goal, depth-1)
node = DLS(child, goal_state, depth - 1);
end

function IDS(starting_node)
goal = 1:9;
for i = 1:30 % depth shouldn't go past 30 due to generation of starting states
    limit = i;
    return_node = DLS(starting_node, limit);
    if return_node.state == goal
        reconstruct_path(return_node)
        return
    end
end
end