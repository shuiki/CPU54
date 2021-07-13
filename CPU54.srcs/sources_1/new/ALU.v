`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/28 12:48:44
// Design Name: 
// Module Name: ALU
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

`timescale 1ns / 1ps

//module ALU(
//input [31:0] a, 		//32 位输入，操作数1
//input [31:0] b, 		//32 位输入，操作数2
//input [3:0] aluc, 		//4 位输入，控制 alu 的操作
//output reg [31:0] r, 	//32 位输出，由a、b 经过aluc 指定的操作生成
//output reg zero, 		//0 标志位
//output reg carry, 		// 进位标志位
//output reg negative,	// 负数标志位
//output reg overflow 	// 溢出标志位
//);

//            parameter ADDU    =    4'b0000;    //r=a+b unsigned
//            parameter ADD    =    4'b0010;    //r=a+b signed
//            parameter SUBU    =    4'b0001;    //r=a-b unsigned
//            parameter SUB    =    4'b0011;    //r=a-b signed
//            parameter AND    =    4'b0100;    //r=a&b
//            parameter OR    =    4'b0101;    //r=a|b
//            parameter XOR    =    4'b0110;    //r=a^b
//            parameter NOR    =    4'b0111;    //r=~(a|b)
//            parameter LUI    =    4'b1000;    //r={b[15:0],16'b0}
//            parameter SLT    =    4'b1011;    //r=(a-b<0)?1:0 signed
//            parameter SLTU    =    4'b1010;    //r=(a-b<0)?1:0 unsigned
//            parameter SRA   =    4'b1100;    //r=b>>>a 
//            parameter SLL    =    4'b1110;    //r=b<<a
//            parameter SRL    =    4'b1101;    //r=b>>a
//            parameter CLZ   =   4'b1111;

//	always @ (a or b or aluc)
//	begin 
//		casex (aluc)
//			ADDU:begin 			//	Addu r=a+b 无符号	0 0 0 0
//				{carry,r}=a+b;
//				zero=!r?1:0;
//				negative=r[31];end
//			ADD:begin 			//	Add r=a+b 有符号	0 0 1 0
//				r=a+b;
//				zero=!r?1:0;
//				negative=r[31];
//				overflow=a[31]&b[31]&~r[31] | ~a[31]&~b[31]&r[31];end
//			SUBU:begin 			//	Subu r=a-b 无符号	0 0 0 1
//				{carry,r}=a-b;
//				zero=!r?1:0;
//				negative=r[31];end
//			SUB:begin 			//	Sub r=a-b 有符号	0 0 1 1
//				r=a-b;
//				zero=!r?1:0;
//				negative=r[31];
//				overflow=(a[31]&~b[31]&~r[31]) | (~a[31]&b[31]&r[31]);end
//			AND:begin 			//	And r=a & b 		0 1 0 0
//				r=a&b;
//				zero=!r?1:0;
//				negative=r[31];end
//			OR:begin 			//	Or r=a | b			0 1 0 1
//				r=a|b;
//				zero=!r?1:0;
//				negative=r[31];end
//			XOR:begin 			//	Xor r=a ^ b 		0 1 1 0
//				r=a^b;
//				zero=!r?1:0;
//				negative=r[31];end
//			NOR:begin 			//	Nor r=~（a | b） 	0 1 1 1
//				r=~(a|b);
//				zero=!r?1:0;
//				negative=r[31];end
//			LUI:begin 			//	Lui r={b[15:0],16'b0} 	1 0 0 X
//				r={b[15:0],16'b0};
//				zero=!r?1:0;
//				negative=r[31];end
//			SLT:begin 			//	Slt r=(a<b)?1:0 有符号	1 0 1 1
//				r=($signed(a)<$signed(b))?1:0;
//				zero=!(a-b);
//				negative=r[0];end
//			SLTU:begin 			//	Sltu r=(a<b)?1:0 无符号	1 0 1 0
//				r=(a<b)?1:0;
//				carry=r[0];
//				zero=!(a-b);
//				negative=r[31];end
//			SRA:begin 			//	Sra r=b>>>a 			1 1 0 0
//				{r,carry}={{31{b[31]}},b,1'b0}>>a[4:0];
//				zero=!r?1:0;
//				negative=r[31];end
//			SLL:begin			//	Sll/Slr r=b<<a 			1 1 1 X
//				{carry,r}=b<<a[4:0];
//				zero=!r?1:0;
//				negative=r[31];end
//			SRL:begin 			//	Srl r=b>>a 			1 1 0 1
//				{r,carry}={b,1'b0}>>a[4:0];
//				//r=b>>a;
//				zero=!r?1:0;
//				negative=r[31];end
//		    CLZ://clz
//                    begin
//                    r=b[31]?32'd0:b[30]?32'd1:b[29]?32'd2:b[28]?32'd3:b[27]?32'd4:b[26]?32'd5:b[25]?32'd6:b[24]?32'd7:b[23]?32'd8:b[22]?32'd9:b[21]?32'd10:
//                    b[20]?32'd11:b[19]?32'd12:b[18]?32'd13:b[17]?32'd14:b[16]?32'd15:b[15]?32'd16:b[14]?32'd17:b[13]?32'd18:b[12]?32'd19:b[11]?32'd20:b[10]?32'd21:b[9]?32'd22:
//                    b[8]?32'd23:b[7]?32'd24:b[6]?32'd25:b[5]?32'd26:b[4]?32'd27:b[3]?32'd28:b[2]?32'd29:b[1]?32'd30:b[0]?32'd31:32'd32;
//                    end
//                    default:r=0;
//		endcase
//	end
	
//endmodule

module ALU(
input [31:0]a,
input [31:0]b,
input [3:0]aluc,
output reg [31:0]r,
output zero,
output reg carry,
output reg negative,
output reg overflow
    );
            parameter ADDU    =    4'b0000;    //r=a+b unsigned
            parameter ADD    =    4'b0010;    //r=a+b signed
            parameter SUBU    =    4'b0001;    //r=a-b unsigned
            parameter SUB    =    4'b0011;    //r=a-b signed
            parameter AND    =    4'b0100;    //r=a&b
            parameter OR    =    4'b0101;    //r=a|b
            parameter XOR    =    4'b0110;    //r=a^b
            parameter NOR    =    4'b0111;    //r=~(a|b)
            parameter LUI    =    4'b1000;    //r={b[15:0],16'b0}
            parameter SLT    =    4'b1011;    //r=(a-b<0)?1:0 signed
            parameter SLTU    =    4'b1010;    //r=(a-b<0)?1:0 unsigned
            parameter SRA   =    4'b1100;    //r=b>>>a 
            parameter SLL    =    4'b1110;    //r=b<<a
            parameter SRL    =    4'b1101;    //r=b>>a
            parameter CLZ   =   4'b1111;
            
    assign zero=(aluc==4'b1011||aluc==4'b1010)?(a==b):(r==0)?1:0;
    reg[32:0]temp;
    initial
    begin r=0; carry=0; negative=0; overflow=0; end
    always @(a or b or aluc)
    begin
    case(aluc)
    ADDU://ADDU
    begin
        r=a+b;
        temp=a+b;//判断进位
        if(temp[32]==1)
            carry=1;
        else
            carry=0;
    end
    ADD:
    begin
        r=$signed(a)+$signed(b);//ADD
        if((a[31]==1&&b[31]==1&&r[31]==0)||(a[31]==0&&b[31]==0&&r[31]==1))
            overflow=1;
        else
            overflow=0;
    end
    SUBU://SUBU
    begin
        r=a-b;
        if(a<b)
        begin
            carry=1;
            //negative=1;
        end
        else
        begin
            carry=0;
            //negative=0;
            end
    end
    SUB:
    begin
        r=$signed(a)-$signed(b);//SUB
        if((a[31]==1&&b[31]==0&&r[31]==0)||(a[31]==0&&b[31]==1&&r[31]==1))
            overflow=1;
        else
            overflow=0;
        if($signed(a)<$signed(b))
                   begin
                       carry=1;
                       //negative=1;
                   end
       else
                   begin
                       carry=0;
                       //negative=0;
                       end     
    end
    AND:r=a&b;//AND
    OR:r=a|b;//OR
    XOR:r=a^b;//XOR
    NOR:r=~(a|b);//NOR
    LUI:r={b[15:0],16'b0};//LUI
//    LUI:r={b[15:0],16'b0};//LUI
    SLT:
    begin
        r=($signed(a)<$signed(b))?1:0;//SLT
        if($signed(a)<$signed(b))
            negative=1;
        else
            negative=0;
    end
    SLTU://SLTU
    begin
        r=(a<b)?1:0;
        if(a<b)
            carry=1;
        else
            carry=0;
    end
    SRA://SRA
    begin
        if(a==0)
            carry=0;
        else if(a<=32)
            carry=b[a-1];
        else
            carry=b[31];
        r=$signed(b)>>>a;
    end
    SLL://SLL/SLR
    begin
        if(a==0)
            carry=0;
        else if(a<=32)
            carry=b[32-a];
        else
            carry=0;
        r=b<<a;
    end
//    4'b1111://SLL/SLR
//    begin
//        if(a==0)
//            carry=0;
//        else if(a<=32)
//            carry=b[32-a];
//        else
//            carry=0;
//        r=b<<a;
//    end
    SRL://SRL
    begin
        if(a==0)
            carry=0;
        else if(a<=32)
            carry=b[a-1];
        else
            carry=0;
        r=b>>a;
    end
    CLZ://clz
    begin
    r=b[31]?32'd0:b[30]?32'd1:b[29]?32'd2:b[28]?32'd3:b[27]?32'd4:b[26]?32'd5:b[25]?32'd6:b[24]?32'd7:b[23]?32'd8:b[22]?32'd9:b[21]?32'd10:
    b[20]?32'd11:b[19]?32'd12:b[18]?32'd13:b[17]?32'd14:b[16]?32'd15:b[15]?32'd16:b[14]?32'd17:b[13]?32'd18:b[12]?32'd19:b[11]?32'd20:b[10]?32'd21:b[9]?32'd22:
    b[8]?32'd23:b[7]?32'd24:b[6]?32'd25:b[5]?32'd26:b[4]?32'd27:b[3]?32'd28:b[2]?32'd29:b[1]?32'd30:b[0]?32'd31:32'd32;
    end
    default:r=0;
    endcase
//    if(aluc==4'b1011||aluc==4'b1010)
//    begin
//        if(a==b) zero=1;
//        else     zero=0;
//    end
//    else
//    begin
//        if(r==0) zero=1;
//        else     zero=0;
//    end
    if(aluc!=4'b1011)
    begin
        if(r[31]==1) negative=1;
        else         negative=0;
    end
    end
endmodule