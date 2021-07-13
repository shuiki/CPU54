`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/27 19:00:23
// Design Name: 
// Module Name: DMEM_tb
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


module DMEM_tb();
reg clk,rst,dm_w,dm_r,ena;
reg[31:0]dm_addr;
reg[31:0]dm_wdata;
wire [31:0]dm_rdata;
initial
begin
ena=1;
dm_w=0;
dm_r=0;
dm_addr=32'd0;
dm_wdata=32'd0;
clk=0;
rst=1;
#50
rst=0;
dm_w=1;
dm_addr=32'd2;
dm_wdata=32'hffffffff;
#50
dm_w=0;
dm_r=1;
dm_addr=32'd2;
#50
dm_addr=32'd5;
#100
dm_r=0;
dm_w=1;
dm_wdata=32'b0;
#50
dm_addr=32'd2;
dm_r=1;
dm_w=0;
end
always
begin
#20
clk=~clk;
end
DMEM dmem(clk,rst,ena,dm_w,dm_r,dm_addr,dm_wdata,dm_rdata);
endmodule
