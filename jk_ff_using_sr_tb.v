`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.08.2023 18:28:07
// Design Name: 
// Module Name: jk_ff_using_sr_tb
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


module jk_ff_using_sr_tb(

    );
    reg clk;
    reg j;
    reg k;
    wire q;
    wire qbar;
    jk_ff_using_sr uut(.clk(clk),.j(j),.k(k),.q(q),.qbar(qbar));
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
