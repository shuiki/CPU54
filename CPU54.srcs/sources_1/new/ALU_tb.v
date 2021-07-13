`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/29 22:57:41
// Design Name: 
// Module Name: ALU_tb
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


module ALU_tb();
reg[31:0]a,b;
reg[3:0]aluc;
wire[31:0]r;
wire z,c,n,o;
initial
begin
aluc=4'b1111;
a=32'bz;
b=32'h00ff;
#50
b=32'h0ff0;
#50
b=32'hffff;
end
ALU alu(a,b,aluc,r,z,c,n,o);

endmodule
