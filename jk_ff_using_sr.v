`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.08.2023 18:20:35
// Design Name: 
// Module Name: jk_ff_using_sr
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
module sr_ff(input s,r,clk,output reg q=0,output qbar);
always@(posedge clk)
begin
case({s,r})
2'b00:q<=q;
2'b01:q<=0;
2'b10:q<=1;
2'b11:q<=1'bx;
endcase
end
assign qbar=~q;
endmodule

module jk_ff_using_sr(
    input clk,
    input j,
    input k,
    output  q,
    output qbar
    );
    wire x1,x2;
    assign x1=(~q)&j;
    assign x2=q&k;
    sr_ff SRFF(clk,x1,x2,q,qbar);
endmodule
