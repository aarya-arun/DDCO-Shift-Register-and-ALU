# DDCO-Shift-Register-and-ALU

This repository contains code of our Digital Design and Computer Organisation based project of building a Shift Register and ALU in verilog.

## PROBLEM DESCRIPTION:
 
### Abstract :
 
To implement the following operations, given an ALU and Register module:
1.  	Left shift Operation
2.  	Right shift Operation
3.  	Arithmetic Right Shift

 

### Exploratory Analysis:
 
We have implemented the ALU, Registers and PC in the lab. With this knowledge, we tried to implement the given operations in a similar way with some appropriate changes.
For example, we had to increase the op code from 2 bits to 3 bits for 8 functions.
Then, we instantiated the required modules for the operations lsl, rsl, ars, slt.

For each operation these modules were instantiated:
 
#### 1. Left Shift Logical
Firstly, we had to make a 16:1 MUX with an input of 16 bit and 4 bit select line called shamt, an output of 16 bit.
For the MUX output y[0] , all inputs except the LSB bit or i[0] (0000 case) will be connected to ground.
For the MUX output y[1], all inputs except the last two LSB bits or i[0] and i[1] will be connected to ground.
Similarly, we have implemented for all the MUX’s.
 
#### 2.Right shift Logical:
 
Firstly, we had to make a 16:1 MUX with an input of 16 bit and 4 bit select line called shamt, an output of 16 bit.
For MUX output y[0] , all inputs except MSB bit will be passed as inputs to MUX. For the MSB, we will be connected to ground since this is right shift.
For MUX output y[1], all inputs except first two MSB bits will be passed as inputs to MUX. The other two will be connected to ground.
 In the same fashion, for all the 16 MUX’s is done.
 
#### 3.Arithmetic Right Shift:
 
Firstly, we had to make a 16:1 MUX with an input of 16 bit and 4 bit select line called shamt, an output of 16 bit.
For MUX output y[0], all 16 bits will be passed as inputs to the MUX.
For MUX output y[1], all 16 bits except the MSB bit will be passed as inputs to MUX.
Similarly, it is implemented for all MUX’s.
 
## Built in:

* Verilog
