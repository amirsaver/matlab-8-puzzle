% Puzzle Creation generates 4 puzzles for each depth starting at depth 5
% and continuing down to depth 30 for a total of 100 puzzles.

count = 0
for n = 5:29
    for m = 1:4
        pgenerator(n)
        count = count + 1
    end
end