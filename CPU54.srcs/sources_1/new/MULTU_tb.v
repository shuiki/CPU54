`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/29 23:22:08
// Design Name: 
// Module Name: MULTU_tb
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


module MULTU_tb();
reg clk;
reg [31:0]a,b;
wire [63:0]z;
reg reset;

initial
begin
clk=0;
reset=1;
a=32'd20;
b=32'd6;
#5 reset=0;
#100 reset=1;
a=32'd12;
b=32'd15;
#5 reset=0;
end

always
begin
#1 clk=~clk;
end

MULTU uut(clk,reset,a,b,z); 
endmodule

