`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.11.2022 16:47:46
// Design Name: 
// Module Name: mux_using_decoder
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
module decoder2to4(din,dout);
input [1:0] din;
output reg [3:0] dout;
always @ (din)
begin
case(din)
   2'b00:dout<=4'b0001;
   2'b01:dout<=4'b0010;
   2'b10:dout<=4'b0100;
   2'b11:dout<=4'b1000;
endcase
end
endmodule

module mux_using_decoder(in, sel, f);
input [3:0] in;
input [1:0] sel;
output f;
wire [3:0]y;
wire [3:0]x;
decoder2to4 f1(sel,y[3:0]);
and (x[0],y[0],in[0]);
and (x[1],y[1],in[1]);
and (x[2],y[2],in[2]);
and (x[3],y[3],in[3]);
or(f,x[0],x[1],x[2],x[3]);

endmodule