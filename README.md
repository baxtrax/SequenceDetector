# SequenceDetector

A verilog example of going from a FSM to verilog. In this case the example shows a sequence detector that detects the sequence of binary input of 1001.

## Details
### The FSM
The FSM that the code is modeled after is shown below:

![alt text](https://github.com/baxtrax/SequenceDetector/blob/main/Images/FSM%20Diagram.png?raw=true)

The FSM, as stated before, detects the sequence of 1001. It will then output a 1 when the case is met.

### Testbench and verification
There is also a test bench also included to help testing and verifying the verilog code. The test bench will show the program working. If you do not feel like simulating it yourself, I am going to also include the output of a simulation show you can verify the programs success. This is shown below.

![alt text](https://github.com/baxtrax/SequenceDetector/blob/main/Images/Simulated.png?raw=true)

## Running it
You can use these files with any type of simulation software. This project I personally used Quartus Prime and its simulation package that comes with named ModelSim(Now updated to QuestaSim) but any software that can run and simulate verilog code should do just fine as well.
