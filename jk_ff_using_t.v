`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.08.2023 18:56:59
// Design Name: 
// Module Name: jk_ff_using_t
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
module t_ff(input clk,rst,t,output reg q=0,output qbar);
always@(posedge clk)
begin
if(rst)
q<=1'b0;
else
if(t)
q<=~q;
else
q<=q;
end
assign qbar=~q;
endmodule

module jk_ff_using_t(input rst,
    input clk,
    input j,
    input k,
    output q,
    output qbar
    );
    wire x;
    assign x=(~qbar|j)&(q|k);
    t_ff TFF(clk,rst,x,q,qbar);
endmodule
