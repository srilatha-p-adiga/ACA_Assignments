`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.11.2022 13:42:29
// Design Name: 
// Module Name: sixteen_to_one_mux
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


module sixteen_to_one_mux(F,D,S);
output F;
input [15:0]D;
input [3:0]S;
wire [3:0]Y;

four_to_one_mux m0(Y[0],D[0],D[1], D[2], D[3], S[1],S[0]);
four_to_one_mux m1(Y[1],D[4],D[5], D[6], D[7], S[1],S[0]);
four_to_one_mux m2(Y[2],D[8],D[9], D[10], D[11], S[1],S[0]);
four_to_one_mux m3(Y[3],D[12],D[13],D[14], D[15], S[1],S[0]);
four_to_one_mux m4(F,Y[0],Y[1],Y[2],Y[3], S[3],S[2]);

endmodule