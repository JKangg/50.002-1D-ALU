/*
   This file was generated automatically by Alchitry Labs version 1.2.0.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

/*
   Parameters:
     WIDTH = DIGIT_BITS
*/
module decoder_8 (
    input [1:0] in,
    output reg [3:0] out
  );
  
  localparam WIDTH = 2'h2;
  
  
  always @* begin
    out = 1'h0;
    out[(in)*1+0-:1] = 1'h1;
  end
endmodule
