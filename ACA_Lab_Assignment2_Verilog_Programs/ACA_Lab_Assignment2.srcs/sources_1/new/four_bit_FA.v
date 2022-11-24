`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.11.2022 09:35:20
// Design Name: 
// Module Name: four_bit_FA
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


module four_bit_FA(Sum,Cout,a_fb, b_fb, cin_fb);
output [3:0]Sum;
output Cout;
input [3:0] a_fb,b_fb;
input cin_fb;
wire c1,c2,c3;
Full_Adder FA0(Sum[0],c1,a_fb[0],b_fb[0],cin_fb);
Full_Adder FA1(Sum[1],c2,a_fb[1],b_fb[1],c1);
Full_Adder FA2(Sum[2],c3,a_fb[2],b_fb[2],c2);
Full_Adder FA3(Sum[3],Cout,a_fb[3],b_fb[3],c3);
endmodule