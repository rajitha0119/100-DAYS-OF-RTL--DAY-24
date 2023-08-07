`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.08.2023 18:40:36
// Design Name: 
// Module Name: jk_ff_using_d
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
module d_ff(input clk,d,output reg q=0,output qbar);
assign qbar=~q;
always@(posedge clk)
begin
q<=d;
end
endmodule

module jk_ff_using_d(
    input clk,
    input j,
    input k,
    output q,
    output qbar
    );
    wire x;
    assign x=(~qbar|j)&(q|~k);
    d_ff DFF(clk,x,q,qbar);
endmodule
