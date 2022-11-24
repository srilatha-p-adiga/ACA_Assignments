`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.11.2022 09:31:43
// Design Name: 
// Module Name: tb_four_bit_fa
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




module tb_four_bit_fa();
reg [3:0] ta,tb; reg tcin; //initialise test vector
wire [3:0] tsum;
wire tcout;
four_bit_FA fa0(
   .Sum(tsum), 
   .Cout(tcout),
   .a_fb(ta), 
   .b_fb(tb), 
   .cin_fb(tcin));

initial
begin
#0 ta=4'b0000; tb=4'b0000; tcin=1'b0;
#10 ta=4'b0100; tb=4'b0011; tcin=1'b1;
#10 ta=4'b0011; tb=4'b0111; tcin=1'b1;
#10 ta=4'b1000; tb=4'b0100; tcin=1'b0;
#10 ta=4'b0101; tb=4'b0101; tcin=1'b1;
#10 ta=4'b0110; tb=4'b0111; tcin=1'b1;
#10 ta=4'b1001; tb=4'b0000; tcin=1'b1;
end
endmodule