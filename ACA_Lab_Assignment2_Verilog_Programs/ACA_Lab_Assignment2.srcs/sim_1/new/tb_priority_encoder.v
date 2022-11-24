`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.11.2022 18:17:16
// Design Name: 
// Module Name: tb_priority_encoder
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


module tb_priority_encoder();
reg [3:0] y;
wire [1:0]a;

priority_encode pe(
   .Y(y), 
   .A(a)
);
initial
begin
    y=4'b0000;
#10 y=4'b0001;
#10 y=4'b0011;
#10 y=4'b0111;
#10 y=4'b1111;
#10 y=4'b0001;
#10 y=4'b0010;
#10 y=4'b0100;
#10 y=4'b1000;
#10 $finish;
end
endmodule
