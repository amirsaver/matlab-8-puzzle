% Reconstruct the path from the given node to the root of the tree
% -- arguments --
% node: the current node in the tree, must be of class puzzle
function reconstruct_path = reconstruct_path(node)
% total_path = current
path = zeros(30); %preallocate a maximum of 30 zeros for possible maximum 30 depth puzzle 
% while current in tree
path(1) = node;
i = 2;
while ~isempty(node.parent)
% current = current.parent
    node = node.parent;
% total_path.append(current)
    path(i) = node;
    i = i + 1;
end
%print total path
path = path(path ~= 0); %remove all zeros left over from preallocation
disp(fliplr(path)) %flip to get correct descent down tree from initial to goal state
end