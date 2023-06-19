# GameOfLifebC
Conway's Game of Life implemented in bC

# Usage
To run the code, use `make run` then enter `a 0` then `o 0` (letter o followed by 0).

These two commands remove the limit on instructions executed and characters output respectively. The program ends very quickly without these two commands.

Then, enter `go`, from there to quickly get into the simulation, enter `0` and then when further prompted for input the simulation is asking you how many ticks you would like to run, I often like to just enter 1 each time to watch the simulation go.


# Notes
The build system is incredibly wacky. Because bC doesn't currently output any files, we have to pipe the stdout from it into a file, then remove a bunch of garbage it spits out so that tmbc doesn't error.

It appears that string constants are not null-terminated by default, so every print statement has a `\0` at the end of the string to avoid printing garbage.

Also, using a `\n` newline seems to cause a segfault in tmbc on program load.
