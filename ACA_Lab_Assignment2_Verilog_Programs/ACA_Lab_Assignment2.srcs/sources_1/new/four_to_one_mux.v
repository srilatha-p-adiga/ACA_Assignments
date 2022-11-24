`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.11.2022 10:15:25
// Design Name: 
// Module Name: four_to_one_mux
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


module four_to_one_mux(y,a,b,c,d,s1,s0);

input wire a, b, c, d;
input wire s0, s1;
output reg y;

always @ (a or b or c or d or s0, s1)
begin
   if( s1 == 0 && s0==0)
      y = a;

  if( s1 == 0 && s0==1)
      y = b;
  
   if( s1 == 1 && s0==0)
      y = c;
    
    if( s1 == 1 && s0==1)
      y = d;
end
endmodule


