`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/07/01 12:05:04
// Design Name: 
// Module Name: sccomp_dataflow
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


module sccomp_dataflow(
    input clk_in,
    input reset,
//    output [31:0] inst,
//    output [31:0] pc,
//    output [31:0]rf31,rf1,rf2,a_,b_,r_,z_,
//    output[2:0]curstate
    output [7:0]o_seg,
    output [7:0]o_sel
    );
 
    wire[31:0]inst,pc;
    wire dw, dr;
    wire [31:0] w_data, r_data;
    wire [31:0] instr;
    wire [31:0] dm_addr;
    wire [31:0] im_addr;
    wire [31:0] res;
    wire clk;
    wire [3:0]byteEna;
    assign inst = instr;
    assign dm_addr =(res - 32'h1001_0000);
    CLK_DIV div(
    .clk_in(clk_in),.rst(reset),.clk_out(clk)
    );

    IMEM imemory(
        .addr(im_addr[10:0]),
        .instr(instr)
    );
    assign im_addr = (pc - 32'h0040_0000)/4;
    DMEM dmemory(
        .clk(clk),.rst(reset),.ena(1'b1), .DM_W(dw), .DM_R(dr),.byteEna(byteEna) , .DM_addr(dm_addr), .DM_wdata(w_data),
        .DM_rdata(r_data)
    );
    
//    wire[31:0]rf_31,rf_1,rf_2,a,b,r,z;
//    wire[2:0]curState;
//       assign rf31=rf_31;
//       assign rf1=rf_1;
//       assign rf2=rf_2;
//       assign curstate=curState;
//       assign a_=a;
//       assign b_=b;
//       assign r_=r;
//       assign z_=z;
    CPU sccpu(
        .clk(clk),.rst(reset), .IM_inst(instr), .DM_rdata(r_data),
       .DM_W(dw), .DM_R(dr), .DM_wdata(w_data), .PC_out(pc),.DM_addr(res),.Byte_ena(byteEna)
    );
//CPU sccpu(
//       clk,reset,dw,dr,instr,r_data,w_data,pc,res,byteEna,rf_31,rf_1,rf_2,a,b,r,z,curState
//    );


    seg7x16 seg(
        .clk(clk_in),.reset(reset),.cs(1'b1),.i_data(pc),.o_seg(o_seg),.o_sel(o_sel)
    );
endmodule

