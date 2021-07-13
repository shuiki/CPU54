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
        reg [31:0]dividend;      //������
        reg [31:0]divisor;          //����
        reg start;                 //������������
        reg clock;
        reg reset;
        wire [31:0]q;              //��
        wire [31:0]r;              //����    
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

