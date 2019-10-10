/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

/*
   Parameters:
     WIDTH = 27
     OUTWIDTH = 3
*/
module counter_2 (
    input clk,
    input rst,
    output reg [2:0] out
  );
  
  localparam WIDTH = 5'h1b;
  localparam OUTWIDTH = 2'h3;
  
  
  reg [28:0] M_flipflop_d, M_flipflop_q = 1'h0;
  
  always @* begin
    M_flipflop_d = M_flipflop_q;
    
    out = M_flipflop_q[26+2-:3];
    M_flipflop_d = M_flipflop_q + 1'h1;
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_flipflop_q <= 1'h0;
    end else begin
      M_flipflop_q <= M_flipflop_d;
    end
  end
  
endmodule