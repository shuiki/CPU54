`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/07/01 11:52:17
// Design Name: 
// Module Name: CPU
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


module CPU(
input clk,
input rst,
output DM_W,
output DM_R,
input [31:0] IM_inst,
input [31:0] DM_rdata,
output [31:0] DM_wdata,
output [31:0] PC_out,
output [31:0] DM_addr,
output [3:0] Byte_ena
//output [31:0]rf31,rf1,rf2,alu_a,alu_b,alu_r,z_out,
//output [2:0]cur_state

    );
//    wire[31:0]rf_31,rf_1,rf_2;
//assign rf31=rf_31;
//assign rf1=rf_1;
//assign rf2=rf_2;

    
    //state
    reg [2:0]curState,nextState; 
    
    //异常入口地址
//    parameter ExcInAddr=32'h4; 
    //指令操作码及函数码
    parameter addiOp	=6'h8,addiuOp	=6'h9,
    andiOp	=6'hC,oriOp	=6'hD,sltiuOp	=6'hB,
    luiOp	=6'hF,xoriOp	=6'hE,sltiOp	=6'hA,
    adduOp	=6'h0,	adduFunc=6'h21,andOp	=6'h0,	
    andFunc	=6'h24,beqOp	=6'h4,bneOp	=6'h5,
    jOp		=6'h2,jalOp	=6'h3,jrOp	=6'h0,	
    jrFunc	=6'h8,lwOp	=6'h23,xorOp	=6'h0,	
    xorFunc	=6'h26,norOp	=6'h0,	norFunc	=6'h27,
    orOp	=6'h0,	orFunc	=6'h25,
    sllOp	=6'h0,	sllFunc	=6'h0,
    sllvOp	=6'h0,	sllvFunc=6'h4,
    sltuOp	=6'h0,	sltuFunc=6'h2B,
    sraOp	=6'h0,	sraFunc	=6'h3,
    srlOp	=6'h0,	srlFunc	=6'h2,
    subuOp	=6'h0,	subuFunc=6'h23,
    swOp	=6'h2B,addOp	=6'h0,	
    addFunc	=6'h20,subOp	=6'h0,	
    subFunc	=6'h22,sltOp	=6'h0,	
    sltFunc	=6'h2A,srlvOp	=6'h0,	
    srlvFunc=6'h6,sravOp	=6'h0,	
    sravFunc=6'h7,
    clzOp	=6'h1C,	clzFunc	=6'h20,
    divuOp	=6'h0,	divuFunc=6'h1B,
    eretOp	=6'h10,	eretFunc=6'h18,
    jalrOp	=6'h0,	jalrFunc=6'h9,
    lbOp	=6'h20,lbuOp	=6'h24,
    lhuOp	=6'h25,sbOp	=6'h28,
    shOp	=6'h29,lhOp	=6'h21,
    mfc0Op	=6'h10,	mfc0Func=6'h0,		
    mfc0Sp=5'h0,mfhiOp	=6'h0,	
    mfhiFunc=6'h10,mfloOp	=6'h0,	
    mfloFunc=6'h12,mtc0Op	=6'h10,	mtc0Func=6'h0,		
    mtc0Sp=5'd4,mthiOp	=6'h0,	mthiFunc=6'h11,
    mtloOp	=6'h0,	mtloFunc=6'h13,
    mulOp	=6'h1C,	mulFunc=6'h2,
    multuOp	=6'h0,	multuFunc=6'h19,
    syscallOp=6'h0,	syscallFunc=6'hC,
    teqOp	=6'h0,	teqFunc	=6'h34,
    bgezOp	=6'h1,breakOp	=6'h0,	
    breakFunc=6'hD,divOp	=6'h0,	
    divFunc	=6'h1A; 
    //ALU运算控制信号
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
    
    wire lb,lbu,lh,lhu,lw;
    wire sb,sh,sw;
    wire add,addu,sub,subu,mul,multu,div,divu,sll,srl,sra,sllv,srlv,srav,slt,sltu,andd,orr,xorr,norr,clz;
    wire addi,addiu,andi,ori,xori,lui,slti,sltiu;
    wire beq,bne,bgez;
    wire j,jal,jalr,jr;
    wire mfhi,mflo,mthi,mtlo;
    wire eret,mfc0,mtc0;
    wire breakk,syscall,teq;
    
    reg [31:0]IR;
    
    
    wire[5:0]Op,Func;
    assign Op=IR[31:26];
    assign Func=IR[5:0];
    
    assign addi    =Op==addiOp    ;
    assign addiu=Op==addiuOp;
    assign andi    =Op==andiOp    ;
    assign ori    =Op==oriOp    ;
    assign sltiu=Op==sltiuOp;
    assign lui    =Op==luiOp    ;
    assign xori    =Op==xoriOp    ;
    assign slti    =Op==sltiOp    ;
    assign addu    =Op==adduOp    &&Func==adduFunc;
    assign andd    =Op==andOp    &&Func==andFunc    ;
    assign beq    =Op==beqOp    ;
    assign bne    =Op==bneOp    ;
    assign j    =Op==jOp    ;
    assign jal    =Op==jalOp    ;
    assign jr    =Op==jrOp    &&Func==jrFunc    ;
    assign lw    =Op==lwOp    ;
    assign xorr    =Op==xorOp    &&Func==xorFunc    ;
    assign norr    =Op==norOp    &&Func==norFunc    ;
    assign orr    =Op==orOp    &&Func==orFunc    ;
    assign sll    =Op==sllOp    &&Func==sllFunc    ;
    assign sllv    =Op==sllvOp    &&Func==sllvFunc;
    assign sltu    =Op==sltuOp    &&Func==sltuFunc;
    assign sra    =Op==sraOp    &&Func==sraFunc    ;
    assign srl    =Op==srlOp    &&Func==srlFunc    ;
    assign subu    =Op==subuOp    &&Func==subuFunc;
    assign sw    =Op==swOp    ;
    assign add    =Op==addOp    &&Func==addFunc    ;
    assign sub    =Op==subOp    &&Func==subFunc    ;
    assign slt    =Op==sltOp    &&Func==sltFunc    ;
    assign srlv    =Op==srlvOp    &&Func==srlvFunc;
    assign srav    =Op==sravOp    &&Func==sravFunc;
    assign clz    =Op==clzOp    &&Func==clzFunc    ;
    assign divu    =Op==divuOp    &&Func==divuFunc;
    assign eret    =Op==eretOp    &&Func==eretFunc;
    assign jalr    =Op==jalrOp    &&Func==jalrFunc;
    assign lb    =Op==lbOp    ;
    assign lbu    =Op==lbuOp    ;
    assign lhu    =Op==lhuOp    ;
    assign sb    =Op==sbOp    ;
    assign sh    =Op==shOp    ;
    assign lh    =Op==lhOp    ;
    assign mfc0    =Op==mfc0Op    &&Func==mfc0Func&&(IR[25:21]==mfc0Sp);
    assign mfhi    =Op==mfhiOp    &&Func==mfhiFunc;
    assign mflo    =Op==mfloOp    &&Func==mfloFunc;
    assign mtc0    =Op==mtc0Op    &&Func==mtc0Func&&(IR[25:21]==mtc0Sp);
    assign mthi    =Op==mthiOp    &&Func==mthiFunc;
    assign mtlo    =Op==mtloOp    &&Func==mtloFunc;
    assign mul    =Op==mulOp    &&Func==mulFunc;
    assign multu=Op==multuOp&&Func==multuFunc;
    assign syscall=Op==syscallOp&&Func==syscallFunc;
    assign teq    =Op==teqOp    &&Func==teqFunc    ;
    assign bgez    =Op==bgezOp    ;
    assign breakk=Op==breakOp&&Func==breakFunc;
    assign div    =Op==divOp    &&Func==divFunc    ;
    
assign Byte_ena=sw?4'b1111:sb?4'b0001:sh?4'b0011:4'b0000;

//pcreg,IM
wire pcEna,npcEna;
wire [31:0]pcIn,pc;
reg [31:0]npc;
assign PC_out=pc;

//alu
wire[31:0]alua,alub;
wire[31:0]alur;
wire [3:0]aluc;
wire zeroFlag,carryFlag,overflowFlag,negFlag;
reg zFlag,cFlag,oFlag,nFlag;



//storer
reg [31:0]Z,HI,LO;

//mul,multu
wire[31:0] mula,mulb,multua,multub;
wire[63:0]mulz,multuz;
wire mulRst,multuRst;
assign mulRst=rst||(mul&&(curState==3'd1||curState==3'd2));
assign multuRst=rst||(multu&&(curState==3'd1||curState==3'd2));

//div
wire divBusy,divuBusy;
wire divStart,divuStart;
wire[31:0]dividend,udividend,divq,divr,divuq,divur;
wire [31:0]divisor,udivisor;
//regfile
wire[4:0]rdc,rtc,rsc;
//assign rsc=(breakk||eret||j||jal||jalr||jr||lui||mfc0||mfhi||mflo||mtc0||sll||sra||srl||syscall||teq)?5'bz:IR[25:21];
assign rsc=IR[25:21];
assign rtc=IR[20:16];
assign rdc=(add||addu||andd||clz||mfhi||mflo||mul||norr||orr||sll||sllv||slt||sltu||sra||srav||srl||srlv||sub||subu||xorr)?IR[15:11]:
            (addi||addiu||andi||lb||lbu||lh||lhu||lui||lw||mfc0||ori||slti||sltiu||xori)?IR[20:16]:jal?5'd31:jalr?((IR[15:11]!=5'b0)?IR[15:11]:5'd31):5'bz;
wire[31:0]rd,rs,rt;
wire RF_W;
assign RF_W=(curState==3'd4&&(((add||addi)&&!oFlag)||addiu||addu||andd||andi||clz||jal||jalr||lb||lbu||lhu||lh||lui||lw||
norr||orr||ori||sll||sllv||slt||slti||sltiu||sltu||sra||srav||srl||srlv||subu||sub||xorr||xori))||(curState==3'd3&&(mfc0||mfhi||mflo||mul));
//assign RF_W=(beq||bgez||bne||breakk||div||divu||eret||j||jr||mtc0||mthi||mtlo||multu||sb||sh||sw||syscall||teq||(addi&&oFlag)||(add&&oFlag))?1'b0:1'b1;

//assign cur_state=curState;
//assign alu_a=alua;
//assign alu_b=alub;
//assign alu_r=alur;
//assign z_out=Z;

//div
assign divStart=div&&curState==3'd3&&nextState!=3'd4;
assign divuStart=divu&&curState==3'd3&&nextState!=3'd4;
assign dividend=(div&&curState==3'd3)?rs:32'bz;
assign udividend=(divu&&curState==3'd3)?rs:32'bz;
assign divisor=(div&&curState==3'd3)?rt:32'bz;
assign udivisor=(divu&&curState==3'd3)?rt:32'bz;

DIV cpu_div(
    .dividend(dividend),
    .divisor(divisor),
    .start(divStart),
    .clock(clk),
    .reset(rst),
    .q(divq),
    .r(divr),
    .busy(divBusy)
    );
    
DIVU cpu_divu(
        .dividend(udividend),
        .divisor(udivisor),
        .start(divuStart),
        .clock(clk),
        .reset(rst),
        .q(divuq),
        .r(divur),
        .busy(divuBusy)
        );

//mul,multu
assign mula=(mul&&curState==3'd3)?rs:32'bz;
assign mulb=(mul&&curState==3'd3)?rt:32'bz;
assign multua=(multu&&curState==3'd3)?rs:32'bz;
assign multub=(multu&&curState==3'd3)?rt:32'bz;

MULT cpu_mult(
    .clk(clk),
    .reset(rst),
    .a(mula),
    .b(mulb),
    .z(mulz)
);

MULTU cpu_multu(
    .clk(clk),
    .reset(rst),
    .a(multua),
    .b(multub),
    .z(multuz)
);

//DM
wire dm_w,dm_r;
wire[31:0] dm_addr,dm_wdata,dm_rdata;
assign DM_W=dm_w;
assign DM_R=dm_r;
assign DM_wdata=dm_wdata;
assign DM_addr=dm_addr;
assign dm_rdata=DM_rdata;
assign dm_addr=(curState==3'd4&&(sw||lw||sb||sh||lb||lh||lbu||lhu))?Z:32'bz;
assign dm_w=(curState==3'd4&&(sb||sh||sw))?1:0;
assign dm_r=(curState==3'd4&&(lb||lbu||lh||lhu||lw))?1:0;
assign dm_wdata=(curState==3'd4&&(sb||sh||sw))?rt:32'bz;



//extenders
wire[15:0]imm16;
assign imm16=IR[15:0];
wire [4:0]imm5;
assign imm5=IR[10:6];
wire [17:0]imm18;
assign imm18={IR[15:0],2'b0};
wire [31:0]SEXT16,UEXT16,EXT18,EXT5;
assign SEXT16=(!(curState==3'd3))?32'bz:imm16[15]==0?{16'b0,imm16}:{16'hffff,imm16};
assign UEXT16=(!(curState==3'd3))?32'bz:{16'b0,imm16};
assign EXT5=(!(curState==3'd3))?32'bz:{27'b0,imm5};
assign EXT18=(!(curState==3'd4))?32'bz:imm18[17]==0?{14'b0,imm18}:{14'b11111111111111,imm18};

//alu
assign alua=(curState==3'd1)?pc:(curState==3'd3)?
(add||addi||addiu||addu||andd||andi||beq||bgez||bne||lb||lbu||lh||lhu||lw||norr||orr||ori||sb||sh||sllv||slt||slti||sltiu||sltu||srav||srlv||sub||subu||sw||xorr||xori)?rs:
(jal||jalr)?pc:(lui||clz)?32'bz:(sll||sra||srl)?EXT5:32'bz:(curState==3'd4)?((beq&&zFlag)||(bgez&&!nFlag)||(bne&&!zFlag))?npc:32'bz:32'bz;

assign alub=(curState==3'd1)?4:(curState==3'd3)?
(add||addu||andd||beq||bne||norr||orr||sll||sra||srl||sllv||slt||sltu||srav||srlv||sub||subu||xorr)?rt:
(jal||jalr)?32'd4:(clz)?rs:bgez?0:(addi||addiu||lb||lbu||lh||lhu||lw||sb||sh||slti||sltiu||sw)?SEXT16:(andi||lui||ori||xori)?UEXT16:32'bz:
(curState==3'd4)?((beq&&zFlag)||(bgez&&!nFlag)||(bne&&!zFlag))?EXT18:32'bz:32'bz;

assign aluc=(curState==3'd1)?ADD:(curState==3'd3)?(add||addi||bgez||jal||jalr||lb||lbu||lh||lhu||lw||sb||sh||sw)?ADD:
(addiu||addu)?ADDU:(andd||andi)?AND:(beq||bne||sub)?SUB:(subu)?SUBU:clz?CLZ:lui?LUI:norr?NOR:(orr||ori)?OR:(sll||sllv)?SLL:
(slt||slti)?SLT:(sltu||sltiu)?SLTU:(sra||srav)?SRA:(srl||srlv)?SRL:(xorr||xori)?XOR:4'bz:
(curState==3'd4)?(((beq&&zFlag)||(bgez&&!nFlag)||(bne&&!zFlag))?ADD:4'bz):4'bz;

//byte and half word
wire[31:0]byteExt_rslt,byteExt_src,halfExt_src,halfExt_rslt;
wire[7:0]byteExt_data;//取回的byte
assign byteExt_data=(!(curState==3'd4))?8'bz:lb?byteExt_src[7:0]:8'bz;
wire[15:0]halfExt_data;//取回的halfword
assign halfExt_data=(!(curState==3'd4))?16'bz:lh?halfExt_src[15:0]:16'bz;
assign byteExt_src=(!(curState==3'd4))?32'bz:(lb||lbu||sb)?dm_rdata:32'bz;
assign halfExt_src=(!(curState==3'd4))?32'bz:(lh||lhu||sh)?dm_rdata:32'bz;
assign byteExt_rslt=(!(curState==3'd4))?32'bz:lb?byteExt_src[7]==0?{24'b0,byteExt_src[7:0]}:{24'hffffff,byteExt_src[7:0]}:lbu?{24'b0,byteExt_src[7:0]}:32'bz;
assign halfExt_rslt=(!(curState==3'd4))?32'bz:lh?halfExt_src[15]==0?{16'b0,halfExt_src[15:0]}:{16'hffff,halfExt_src[15:0]}:lhu?{16'b0,halfExt_src[15:0]}:32'bz;

// combiner"||"
wire[31:0]combiner;
assign combiner=((j&&curState==3'd3)||(jal&&curState==3'd5))?{pc[31:28],IR[25:0],2'b0}:32'bz;

//cp0
wire exception;
assign exception=(curState!=3'd3)?1'bz:syscall||teq||breakk;
wire [4:0]cause,cp0addr;
assign cause=(!(curState==3'd3))?5'bz:syscall?5'b01000:breakk?5'b01001:teq?5'b01101:5'b11111;
assign cp0addr=(curState==3&&(mfc0||mtc0))?IR[15:11]:5'bz;
wire [31:0]cp0wdata,cp0rdata,cp0status,cp0excaddr;
assign cp0wdata=(mtc0&&curState==3'd3)?rt:32'bz;


//pcreg
assign npcEna=(curState==3'd2)||(curState==3'd3&&(eret||j|jr))||(curState==3'd5&&(beq||bgez||bne||jal||jalr));
assign pcEna=(curState==3'd6);
assign pcIn=npc;

always@(negedge clk)
begin
if(npcEna)
begin
npc<=(curState==3'd2)?(syscall||teq||breakk)?32'h00400004:Z:(beq||bgez||bne)?Z:eret?cp0excaddr:((j&&curState==3'd3)||(jal&&curState==3'd5))?combiner:((jalr&&curState==3'd5)||(jr&&curState==3'd3))?rs:32'bz;
end
end

//regFile rd
assign rd=(curState==3'd3)?(mfc0?cp0rdata:mfhi?HI:mflo?LO:mul?mulz[31:0]:32'bz):
(curState==3'd4)?((add||addiu||addi||addu||andd||lui||andi||clz||jal||jalr||norr||orr||ori||sll||sllv||slt||slti||sltiu||sltu||sra||srav||srl||srlv||sub||subu||xorr||xori)?Z:
(lb||lbu)?byteExt_rslt:(lh||lhu)?halfExt_rslt:lw?dm_rdata:32'bz):32'bz;

always@(negedge clk)
begin
IR<=(curState==3'd1)?IM_inst:IR;
end

always@(negedge clk)
begin
if((curState==3'd1)||((curState==3'd3)&&(add||addi||addiu||addu||andd||andi||beq||bgez||bne||lb||lbu||lh||lhu||
    lw||norr||orr||ori||sb||sh||sllv||slt||slti||sltiu||sltu||srav||srlv||sub||subu||sw||xorr||xori||
    jal||jalr||lui||clz||sll||sra||srl))||((curState==3'd4)&&(beq||bgez||bne)))
    begin
    Z<=alur;
    end
else
begin
Z<=Z;
end
end

always@(negedge clk)
begin
if(curState==3'd4&&div)begin
HI<=divr;
LO<=divq;
end
if(curState==3'd4&&divu)begin
HI<=divur;
LO<=divuq;
end
else if(curState==3'd3&&mthi)begin
HI<=rs;
end
else if(curState==3'd3&&mtlo)begin
LO<=rs;
end
else if(curState==3'd3&&multu)begin
HI<=multuz[63:32];
LO<=multuz[31:0];
end

end

always@(negedge clk)
begin
if(curState==3'd3)
begin
oFlag<=overflowFlag;
cFlag<=carryFlag;
nFlag<=negFlag;
zFlag<=zeroFlag;
end
end

 CP0 cp0(
    .clk(clk),				//时钟信号
    .rst(rst),				//reset信号
    .mfc0(mfc0),				//指令为mfc0
    .mtc0(mtc0),				//指令为mtc0
    .eret(eret),				//指令为eret
    .exception(exception),		//异常发生信号
    .cause(cause),		//异常原因
    .addr(cp0addr),		//cp0寄存器地址
    .wdata(cp0wdata),		//写入的数据
    .pc(pc),			//pc
    .rdata(cp0rdata),		//Cp0寄存器读出数据
    .status(cp0status),	//状态
    .exc_addr(cp0excaddr)	//异常发生地址
);
  
  PcReg pcreg(
   .clk(clk),
   .rst(rst),
   .ena(pcEna),
   .PR_in(pcIn),
   .PR_out(pc)
   );
           
 ALU cpu_alu(
    .a(alua),
    .b(alub),
    .aluc(aluc),
    .r(alur),
    .zero(zeroFlag),
    .carry(carryFlag),
    .negative(negFlag),
    .overflow(overflowFlag)
    );
           
RegFile cpu_ref(
    .RF_ena(1'b1), 
    .RF_rst(rst),
    .RF_clk(clk),
    .Rdc(rdc),
    .Rsc(rsc),
    .Rtc(rtc),
    .Rd(rd),
    .Rs(rs),
    .Rt(rt),
    .RF_W(RF_W)
//    .rf_31(rf_31),
//    .rf_1(rf_1),
//    .rf_2(rf_2)
    );


reg divStatus;

always@(posedge clk or posedge rst)
begin
    if(rst)begin
        curState=3'd1;
    end
    else begin
        curState=nextState;
    end
end

always@(negedge clk)
begin
    case(curState)
    3'd1:begin
        nextState=3'd2;
    end
    3'd2:begin
        nextState=3'd3;
        divStatus=1'b0;    
    end
    3'd3:begin
        if(breakk||(beq&&!zFlag)||(bne&&zFlag)||(bgez&&nFlag)||eret||j||jr||mul||multu||syscall||teq||mfc0||mfhi||mflo||mtc0||mthi||mtlo)
        begin
            nextState=3'd6; 
        end
//        else if(eret||j||jr)
//        begin
//            nextState<=3'd1;
//        end
        else if((div||divu)&&divStatus==1'b0)
        begin
        nextState=3'd3;
        divStatus=1'b1;
        end
        else begin
            nextState=3'd4;
        end        
    end
    3'd4:begin
         if((div&&divBusy)||(divu&&divuBusy))  begin
         nextState=3'd4;
         end
        else if(jal||jalr||(beq&&zFlag)||(bne&&!zFlag)||(bgez&&!nFlag))
        begin
        nextState=3'd5;
        end
        else begin
        nextState=3'd6;
        end
    end
     3'd5:begin
          nextState=3'd6;  
     end       
     3'd6:begin
        nextState=3'd1;
     end
    endcase
end

endmodule

















