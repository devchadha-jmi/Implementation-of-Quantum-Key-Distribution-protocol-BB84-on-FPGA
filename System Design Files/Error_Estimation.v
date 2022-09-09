module Error_Estimation(input a1,
                        input a,
                        output error);
  assign error = a ~^ a1;
endmodule