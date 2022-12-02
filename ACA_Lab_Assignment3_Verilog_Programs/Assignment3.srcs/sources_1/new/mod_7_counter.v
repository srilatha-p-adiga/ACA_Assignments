`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.12.2022 10:30:19
// Design Name: 
// Module Name: mod_7_counter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mod_7_counter(clk, reset, dout);
    input   clk;  
    input   reset; 
    output reg [2:0] dout;  
 
 initial dout = 0;
 always @ (posedge (clk))
 begin
 if (reset)
   dout <= 0;
 else if (dout<6)
    dout <= dout + 1;
  else
    dout <= 0;
end
endmodule