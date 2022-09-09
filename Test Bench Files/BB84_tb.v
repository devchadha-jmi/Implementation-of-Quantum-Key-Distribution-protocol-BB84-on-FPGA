// Code your testbench here
// or browse Examples
module BB84_tb();
  reg a;
  reg b;
  reg b1;
  reg spy;
  reg [1:0] qubit;
  wire a1;
  wire error;
  
  top_module instance1(.a(a),
               		   .b(b),
                       .b1(b1),
                 	   .a1(a1),
                       .spy(spy),
                       .error(error),
                       .qubit(qubit));
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
  
  initial
    begin
      a  <= 1;
      b  <= 0;
      b1 <= 1;
      spy = 0;
      #20;
      a  <= 1;
      b  <= 1;
      b1 <= 0;
      #20; 
      a  <= 0;
      b  <= 0;
      b1 <= 1;
      #20;
      a  <= 0;
      b  <= 1;
      b1 <= 0;
      #20;
      a  <= 1;
      b  <= 0;
      b1 <= 0;
      #20;
      a  <= 1;
      b  <= 1;
      b1 <= 0;
      #20;
    $finish;
    end
endmodules