`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.08.2023 18:48:40
// Design Name: 
// Module Name: jk_ff_using_d_tb
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


module jk_ff_using_d_tb(

    );
    reg clk,j,k;
    wire q,qbar;
    jk_ff_using_d uut(.clk(clk),.j(j),.k(k),.q(q),.qbar(qbar));
    initial begin
    clk=0;j=0;k=0;
    #10 clk=1;j=0;k=0;
    #10 clk=0;j=0;k=1;
    #10 clk=1;j=0;k=1;
    #10 clk=0;j=1;k=0;
    #10 clk=1;j=1;k=0;
    #10 clk=0;j=1;k=1;
    #10 clk=1;j=1;k=1;
    end
endmodule
