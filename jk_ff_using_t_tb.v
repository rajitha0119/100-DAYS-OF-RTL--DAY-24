`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.08.2023 19:02:56
// Design Name: 
// Module Name: jk_ff_using_t_tb
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


module jk_ff_using_t_tb(

    );
    reg clk,rst,j,k;
    wire q,qbar;
    jk_ff_using_t uut(.clk(clk),.rst(rst),.j(j),.k(k),.q(q),.qbar(qbar));
    initial begin
    clk=1'b0;
    forever #10 clk=~clk;
    end
    initial begin
    rst=0;#10;
    rst=1;#30;
    rst=0;#10;
    end
    initial begin
    j=0;k=0;
    #10 j=0;k=1;
    #10 j=0;k=0;
    #10 j=1;k=0;
    #10 j=0;k=0;
    #10 j=1;k=1;
    #10 j=0;k=0;
    end
endmodule
