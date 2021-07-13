`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/29 23:22:08
// Design Name: 
// Module Name: MULTU
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

module MULTU(
input clk, 		// 乘法器时钟信号
input reset,
input [31:0] a, // 输入 a(被乘数)
input [31:0] b, // 输入 b(乘数 )
output [63:0] z // 乘积输出 z
);

wire [63:0] result;

wire [63:0] store0;
wire [63:0] store1;
wire [63:0] store2;
wire [63:0] store3;
wire [63:0] store4;
wire [63:0] store5;
wire [63:0] store6;
wire [63:0] store7;
wire [63:0] store8;
wire [63:0] store9;
wire [63:0] store10;
wire [63:0] store11;
wire [63:0] store12;
wire [63:0] store13;
wire [63:0] store14;
wire [63:0] store15;
wire [63:0] store16;
wire [63:0] store17;
wire [63:0] store18;
wire [63:0] store19;
wire [63:0] store20;
wire [63:0] store21;
wire [63:0] store22;
wire [63:0] store23;
wire [63:0] store24;
wire [63:0] store25;
wire [63:0] store26;
wire [63:0] store27;
wire [63:0] store28;
wire [63:0] store29;
wire [63:0] store30;
wire [63:0] store31;

wire [63:0] store0_1;
wire [63:0] store2_3;
wire [63:0] store4_5;
wire [63:0] store6_7;
wire [63:0] store8_9;
wire [63:0] store10_11;
wire [63:0] store12_13;
wire [63:0] store14_15;
wire [63:0] store16_17;
wire [63:0] store18_19;
wire [63:0] store20_21;
wire [63:0] store22_23;
wire [63:0] store24_25;
wire [63:0] store26_27;
wire [63:0] store28_29;
wire [63:0] store30_31;

wire [63:0] store0_3;
wire [63:0] store4_7;
wire [63:0] store8_11;
wire [63:0] store12_15;
wire [63:0] store16_19;
wire [63:0] store20_23;
wire [63:0] store24_27;
wire [63:0] store28_31;

wire [63:0] store0_7;
wire [63:0] store8_15;
wire [63:0] store16_23;
wire [63:0] store24_31;

wire [63:0] store0_15;
wire [63:0] store16_31;


assign store0=b[0]?{32'b0,a}:64'b0;
assign store1=b[1]?{31'b0,a,1'b0}:64'b0;
assign store2=b[2]?{30'b0,a,2'b0}:64'b0;
assign store3=b[3]?{29'b0,a,3'b0}:64'b0;
assign store4=b[4]?{28'b0,a,4'b0}:64'b0;
assign store5=b[5]?{27'b0,a,5'b0}:64'b0;
assign store6=b[6]?{26'b0,a,6'b0}:64'b0;
assign store7=b[7]?{25'b0,a,7'b0}:64'b0;
assign store8=b[8]?{24'b0,a,8'b0}:64'b0;
assign store9=b[9]?{23'b0,a,9'b0}:64'b0;
assign store10=b[10]?{22'b0,a,10'b0}:64'b0;
assign store11=b[11]?{21'b0,a,11'b0}:64'b0;
assign store12=b[12]?{20'b0,a,12'b0}:64'b0;
assign store13=b[13]?{19'b0,a,13'b0}:64'b0;
assign store14=b[14]?{18'b0,a,14'b0}:64'b0;
assign store15=b[15]?{17'b0,a,15'b0}:64'b0;
assign store16=b[16]?{16'b0,a,16'b0}:64'b0;
assign store17=b[17]?{15'b0,a,17'b0}:64'b0;
assign store18=b[18]?{14'b0,a,18'b0}:64'b0;
assign store19=b[19]?{13'b0,a,19'b0}:64'b0;
assign store20=b[20]?{12'b0,a,20'b0}:64'b0;
assign store21=b[21]?{11'b0,a,21'b0}:64'b0;
assign store22=b[22]?{10'b0,a,22'b0}:64'b0;
assign store23=b[23]?{9'b0,a,23'b0}:64'b0;
assign store24=b[24]?{8'b0,a,24'b0}:64'b0;
assign store25=b[25]?{7'b0,a,25'b0}:64'b0;
assign store26=b[26]?{6'b0,a,26'b0}:64'b0;
assign store27=b[27]?{5'b0,a,27'b0}:64'b0;
assign store28=b[28]?{4'b0,a,28'b0}:64'b0;
assign store29=b[29]?{3'b0,a,29'b0}:64'b0;
assign store30=b[30]?{2'b0,a,30'b0}:64'b0;
assign store31=b[31]?{1'b0,a,31'b0}:64'b0;

assign store0_1=store0+store1;
assign store2_3=store2+store3;
assign store4_5=store4+store5;
assign store6_7=store6+store7;
assign store8_9=store8+store9;
assign store10_11=store10+store11;
assign store12_13=store12+store13;
assign store14_15=store14+store15;
assign store16_17=store16+store17;
assign store18_19=store18+store19;
assign store20_21=store20+store21;
assign store22_23=store22+store23;
assign store24_25=store24+store25;
assign store26_27=store26+store27;
assign store28_29=store28+store29;
assign store30_31=store30+store31;
assign store0_3=store0_1+store2_3;
assign store4_7=store4_5+store6_7;
assign store8_11=store8_9+store10_11;
assign store12_15=store12_13+store14_15;
assign store16_19=store16_17+store18_19;
assign store20_23=store20_21+store22_23;
assign store24_27=store24_25+store26_27;
assign store28_31=store28_29+store30_31;

assign store0_7=store0_3+store4_7;
assign store8_15=store8_11+store12_15;
assign store16_23=store16_19+store20_23;
assign store24_31=store24_27+store28_31;

assign store0_15=store0_7+store8_15;
assign store16_31=store16_23+store24_31;

assign result=store0_15+store16_31;

assign z=result;

endmodule

