# C-Language, ASM and Optimization
## Problem for Project 3:

1. Write a C program that outputs a hex dump of the attached file in the format below in Figure 1. The left most column is the number of bytes into the file (i.e. the address) in hex. The middle are 16 consecutive bytes in hex separated by spaces, and the left most column is the ASCII representation of the bytes with ‘.’ replacing any non-ASCII bytes.

2. Compile it with optimization levels -O0, -O1 and -O3 and then compare and discuss the assembly code/data generated (using ‘-S’) by the different optimization levels. 

## How to Build and Execute

1. **Compile the following:**

   ```bash 
   gcc hexdump.c -o hexdump
   ```

2. **Now execute the program by passing the file as a command line**

   ```bash
   ./hexdump binary.out
