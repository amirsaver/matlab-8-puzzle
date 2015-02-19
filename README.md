# Artificial Intelligence 8-puzzle MATLAB project

## Authors: 
Olivia Whitman (.68) <br>
Jae Lee (.4810)

## Randomly generated states:
The 100 states were generated using the pgenerator function which accepts an integer value.
The value passed to the function indicates the number of random moves to make (avoiding previously visited states) starting with an initial state that is the goal.
Due to this random movement it is not guarenteed that the returned state is the same depth as the number of moves taken to get there.
Since we begin with the goal state and randomly move the blank space around it is safe to assume that any generated state exists in the set of solvable initial states for the 8-puzzle.


## Running the program:
--- Running algorithms individually ---
To run an algorithm individually, begin by taking an initial state (for example, ``` 123465789 ```) and creating an initial puzzle state. 
You can do this using the puzzle class, ```initial_puzzle = puzzle(123465789)```. Then feed this puzzle object to your desired algorithm (ex: ```BFS(initial_puzzle)```).
This method will print out the running time and path to goal state from the initial state.
<br>
--- Running all algorithms for 100 generated states ---
To run all 100 generated states for every algorithm and generate the histogram plots, run the <<main program>>.

