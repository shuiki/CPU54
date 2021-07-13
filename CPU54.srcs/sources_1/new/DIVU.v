`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/29 23:22:08
// Design Name: 
// Module Name: DIVU
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



module DIVU(
         input [31:0]dividend,         //������
         input [31:0]divisor,           //����
         input start,                 //������������
         input clock,
         input reset,
         output [31:0]q,              //��
         output [31:0]r,              //����    
         output reg busy                //������æ��־λ
         );
         wire ready;
         reg[4:0]count;
         reg [31:0] reg_q;
         reg [31:0] reg_r;
         reg [31:0] reg_b;
         reg busy2,r_sign;
         assign ready = ~busy & busy2;
         wire [32:0] sub_add = r_sign?({reg_r,reg_q[31]} + {1'b0,reg_b}):({reg_r,reg_q[31]} - {1'b0,reg_b});    //�ӡ�������
         assign r = r_sign? reg_r + reg_b : reg_r;
         assign q = reg_q;    
         always @ (posedge clock or posedge reset)begin
              if (reset == 1) begin                     //����
                  count <=5'b0;
              busy <= 0;
              busy2 <= 0;
         end else begin
                  busy2 <= busy;
            if (start) begin                      //��ʼ�������㣬��ʼ��
                    reg_r <= 32'b0;
                    r_sign <= 0;
                    reg_q <= dividend;
                    reg_b <= divisor;
                    count <= 5'b0;
                    busy <= 1'b1;
            end 
            else if (busy) begin                     //ѭ������
                    reg_r <= sub_add[31:0];                 //��������
                    r_sign <= sub_add[32];                  //���Ϊ�����´����
                    reg_q <= {reg_q[30:0],~sub_add[32]};
                    count <= count +5'b1;                  //��������һ
                    if (count == 5'd31) busy <= 0;            //������������
                  end
         end
         end
endmodule
 
