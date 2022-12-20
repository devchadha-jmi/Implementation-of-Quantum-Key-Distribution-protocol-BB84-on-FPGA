
# Implementation-of-Quantum-Key-Distribution-protocol-BB84-on-FPGA
This project presents the implementation of Quantum Key Distribution (QKD) Protocol:BB84 on FPGA. Quantum Communication Methodology has been designed using cryptographic protocol along with parallel processing power of FPGAs. 




## Module Details
The multiple module hierarchy has been used to ease the realization of Algorithm. 


#### Alice
The first sub-module works on the basis selection and qubits generation at the transmitter end.
#### Bob
The next submodule deals with basis selection and comparison of received qubits at the receiver end.
#### Error_Estimation
The third submodule gives us the estimate of deviation in received message at the receiver and decides whether the transmission channel has been hijacked or not.

The major advantage of using FPGAs is the high processing speed additionally Verilog helps us in easy development of the algorithm.

[EDA Playground Link](https://www.edaplayground.com/x/7sha)

Further details and elaborations are in the report attached.
