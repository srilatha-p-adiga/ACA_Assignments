`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.11.2022 07:29:45
// Design Name: 
// Module Name: tb_decoder_three_to_eight
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


module tb_decoder_three_to_eight();
  reg [2:0] D_in;
  wire [7:0] D_out;

decoder_3_to_8 d1(
        .Data_in(D_in), 
        .Data_out(D_out)
    );
initial
begin
#10 D_in = 3'b000;     
#10 D_in = 3'b001;     
#10 D_in = 3'b010;     
#10 D_in = 3'b011;     
#10 D_in = 3'b100;     
#10 D_in = 3'b101;     
#10 D_in = 3'b110;     
#10 D_in = 3'b111; 
#10 $finish;    
end
endmodule