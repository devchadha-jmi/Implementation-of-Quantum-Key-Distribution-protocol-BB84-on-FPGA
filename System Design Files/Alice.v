module Alice(input a,
             input b,
             output [1:0]qubit);
  wire [1:0]eigen_value = {a,b};
  //There can be 4 possible eigen value
  //Eigen Value = 2'b00 => Zero 
  //Eigen Value = 2'b01 => Plus 
  //Eigen Value = 2'b10 => One 
  //Eigen Value = 2'b11 => Minus 
  
  //These Eigen Values are equivalent of the Quantum State of the Qubit
 assign qubit = eigen_value;
endmodule