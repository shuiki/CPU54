`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/29 23:22:08
// Design Name: 
// Module Name: DIV_tb
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


module DIV_tb();
        reg [31:0]dividend;      //被除数
        reg [31:0]divisor;          //除数
        reg start;                 //启动除法运算
        reg clock;
        reg reset;
        wire [31:0]q;              //商
        wire [31:0]r;              //余数    
        wire busy;
        initial
        begin
        clock<=1;
        start<=1;
        reset<=1;
        dividend<=32'd10;
        divisor<=32'hfffffffd;
        #5 reset<=0;
        #5 start<=0;
        #500 start<=1;
        reset<=1;
        dividend<=32'hffffffec;
        divisor<=32'd3;
        #5 reset<=0;
        #5 start<=0;
        end
        always
        #1 clock=~clock;
        DIV uut(dividend,divisor,start,clock,reset,q,r,busy);
endmodule

