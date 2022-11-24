`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.11.2022 15:48:12
// Design Name: 
// Module Name: Priority_Encoder
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


module Priority_Encoder(Y,A)
input wire [3:0]Y;
output reg [1:0]A;

always@(Y)
begin

casex(Y)

4'b0001: A = 2'b00;
4'b001x: A = 2'b01;
4'b01xx: A = 2'b10;
4'b1xxx: A = 2'b11;
default:$display("Error!");
endcase
end
endmodule
