`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.11.2022 14:25:02
// Design Name: 
// Module Name: tb_sixteen_to_one_mux
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


module tb_sixteen_to_one_mux();
reg [15:0]d;
reg [3:0]s;
wire f;

sixteen_to_one_mux m1(
   .D(d), 
   .S(s),
   .F(f)
);

initial
begin
#0  d=16'b0000000000000001; s=4'b0000; 
#10 d=16'b0000000000000010; s=4'b0001;
#10 d=16'b0000000000000100; s=4'b0010;
#10 d=16'b0000000000001000; s=4'b0011; 
#10 d=16'b0000000000010000; s=4'b0100;
#10 d=16'b1000000000000000; s=4'b1111;
#10 $finish;
end
endmodule
