module top_module(input a,
                  input b,
                  input b1,
                  input spy,
                  output reg a1,
                  output error,
                  output [1:0]qubit);
  
  Alice            Instance1(.a(a),
                             .b(b),
                             .qubit(qubit));
  Bob              Instance2(.b1(b1),
                             .spy(spy),
                             .a1(a1),
                             .qubit(qubit));
  Error_Estimation Instance3(.a(a),
                             .a1(a1),
                             .error(error));
  
endmodule