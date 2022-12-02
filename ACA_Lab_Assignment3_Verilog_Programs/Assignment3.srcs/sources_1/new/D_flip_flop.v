`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.11.2022 07:16:25
// Design Name: 
// Module Name: D_flip_flop
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


module D_flip_flop(d,clk,reset,q, q_bar);
input d;              // Data input 
input clk;             // clock input 
input reset;           // reset 
output reg q, q_bar;   //output Q 
always @(posedge clk or posedge reset) 
begin
 if(reset==1'b1)
  q <= 1'b0; 
 else 
  q <= d; 
  q_bar=!d;
end 
endmodule
