`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/27 19:00:23
// Design Name: 
// Module Name: DMEM
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


module DMEM(//小端序存储
    input clk,
    input rst,
    input ena,
    input DM_W,
    input DM_R,
    input[3:0]byteEna,
    input [31:0] DM_addr,//为指令中DM地址ADDR-10010000，不要除4！因为这里以8bit为单位
    input [31:0] DM_wdata,
    output [31:0] DM_rdata
    );
    wire[31:0]addr;
    reg [7:0] D_mem[0:640];
    wire [10:0]taddr0,taddr1,taddr2,taddr3;
    wire[7:0]wByte0,wByte1,wByte2,wByte3;
    
    assign addr=DM_addr;
    assign taddr0={addr[10:0]};
    assign taddr1=taddr0+11'd1;
    assign taddr2=taddr0+11'd2;
    assign taddr3=taddr0+11'd3;
    
   
    assign wByte0=byteEna[0]?DM_wdata[7:0]:D_mem[taddr0];
    assign wByte1=byteEna[1]?DM_wdata[15:8]:D_mem[taddr1];
    assign wByte2=byteEna[2]?DM_wdata[23:16]:D_mem[taddr2];
    assign wByte3=byteEna[3]?DM_wdata[31:24]:D_mem[taddr3];
    
    always @(posedge clk) begin
        if(rst)
        begin
        //
        end
        else if (DM_W && ena) begin
            D_mem[taddr0] <= wByte0;
            D_mem[taddr1] <= wByte1;
            D_mem[taddr2] <= wByte2;
            D_mem[taddr3] <= wByte3;
        end
    end

    assign DM_rdata[31:0] = (DM_R && ena) ? {D_mem[taddr3],D_mem[taddr2],D_mem[taddr1],D_mem[taddr0]} : 32'bz;
endmodule

