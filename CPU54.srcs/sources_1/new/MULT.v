`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/29 23:22:08
// Design Name: 
// Module Name: MULT
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


module MULT(
input clk,		// �˷���ʱ���ź�
input reset,
input [31:0] a, // ���� a(������)
input [31:0] b, // ���� b(����)
output [63:0] z // �˻���� z
) ;
	wire [31:0]aa=a[31]?(~a+1):a;
	wire [31:0]bb=b[31]?(~b+1):b;
	wire [63:0]tem;
	
	MULTU multu_inst(.clk(clk),.reset(reset),.a(aa),.b(bb),.z(tem));
	
	assign z=a[31]==b[31]?tem:(~tem+1);
	
endmodule
    
