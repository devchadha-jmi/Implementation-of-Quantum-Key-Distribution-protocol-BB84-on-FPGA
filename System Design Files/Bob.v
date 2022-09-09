module Bob(input [1:0]qubit,
           input b1,
           input spy,
           output reg a1);

  parameter zero = 2'b00;
  parameter plus = 2'b01;
  parameter one  = 2'b10;
  parameter minus= 2'b11;
  
  always @ (*) 
    begin
      case (qubit)
          zero: begin
            if( !b1)
              a1 = 1'b0;
            else
              a1 = 1'bx;
          end
          plus: begin
            if( b1)
              a1 = 1'b0;
            else
              a1 = 1'bx;
          end
          one: begin
            if( !b1 )
              a1 = 1'b1;
            else
              a1 = 1'bx;
          end
          minus: begin
            if( b1)
              a1 = 1'b1;
            else
              a1 = 1'bx;
          end
          default: a1 = 1'b1;
          endcase
        end
endmodule