`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/29 23:22:08
// Design Name: 
// Module Name: DIV
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


module DIV(
    input [31:0] dividend,
    input [31:0] divisor,
    input start,
    input clock,
    input reset,
    output [31:0] q,
    output [31:0] r,
    output reg busy
    );
    wire ready;
    reg [5:0] count;
    reg [31:0] reg_q;
    reg [31:0] reg_r;
    reg [31:0] reg_b;
    wire [31:0] reg_r2;
    reg [31:0]mdividend,mdivisor;
    reg busy2,r_sign,sign;
    assign ready=~busy&busy2;
    wire [32:0] sub_add=r_sign?({reg_r,reg_q[31]}+{1'b0,reg_b}):
                                ({reg_r,reg_q[31]}-{1'b0,reg_b});
    assign reg_r2=r_sign?reg_r+reg_b:reg_r;
    assign r=mdividend[31]?(~reg_r2+1):reg_r2;
    assign q=(mdivisor[31]^mdividend[31])?(~reg_q+1):reg_q;
    
    always @(posedge clock or posedge reset)begin
    if(reset)begin
        count<=0;
        busy<=0;
        busy2<=0;
    end
    else begin
        busy2<=busy;
        if(start)begin
            reg_r<=32'b0;
            r_sign<=0;
            mdividend<=dividend;
            mdivisor<=divisor;
            if(dividend[31]==1) begin
                reg_q<=~dividend+1;
            end
            else reg_q<=dividend;
            if(divisor[31]==1)begin
                reg_b<=~divisor+1;
            end
            else reg_b<=divisor;
            count<=0;
            busy<=1;
        end
        else if(busy)begin
            reg_r<=sub_add[31:0];
            r_sign<=sub_add[32];
            reg_q<={reg_q[30:0],~sub_add[32]};
            count<=count+1;
            if(count==31)busy<=0;
        end
    end
    end    
endmodule
