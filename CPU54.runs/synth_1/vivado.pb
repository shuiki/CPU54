
}
Command: %s
53*	vivadotcl2L
8synth_design -top sccomp_dataflow -part xc7a100tcsg324-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-349h px? 
?
%s*synth2?
wStarting RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:07 . Memory (MB): peak = 305.387 ; gain = 98.426
2default:defaulth px? 
?
synthesizing module '%s'638*oasys2#
sccomp_dataflow2default:default2Y
CD:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/sccomp_dataflow.v2default:default2
232default:default8@Z8-638h px? 
?
synthesizing module '%s'638*oasys2
CLK_DIV2default:default2Q
;D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/CLK_DIV.v2default:default2
222default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
CLK_DIV2default:default2
12default:default2
12default:default2Q
;D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/CLK_DIV.v2default:default2
222default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2
IMEM2default:default2N
8D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/IMEM.v2default:default2
232default:default8@Z8-638h px? 
?
synthesizing module '%s'638*oasys2"
dist_mem_gen_02default:default2?
lD:/vivado_projects/CPU54/CPU54.runs/synth_1/.Xil/Vivado-16696-LAPTOP-KS3IFLBU/realtime/dist_mem_gen_0_stub.v2default:default2
62default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2"
dist_mem_gen_02default:default2
22default:default2
12default:default2?
lD:/vivado_projects/CPU54/CPU54.runs/synth_1/.Xil/Vivado-16696-LAPTOP-KS3IFLBU/realtime/dist_mem_gen_0_stub.v2default:default2
62default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
IMEM2default:default2
32default:default2
12default:default2N
8D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/IMEM.v2default:default2
232default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2
DMEM2default:default2N
8D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/DMEM.v2default:default2
232default:default8@Z8-638h px? 
?
qTrying to implement RAM '%s' in registers. Block RAM or DRAM implementation is not possible; see log for reasons.3901*oasys2
	D_mem_reg2default:defaultZ8-4767h px? 
U
%s
*synth2=
)Reason is one or more of the following :
2default:defaulth p
x
? 
?
%s
*synth2?
~	1: RAM has multiple writes via different ports in same process. If RAM inferencing intended, write to one port per process. 
2default:defaulth p
x
? 
j
%s
*synth2R
>	2: Unable to determine number of words or word size in RAM. 
2default:defaulth p
x
? 
T
%s
*synth2<
(	3: No valid read/write found for RAM. 
2default:defaulth p
x
? 
U
%s
*synth2=
)RAM "D_mem_reg" dissolved into registers
2default:defaulth p
x
? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
DMEM2default:default2
42default:default2
12default:default2N
8D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/DMEM.v2default:default2
232default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2
CPU2default:default2M
7D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/CPU.v2default:default2
232default:default8@Z8-638h px? 
S
%s
*synth2;
'	Parameter addiOp bound to: 6'b001000 
2default:defaulth p
x
? 
T
%s
*synth2<
(	Parameter addiuOp bound to: 6'b001001 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter andiOp bound to: 6'b001100 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter oriOp bound to: 6'b001101 
2default:defaulth p
x
? 
T
%s
*synth2<
(	Parameter sltiuOp bound to: 6'b001011 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter luiOp bound to: 6'b001111 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter xoriOp bound to: 6'b001110 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter sltiOp bound to: 6'b001010 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter adduOp bound to: 6'b000000 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter adduFunc bound to: 6'b100001 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter andOp bound to: 6'b000000 
2default:defaulth p
x
? 
T
%s
*synth2<
(	Parameter andFunc bound to: 6'b100100 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter beqOp bound to: 6'b000100 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter bneOp bound to: 6'b000101 
2default:defaulth p
x
? 
P
%s
*synth28
$	Parameter jOp bound to: 6'b000010 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter jalOp bound to: 6'b000011 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter jrOp bound to: 6'b000000 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter jrFunc bound to: 6'b001000 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter lwOp bound to: 6'b100011 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter xorOp bound to: 6'b000000 
2default:defaulth p
x
? 
T
%s
*synth2<
(	Parameter xorFunc bound to: 6'b100110 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter norOp bound to: 6'b000000 
2default:defaulth p
x
? 
T
%s
*synth2<
(	Parameter norFunc bound to: 6'b100111 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter orOp bound to: 6'b000000 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter orFunc bound to: 6'b100101 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter sllOp bound to: 6'b000000 
2default:defaulth p
x
? 
T
%s
*synth2<
(	Parameter sllFunc bound to: 6'b000000 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter sllvOp bound to: 6'b000000 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter sllvFunc bound to: 6'b000100 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter sltuOp bound to: 6'b000000 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter sltuFunc bound to: 6'b101011 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter sraOp bound to: 6'b000000 
2default:defaulth p
x
? 
T
%s
*synth2<
(	Parameter sraFunc bound to: 6'b000011 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter srlOp bound to: 6'b000000 
2default:defaulth p
x
? 
T
%s
*synth2<
(	Parameter srlFunc bound to: 6'b000010 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter subuOp bound to: 6'b000000 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter subuFunc bound to: 6'b100011 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter swOp bound to: 6'b101011 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter addOp bound to: 6'b000000 
2default:defaulth p
x
? 
T
%s
*synth2<
(	Parameter addFunc bound to: 6'b100000 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter subOp bound to: 6'b000000 
2default:defaulth p
x
? 
T
%s
*synth2<
(	Parameter subFunc bound to: 6'b100010 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter sltOp bound to: 6'b000000 
2default:defaulth p
x
? 
T
%s
*synth2<
(	Parameter sltFunc bound to: 6'b101010 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter srlvOp bound to: 6'b000000 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter srlvFunc bound to: 6'b000110 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter sravOp bound to: 6'b000000 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter sravFunc bound to: 6'b000111 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter clzOp bound to: 6'b011100 
2default:defaulth p
x
? 
T
%s
*synth2<
(	Parameter clzFunc bound to: 6'b100000 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter divuOp bound to: 6'b000000 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter divuFunc bound to: 6'b011011 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter eretOp bound to: 6'b010000 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter eretFunc bound to: 6'b011000 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter jalrOp bound to: 6'b000000 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter jalrFunc bound to: 6'b001001 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter lbOp bound to: 6'b100000 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter lbuOp bound to: 6'b100100 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter lhuOp bound to: 6'b100101 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter sbOp bound to: 6'b101000 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter shOp bound to: 6'b101001 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter lhOp bound to: 6'b100001 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter mfc0Op bound to: 6'b010000 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter mfc0Func bound to: 6'b000000 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter mfc0Sp bound to: 5'b00000 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter mfhiOp bound to: 6'b000000 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter mfhiFunc bound to: 6'b010000 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter mfloOp bound to: 6'b000000 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter mfloFunc bound to: 6'b010010 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter mtc0Op bound to: 6'b010000 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter mtc0Func bound to: 6'b000000 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter mtc0Sp bound to: 5'b00100 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter mthiOp bound to: 6'b000000 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter mthiFunc bound to: 6'b010001 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter mtloOp bound to: 6'b000000 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter mtloFunc bound to: 6'b010011 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter mulOp bound to: 6'b011100 
2default:defaulth p
x
? 
T
%s
*synth2<
(	Parameter mulFunc bound to: 6'b000010 
2default:defaulth p
x
? 
T
%s
*synth2<
(	Parameter multuOp bound to: 6'b000000 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter multuFunc bound to: 6'b011001 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter syscallOp bound to: 6'b000000 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter syscallFunc bound to: 6'b001100 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter teqOp bound to: 6'b000000 
2default:defaulth p
x
? 
T
%s
*synth2<
(	Parameter teqFunc bound to: 6'b110100 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter bgezOp bound to: 6'b000001 
2default:defaulth p
x
? 
T
%s
*synth2<
(	Parameter breakOp bound to: 6'b000000 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter breakFunc bound to: 6'b001101 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter divOp bound to: 6'b000000 
2default:defaulth p
x
? 
T
%s
*synth2<
(	Parameter divFunc bound to: 6'b011010 
2default:defaulth p
x
? 
O
%s
*synth27
#	Parameter ADDU bound to: 4'b0000 
2default:defaulth p
x
? 
N
%s
*synth26
"	Parameter ADD bound to: 4'b0010 
2default:defaulth p
x
? 
O
%s
*synth27
#	Parameter SUBU bound to: 4'b0001 
2default:defaulth p
x
? 
N
%s
*synth26
"	Parameter SUB bound to: 4'b0011 
2default:defaulth p
x
? 
N
%s
*synth26
"	Parameter AND bound to: 4'b0100 
2default:defaulth p
x
? 
M
%s
*synth25
!	Parameter OR bound to: 4'b0101 
2default:defaulth p
x
? 
N
%s
*synth26
"	Parameter XOR bound to: 4'b0110 
2default:defaulth p
x
? 
N
%s
*synth26
"	Parameter NOR bound to: 4'b0111 
2default:defaulth p
x
? 
N
%s
*synth26
"	Parameter LUI bound to: 4'b1000 
2default:defaulth p
x
? 
N
%s
*synth26
"	Parameter SLT bound to: 4'b1011 
2default:defaulth p
x
? 
O
%s
*synth27
#	Parameter SLTU bound to: 4'b1010 
2default:defaulth p
x
? 
N
%s
*synth26
"	Parameter SRA bound to: 4'b1100 
2default:defaulth p
x
? 
N
%s
*synth26
"	Parameter SLL bound to: 4'b1110 
2default:defaulth p
x
? 
N
%s
*synth26
"	Parameter SRL bound to: 4'b1101 
2default:defaulth p
x
? 
N
%s
*synth26
"	Parameter CLZ bound to: 4'b1111 
2default:defaulth p
x
? 
?
synthesizing module '%s'638*oasys2
DIV2default:default2M
7D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/DIV.v2default:default2
232default:default8@Z8-638h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2
	reg_r_reg2default:default2
DIV2default:default2M
7D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/DIV.v2default:default2
422default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2

r_sign_reg2default:default2
DIV2default:default2M
7D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/DIV.v2default:default2
422default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2!
mdividend_reg2default:default2
DIV2default:default2M
7D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/DIV.v2default:default2
452default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2 
mdivisor_reg2default:default2
DIV2default:default2M
7D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/DIV.v2default:default2
462default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2
	reg_q_reg2default:default2
DIV2default:default2M
7D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/DIV.v2default:default2
422default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2
	reg_b_reg2default:default2
DIV2default:default2M
7D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/DIV.v2default:default2
422default:default8@Z8-5788h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
DIV2default:default2
52default:default2
12default:default2M
7D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/DIV.v2default:default2
232default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2
DIVU2default:default2N
8D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/DIVU.v2default:default2
242default:default8@Z8-638h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2
	reg_r_reg2default:default2
DIVU2default:default2N
8D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/DIVU.v2default:default2
412default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2

r_sign_reg2default:default2
DIVU2default:default2N
8D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/DIVU.v2default:default2
412default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2
	reg_q_reg2default:default2
DIVU2default:default2N
8D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/DIVU.v2default:default2
412default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2
	reg_b_reg2default:default2
DIVU2default:default2N
8D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/DIVU.v2default:default2
412default:default8@Z8-5788h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
DIVU2default:default2
62default:default2
12default:default2N
8D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/DIVU.v2default:default2
242default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2
MULT2default:default2N
8D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/MULT.v2default:default2
232default:default8@Z8-638h px? 
?
synthesizing module '%s'638*oasys2
MULTU2default:default2O
9D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/MULTU.v2default:default2
222default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
MULTU2default:default2
72default:default2
12default:default2O
9D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/MULTU.v2default:default2
222default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
MULT2default:default2
82default:default2
12default:default2N
8D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/MULT.v2default:default2
232default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2
CP02default:default2M
7D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/CP0.v2default:default2
242default:default8@Z8-638h px? 
V
%s
*synth2>
*	Parameter STATUSADDR bound to: 5'b01100 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter EPCADDR bound to: 5'b01110 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter CAUSEADDR bound to: 5'b01101 
2default:defaulth p
x
? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2"
cp0Reg_reg[31]2default:default2
CP02default:default2M
7D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/CP0.v2default:default2
462default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2"
cp0Reg_reg[30]2default:default2
CP02default:default2M
7D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/CP0.v2default:default2
462default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2"
cp0Reg_reg[29]2default:default2
CP02default:default2M
7D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/CP0.v2default:default2
462default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2"
cp0Reg_reg[28]2default:default2
CP02default:default2M
7D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/CP0.v2default:default2
462default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2"
cp0Reg_reg[27]2default:default2
CP02default:default2M
7D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/CP0.v2default:default2
462default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2"
cp0Reg_reg[26]2default:default2
CP02default:default2M
7D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/CP0.v2default:default2
462default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2"
cp0Reg_reg[25]2default:default2
CP02default:default2M
7D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/CP0.v2default:default2
462default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2"
cp0Reg_reg[24]2default:default2
CP02default:default2M
7D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/CP0.v2default:default2
462default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2"
cp0Reg_reg[23]2default:default2
CP02default:default2M
7D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/CP0.v2default:default2
462default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2"
cp0Reg_reg[22]2default:default2
CP02default:default2M
7D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/CP0.v2default:default2
462default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2"
cp0Reg_reg[21]2default:default2
CP02default:default2M
7D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/CP0.v2default:default2
462default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2"
cp0Reg_reg[20]2default:default2
CP02default:default2M
7D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/CP0.v2default:default2
462default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2"
cp0Reg_reg[19]2default:default2
CP02default:default2M
7D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/CP0.v2default:default2
462default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2"
cp0Reg_reg[18]2default:default2
CP02default:default2M
7D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/CP0.v2default:default2
462default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2"
cp0Reg_reg[17]2default:default2
CP02default:default2M
7D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/CP0.v2default:default2
462default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2"
cp0Reg_reg[16]2default:default2
CP02default:default2M
7D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/CP0.v2default:default2
462default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2"
cp0Reg_reg[15]2default:default2
CP02default:default2M
7D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/CP0.v2default:default2
462default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2"
cp0Reg_reg[14]2default:default2
CP02default:default2M
7D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/CP0.v2default:default2
462default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2"
cp0Reg_reg[13]2default:default2
CP02default:default2M
7D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/CP0.v2default:default2
462default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2"
cp0Reg_reg[11]2default:default2
CP02default:default2M
7D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/CP0.v2default:default2
462default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2"
cp0Reg_reg[10]2default:default2
CP02default:default2M
7D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/CP0.v2default:default2
462default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2!
cp0Reg_reg[9]2default:default2
CP02default:default2M
7D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/CP0.v2default:default2
462default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2!
cp0Reg_reg[8]2default:default2
CP02default:default2M
7D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/CP0.v2default:default2
462default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2!
cp0Reg_reg[7]2default:default2
CP02default:default2M
7D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/CP0.v2default:default2
462default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2!
cp0Reg_reg[6]2default:default2
CP02default:default2M
7D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/CP0.v2default:default2
462default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2!
cp0Reg_reg[5]2default:default2
CP02default:default2M
7D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/CP0.v2default:default2
462default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2!
cp0Reg_reg[4]2default:default2
CP02default:default2M
7D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/CP0.v2default:default2
462default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2!
cp0Reg_reg[3]2default:default2
CP02default:default2M
7D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/CP0.v2default:default2
462default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2!
cp0Reg_reg[2]2default:default2
CP02default:default2M
7D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/CP0.v2default:default2
462default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2!
cp0Reg_reg[1]2default:default2
CP02default:default2M
7D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/CP0.v2default:default2
462default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2!
cp0Reg_reg[0]2default:default2
CP02default:default2M
7D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/CP0.v2default:default2
462default:default8@Z8-5788h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
CP02default:default2
92default:default2
12default:default2M
7D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/CP0.v2default:default2
242default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2
PcReg2default:default2O
9D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/PCreg.v2default:default2
232default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
PcReg2default:default2
102default:default2
12default:default2O
9D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/PCreg.v2default:default2
232default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2
ALU2default:default2M
7D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/ALU.v2default:default2
1262default:default8@Z8-638h px? 
O
%s
*synth27
#	Parameter ADDU bound to: 4'b0000 
2default:defaulth p
x
? 
N
%s
*synth26
"	Parameter ADD bound to: 4'b0010 
2default:defaulth p
x
? 
O
%s
*synth27
#	Parameter SUBU bound to: 4'b0001 
2default:defaulth p
x
? 
N
%s
*synth26
"	Parameter SUB bound to: 4'b0011 
2default:defaulth p
x
? 
N
%s
*synth26
"	Parameter AND bound to: 4'b0100 
2default:defaulth p
x
? 
M
%s
*synth25
!	Parameter OR bound to: 4'b0101 
2default:defaulth p
x
? 
N
%s
*synth26
"	Parameter XOR bound to: 4'b0110 
2default:defaulth p
x
? 
N
%s
*synth26
"	Parameter NOR bound to: 4'b0111 
2default:defaulth p
x
? 
N
%s
*synth26
"	Parameter LUI bound to: 4'b1000 
2default:defaulth p
x
? 
N
%s
*synth26
"	Parameter SLT bound to: 4'b1011 
2default:defaulth p
x
? 
O
%s
*synth27
#	Parameter SLTU bound to: 4'b1010 
2default:defaulth p
x
? 
N
%s
*synth26
"	Parameter SRA bound to: 4'b1100 
2default:defaulth p
x
? 
N
%s
*synth26
"	Parameter SLL bound to: 4'b1110 
2default:defaulth p
x
? 
N
%s
*synth26
"	Parameter SRL bound to: 4'b1101 
2default:defaulth p
x
? 
N
%s
*synth26
"	Parameter CLZ bound to: 4'b1111 
2default:defaulth p
x
? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
ALU2default:default2
112default:default2
12default:default2M
7D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/ALU.v2default:default2
1262default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2
RegFile2default:default2Q
;D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/RegFile.v2default:default2
1032default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
RegFile2default:default2
122default:default2
12default:default2Q
;D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/RegFile.v2default:default2
1032default:default8@Z8-256h px? 
?
-case statement is not full and has no default155*oasys2M
7D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/CPU.v2default:default2
4882default:default8@Z8-155h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
CPU2default:default2
132default:default2
12default:default2M
7D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/CPU.v2default:default2
232default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2
seg7x162default:default2Q
;D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/seg7x16.v2default:default2
212default:default8@Z8-638h px? 
?
-case statement is not full and has no default155*oasys2Q
;D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/seg7x16.v2default:default2
862default:default8@Z8-155h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
seg7x162default:default2
142default:default2
12default:default2Q
;D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/seg7x16.v2default:default2
212default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2#
sccomp_dataflow2default:default2
152default:default2
12default:default2Y
CD:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/sccomp_dataflow.v2default:default2
232default:default8@Z8-256h px? 
w
!design %s has unconnected port %s3331*oasys2
MULTU2default:default2
clk2default:defaultZ8-3331h px? 
y
!design %s has unconnected port %s3331*oasys2
MULTU2default:default2
reset2default:defaultZ8-3331h px? 
~
!design %s has unconnected port %s3331*oasys2
DMEM2default:default2
DM_addr[31]2default:defaultZ8-3331h px? 
~
!design %s has unconnected port %s3331*oasys2
DMEM2default:default2
DM_addr[30]2default:defaultZ8-3331h px? 
~
!design %s has unconnected port %s3331*oasys2
DMEM2default:default2
DM_addr[29]2default:defaultZ8-3331h px? 
~
!design %s has unconnected port %s3331*oasys2
DMEM2default:default2
DM_addr[28]2default:defaultZ8-3331h px? 
~
!design %s has unconnected port %s3331*oasys2
DMEM2default:default2
DM_addr[27]2default:defaultZ8-3331h px? 
~
!design %s has unconnected port %s3331*oasys2
DMEM2default:default2
DM_addr[26]2default:defaultZ8-3331h px? 
~
!design %s has unconnected port %s3331*oasys2
DMEM2default:default2
DM_addr[25]2default:defaultZ8-3331h px? 
~
!design %s has unconnected port %s3331*oasys2
DMEM2default:default2
DM_addr[24]2default:defaultZ8-3331h px? 
~
!design %s has unconnected port %s3331*oasys2
DMEM2default:default2
DM_addr[23]2default:defaultZ8-3331h px? 
~
!design %s has unconnected port %s3331*oasys2
DMEM2default:default2
DM_addr[22]2default:defaultZ8-3331h px? 
~
!design %s has unconnected port %s3331*oasys2
DMEM2default:default2
DM_addr[21]2default:defaultZ8-3331h px? 
~
!design %s has unconnected port %s3331*oasys2
DMEM2default:default2
DM_addr[20]2default:defaultZ8-3331h px? 
~
!design %s has unconnected port %s3331*oasys2
DMEM2default:default2
DM_addr[19]2default:defaultZ8-3331h px? 
~
!design %s has unconnected port %s3331*oasys2
DMEM2default:default2
DM_addr[18]2default:defaultZ8-3331h px? 
~
!design %s has unconnected port %s3331*oasys2
DMEM2default:default2
DM_addr[17]2default:defaultZ8-3331h px? 
~
!design %s has unconnected port %s3331*oasys2
DMEM2default:default2
DM_addr[16]2default:defaultZ8-3331h px? 
~
!design %s has unconnected port %s3331*oasys2
DMEM2default:default2
DM_addr[15]2default:defaultZ8-3331h px? 
~
!design %s has unconnected port %s3331*oasys2
DMEM2default:default2
DM_addr[14]2default:defaultZ8-3331h px? 
~
!design %s has unconnected port %s3331*oasys2
DMEM2default:default2
DM_addr[13]2default:defaultZ8-3331h px? 
~
!design %s has unconnected port %s3331*oasys2
DMEM2default:default2
DM_addr[12]2default:defaultZ8-3331h px? 
~
!design %s has unconnected port %s3331*oasys2
DMEM2default:default2
DM_addr[11]2default:defaultZ8-3331h px? 
?
%s*synth2?
xFinished RTL Elaboration : Time (s): cpu = 00:00:08 ; elapsed = 00:00:11 . Memory (MB): peak = 461.648 ; gain = 254.688
2default:defaulth px? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:10 ; elapsed = 00:00:13 . Memory (MB): peak = 461.648 ; gain = 254.688
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
PCould not resolve non-primitive black box cell '%s' instantiated as '%s' [%s:%s]295*project2"
dist_mem_gen_02default:default2%
imemory/instr_mem2default:default2N
8D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/IMEM.v2default:default2
282default:default8Z1-486h px? 
W
Loading part %s157*device2$
xc7a100tcsg324-12default:defaultZ21-403h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
oD:/vivado_projects/CPU54/CPU54.runs/synth_1/.Xil/Vivado-16696-LAPTOP-KS3IFLBU/dcp/dist_mem_gen_0_in_context.xdc2default:default2%
imemory/instr_mem2default:defaultZ20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
oD:/vivado_projects/CPU54/CPU54.runs/synth_1/.Xil/Vivado-16696-LAPTOP-KS3IFLBU/dcp/dist_mem_gen_0_in_context.xdc2default:default2%
imemory/instr_mem2default:defaultZ20-847h px? 
?
Parsing XDC File [%s]
179*designutils2M
9D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/icf.xdc2default:defaultZ20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2M
9D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/icf.xdc2default:defaultZ20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2M
9D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/icf.xdc2default:default25
!.Xil/sccomp_dataflow_propImpl.xdc2default:defaultZ1-236h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0082default:default2
776.3282default:default2
0.0002default:defaultZ17-268h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
~Finished Constraint Validation : Time (s): cpu = 00:00:20 ; elapsed = 00:00:24 . Memory (MB): peak = 776.328 ; gain = 569.367
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Loading part: xc7a100tcsg324-1
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:20 ; elapsed = 00:00:24 . Memory (MB): peak = 776.328 ; gain = 569.367
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:20 ; elapsed = 00:00:24 . Memory (MB): peak = 776.328 ; gain = 569.367
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
}HDL ADVISOR - The operator resource <%s> is shared. To prevent sharing consider applying a KEEP on the output of the operator4231*oasys2
adder2default:default2M
7D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/DIV.v2default:default2
422default:default8@Z8-5818h px? 
t
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
busy2default:defaultZ8-5546h px? 
?
}HDL ADVISOR - The operator resource <%s> is shared. To prevent sharing consider applying a KEEP on the output of the operator4231*oasys2
adder2default:default2N
8D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/DIVU.v2default:default2
412default:default8@Z8-5818h px? 
t
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
busy2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
cp0Reg_reg[31]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
cp0Reg_reg[30]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
cp0Reg_reg[29]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
cp0Reg_reg[28]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
cp0Reg_reg[27]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
cp0Reg_reg[26]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
cp0Reg_reg[25]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
cp0Reg_reg[24]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
cp0Reg_reg[23]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
cp0Reg_reg[22]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
cp0Reg_reg[21]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
cp0Reg_reg[20]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
cp0Reg_reg[19]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
cp0Reg_reg[18]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
cp0Reg_reg[17]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
cp0Reg_reg[16]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
cp0Reg_reg[15]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
cp0Reg_reg[14]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
cp0Reg_reg[13]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
cp0Reg_reg[12]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
cp0Reg_reg[11]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
cp0Reg_reg[10]2default:defaultZ8-5546h px? 
}
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2!
cp0Reg_reg[9]2default:defaultZ8-5546h px? 
}
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2!
cp0Reg_reg[8]2default:defaultZ8-5546h px? 
}
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2!
cp0Reg_reg[7]2default:defaultZ8-5546h px? 
}
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2!
cp0Reg_reg[6]2default:defaultZ8-5546h px? 
}
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2!
cp0Reg_reg[5]2default:defaultZ8-5546h px? 
}
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2!
cp0Reg_reg[4]2default:defaultZ8-5546h px? 
}
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2!
cp0Reg_reg[3]2default:defaultZ8-5546h px? 
}
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2!
cp0Reg_reg[2]2default:defaultZ8-5546h px? 
}
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2!
cp0Reg_reg[1]2default:defaultZ8-5546h px? 
}
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2!
cp0Reg_reg[0]2default:defaultZ8-5546h px? 
?
}HDL ADVISOR - The operator resource <%s> is shared. To prevent sharing consider applying a KEEP on the output of the operator4231*oasys2
adder2default:default2M
7D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/ALU.v2default:default2
1522default:default8@Z8-5818h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
zero02default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
carry2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
carry2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
carry2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
array_reg_reg[31]2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
array_reg_reg[30]2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
array_reg_reg[29]2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
array_reg_reg[28]2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
array_reg_reg[27]2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
array_reg_reg[26]2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
array_reg_reg[25]2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
array_reg_reg[24]2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
array_reg_reg[23]2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
array_reg_reg[22]2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
array_reg_reg[21]2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
array_reg_reg[20]2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
array_reg_reg[19]2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
array_reg_reg[18]2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
array_reg_reg[17]2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
array_reg_reg[16]2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
array_reg_reg[15]2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
array_reg_reg[14]2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
array_reg_reg[13]2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
array_reg_reg[12]2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
array_reg_reg[11]2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
array_reg_reg[10]2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
array_reg_reg[9]2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
array_reg_reg[8]2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
array_reg_reg[7]2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
array_reg_reg[6]2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
array_reg_reg[5]2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
array_reg_reg[4]2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
array_reg_reg[3]2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
array_reg_reg[2]2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
array_reg_reg[1]2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
array_reg_reg[0]2default:defaultZ8-5546h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2 
curState_reg2default:default2
CPU2default:defaultZ8-802h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
IR02default:default2
32default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
oFlag2default:default2
32default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
	nextState2default:default2
32default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
	nextState2default:default2
12default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
	nextState2default:default2
12default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
IR02default:default2
32default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
oFlag2default:default2
32default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
	nextState2default:default2
32default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
	nextState2default:default2
12default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
	nextState2default:default2
12default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
dm_w2default:default2
12default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
dm_r2default:default2
12default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
cause22default:default2
12default:default2
52default:defaultZ8-5544h px? 
w
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
o_seg_r2default:defaultZ8-5546h px? 
?
!inferring latch for variable '%s'327*oasys2
	carry_reg2default:default2M
7D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/ALU.v2default:default2
1642default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
negative_reg2default:default2M
7D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/ALU.v2default:default2
2182default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
overflow_reg2default:default2M
7D:/vivado_projects/CPU54/CPU54.srcs/sources_1/new/ALU.v2default:default2
1722default:default8@Z8-327h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                  iSTATE |                           000001 |                              001
2default:defaulth p
x
? 
?
%s
*synth2s
_                 iSTATE0 |                           000010 |                              010
2default:defaulth p
x
? 
?
%s
*synth2s
_                 iSTATE1 |                           000100 |                              011
2default:defaulth p
x
? 
?
%s
*synth2s
_                 iSTATE2 |                           010000 |                              100
2default:defaulth p
x
? 
?
%s
*synth2s
_                 iSTATE3 |                           100000 |                              101
2default:defaulth p
x
? 
?
%s
*synth2s
_                 iSTATE4 |                           001000 |                              110
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2 
curState_reg2default:default2
one-hot2default:default2
CPU2default:defaultZ8-3354h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:34 ; elapsed = 00:00:38 . Memory (MB): peak = 776.328 ; gain = 569.367
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
d
%s
*synth2L
8+------+----------------------+------------+----------+
2default:defaulth p
x
? 
d
%s
*synth2L
8|      |RTL Partition         |Replication |Instances |
2default:defaulth p
x
? 
d
%s
*synth2L
8+------+----------------------+------------+----------+
2default:defaulth p
x
? 
d
%s
*synth2L
8|1     |DMEM__GB0             |           1|     39985|
2default:defaulth p
x
? 
d
%s
*synth2L
8|2     |DMEM__GB1             |           1|     12612|
2default:defaulth p
x
? 
d
%s
*synth2L
8|3     |DMEM__GB2             |           1|     15762|
2default:defaulth p
x
? 
d
%s
*synth2L
8|4     |DMEM__GB3             |           1|     19428|
2default:defaulth p
x
? 
d
%s
*synth2L
8|5     |DMEM__GB4             |           1|     24577|
2default:defaulth p
x
? 
d
%s
*synth2L
8|6     |CPU                   |           1|     30690|
2default:defaulth p
x
? 
d
%s
*synth2L
8|7     |datapath__32__GD      |           1|        95|
2default:defaulth p
x
? 
d
%s
*synth2L
8|8     |sccomp_dataflow__GCB2 |           1|       403|
2default:defaulth p
x
? 
d
%s
*synth2L
8+------+----------------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  32 Input     64 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     64 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     33 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     33 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 11    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     32 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     10 Bit       Adders := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      6 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      5 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 1     
2default:defaulth p
x
? 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit         XORs := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 73    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 642   
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                6 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                5 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 4     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     64 Bit        Muxes := 63    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     33 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 58    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  16 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   7 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     32 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     32 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 3208  
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  16 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      6 Bit        Muxes := 26    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input      6 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  11 Input      6 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      5 Bit        Muxes := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  15 Input      4 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      4 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      1 Bit        Muxes := 641   
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 91    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  16 Input      1 Bit        Muxes := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  17 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input      1 Bit        Muxes := 4     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Hierarchical RTL Component report 
2default:defaulth p
x
? 
D
%s
*synth2,
Module sccomp_dataflow 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 2     
2default:defaulth p
x
? 
9
%s
*synth2!
Module DMEM 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     10 Bit       Adders := 3     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 641   
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 3207  
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      1 Bit        Muxes := 641   
2default:defaulth p
x
? 
8
%s
*synth2 
Module DIV 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     33 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      6 Bit       Adders := 1     
2default:defaulth p
x
? 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                6 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     33 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      6 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 4     
2default:defaulth p
x
? 
9
%s
*synth2!
Module DIVU 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     33 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      5 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                5 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     33 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 4     
2default:defaulth p
x
? 
=
%s
*synth2%
Module MULTU__1 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  32 Input     64 Bit       Adders := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     64 Bit        Muxes := 31    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
Module MULT 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     64 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 2     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     64 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 2     
2default:defaulth p
x
? 
:
%s
*synth2"
Module MULTU 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  32 Input     64 Bit       Adders := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     64 Bit        Muxes := 31    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
? 
8
%s
*synth2 
Module CP0 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 32    
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 36    
2default:defaulth p
x
? 
:
%s
*synth2"
Module PcReg 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
? 
8
%s
*synth2 
Module ALU 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     33 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     32 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      5 Bit       Adders := 1     
2default:defaulth p
x
? 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit         XORs := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  16 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input      6 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      6 Bit        Muxes := 25    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  16 Input      1 Bit        Muxes := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  17 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
<
%s
*synth2$
Module RegFile 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 32    
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 32    
2default:defaulth p
x
? 
8
%s
*synth2 
Module CPU 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 40    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   7 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     32 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     32 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  11 Input      6 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      5 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  15 Input      4 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      4 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 10    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input      1 Bit        Muxes := 4     
2default:defaulth p
x
? 
<
%s
*synth2$
Module seg7x16 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  16 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2k
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4031*oasys2
22default:defaultZ8-5580h px? 
?
%s*synth2?
?Start Parallel Synthesis Optimization  : Time (s): cpu = 00:00:36 ; elapsed = 00:00:40 . Memory (MB): peak = 776.328 ; gain = 569.367
2default:defaulth px? 
?
%s
*synth2?
?INFO: Vivado Synthesis caught shared memory exception 'ϵͳ?Ҳ???ָ?????ļ???'. Continuing without using shared memory (or continuing without helper parallel flow)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
N
%s
*synth26
"Start Cross Boundary Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
carry2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
carry2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
carry2default:default2
322default:default2
252default:defaultZ8-5545h px? 
w
!design %s has unconnected port %s3331*oasys2
MULTU2default:default2
clk2default:defaultZ8-3331h px? 
y
!design %s has unconnected port %s3331*oasys2
MULTU2default:default2
reset2default:defaultZ8-3331h px? 
z
!design %s has unconnected port %s3331*oasys2
MULTU__12default:default2
clk2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
MULTU__12default:default2
reset2default:defaultZ8-3331h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary Optimization : Time (s): cpu = 00:00:47 ; elapsed = 00:01:04 . Memory (MB): peak = 776.328 ; gain = 569.367
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
~Finished Parallel Reinference  : Time (s): cpu = 00:00:47 ; elapsed = 00:01:04 . Memory (MB): peak = 776.328 ; gain = 569.367
2default:defaulth px? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
d
%s
*synth2L
8+------+----------------------+------------+----------+
2default:defaulth p
x
? 
d
%s
*synth2L
8|      |RTL Partition         |Replication |Instances |
2default:defaulth p
x
? 
d
%s
*synth2L
8+------+----------------------+------------+----------+
2default:defaulth p
x
? 
d
%s
*synth2L
8|1     |DMEM__GB0             |           1|     40432|
2default:defaulth p
x
? 
d
%s
*synth2L
8|2     |DMEM__GB1             |           1|     13009|
2default:defaulth p
x
? 
d
%s
*synth2L
8|3     |DMEM__GB2             |           1|     16291|
2default:defaulth p
x
? 
d
%s
*synth2L
8|4     |DMEM__GB3             |           1|     19930|
2default:defaulth p
x
? 
d
%s
*synth2L
8|5     |DMEM__GB4             |           1|     25262|
2default:defaulth p
x
? 
d
%s
*synth2L
8|6     |CPU                   |           1|     36075|
2default:defaulth p
x
? 
d
%s
*synth2L
8|7     |datapath__32__GD      |           1|        95|
2default:defaulth p
x
? 
d
%s
*synth2L
8|8     |sccomp_dataflow__GCB2 |           1|       652|
2default:defaulth p
x
? 
d
%s
*synth2L
8+------+----------------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
D
%s
*synth2,
Start Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2,
i_6/\seg/o_seg_r_reg[7] 2default:defaultZ8-3333h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2"
npc_reg__0i_782default:default2
FDSE_12default:default2"
npc_reg__0i_472default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2"
npc_reg__0i_772default:default2
FDSE_12default:default2"
npc_reg__0i_472default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2"
npc_reg__0i_762default:default2
FDSE_12default:default2"
npc_reg__0i_472default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2"
npc_reg__0i_752default:default2
FDSE_12default:default2"
npc_reg__0i_472default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2"
npc_reg__0i_742default:default2
FDSE_12default:default2"
npc_reg__0i_472default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2"
npc_reg__0i_732default:default2
FDSE_12default:default2"
npc_reg__0i_472default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2"
npc_reg__0i_722default:default2
FDSE_12default:default2"
npc_reg__0i_472default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2"
npc_reg__0i_712default:default2
FDSE_12default:default2"
npc_reg__0i_472default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2"
npc_reg__0i_702default:default2
FDSE_12default:default2"
npc_reg__0i_472default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2"
npc_reg__0i_692default:default2
FDSE_12default:default2"
npc_reg__0i_472default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2"
npc_reg__0i_682default:default2
FDSE_12default:default2"
npc_reg__0i_472default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2"
npc_reg__0i_672default:default2
FDSE_12default:default2"
npc_reg__0i_472default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2"
npc_reg__0i_662default:default2
FDSE_12default:default2"
npc_reg__0i_472default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2"
npc_reg__0i_652default:default2
FDSE_12default:default2"
npc_reg__0i_472default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2"
npc_reg__0i_642default:default2
FDSE_12default:default2"
npc_reg__0i_472default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2"
npc_reg__0i_632default:default2
FDSE_12default:default2"
npc_reg__0i_472default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2"
npc_reg__0i_622default:default2
FDSE_12default:default2"
npc_reg__0i_472default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2"
npc_reg__0i_612default:default2
FDSE_12default:default2"
npc_reg__0i_472default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2"
npc_reg__0i_602default:default2
FDSE_12default:default2"
npc_reg__0i_472default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2"
npc_reg__0i_592default:default2
FDSE_12default:default2"
npc_reg__0i_472default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2"
npc_reg__0i_582default:default2
FDSE_12default:default2"
npc_reg__0i_472default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2"
npc_reg__0i_572default:default2
FDSE_12default:default2"
npc_reg__0i_472default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2"
npc_reg__0i_562default:default2
FDSE_12default:default2"
npc_reg__0i_472default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2"
npc_reg__0i_552default:default2
FDSE_12default:default2"
npc_reg__0i_472default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2"
npc_reg__0i_542default:default2
FDSE_12default:default2"
npc_reg__0i_472default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2"
npc_reg__0i_532default:default2
FDSE_12default:default2"
npc_reg__0i_472default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2"
npc_reg__0i_522default:default2
FDSE_12default:default2"
npc_reg__0i_472default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2"
npc_reg__0i_512default:default2
FDSE_12default:default2"
npc_reg__0i_472default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2"
npc_reg__0i_502default:default2
FDSE_12default:default2"
npc_reg__0i_472default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2"
npc_reg__0i_492default:default2
FDSE_12default:default2"
npc_reg__0i_472default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2"
npc_reg__0i_482default:default2
FDSE_12default:default2"
npc_reg__0i_472default:defaultZ8-3886h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
mdividend_reg[30]2default:default2
DIV2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
mdividend_reg[29]2default:default2
DIV2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
mdividend_reg[28]2default:default2
DIV2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
mdividend_reg[27]2default:default2
DIV2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
mdividend_reg[26]2default:default2
DIV2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
mdividend_reg[25]2default:default2
DIV2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
mdividend_reg[24]2default:default2
DIV2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
mdividend_reg[23]2default:default2
DIV2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
mdividend_reg[22]2default:default2
DIV2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
mdividend_reg[21]2default:default2
DIV2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
mdividend_reg[20]2default:default2
DIV2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
mdividend_reg[19]2default:default2
DIV2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
mdividend_reg[18]2default:default2
DIV2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
mdividend_reg[17]2default:default2
DIV2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
mdividend_reg[16]2default:default2
DIV2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
mdividend_reg[15]2default:default2
DIV2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
mdividend_reg[14]2default:default2
DIV2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
mdividend_reg[13]2default:default2
DIV2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
mdividend_reg[12]2default:default2
DIV2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
mdividend_reg[11]2default:default2
DIV2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
mdividend_reg[10]2default:default2
DIV2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
mdividend_reg[9]2default:default2
DIV2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
mdividend_reg[8]2default:default2
DIV2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
mdividend_reg[7]2default:default2
DIV2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
mdividend_reg[6]2default:default2
DIV2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
mdividend_reg[5]2default:default2
DIV2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
mdividend_reg[4]2default:default2
DIV2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
mdividend_reg[3]2default:default2
DIV2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
mdividend_reg[2]2default:default2
DIV2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
mdividend_reg[1]2default:default2
DIV2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
mdividend_reg[0]2default:default2
DIV2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
mdivisor_reg[30]2default:default2
DIV2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
mdivisor_reg[29]2default:default2
DIV2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
mdivisor_reg[28]2default:default2
DIV2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
mdivisor_reg[27]2default:default2
DIV2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
mdivisor_reg[26]2default:default2
DIV2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
mdivisor_reg[25]2default:default2
DIV2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
mdivisor_reg[24]2default:default2
DIV2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
mdivisor_reg[23]2default:default2
DIV2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
mdivisor_reg[22]2default:default2
DIV2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
mdivisor_reg[21]2default:default2
DIV2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
mdivisor_reg[20]2default:default2
DIV2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
mdivisor_reg[19]2default:default2
DIV2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
mdivisor_reg[18]2default:default2
DIV2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
mdivisor_reg[17]2default:default2
DIV2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
mdivisor_reg[16]2default:default2
DIV2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
mdivisor_reg[15]2default:default2
DIV2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
mdivisor_reg[14]2default:default2
DIV2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
mdivisor_reg[13]2default:default2
DIV2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
mdivisor_reg[12]2default:default2
DIV2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
mdivisor_reg[11]2default:default2
DIV2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
mdivisor_reg[10]2default:default2
DIV2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
mdivisor_reg[9]2default:default2
DIV2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
mdivisor_reg[8]2default:default2
DIV2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
mdivisor_reg[7]2default:default2
DIV2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
mdivisor_reg[6]2default:default2
DIV2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
mdivisor_reg[5]2default:default2
DIV2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
mdivisor_reg[4]2default:default2
DIV2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
mdivisor_reg[3]2default:default2
DIV2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
mdivisor_reg[2]2default:default2
DIV2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
mdivisor_reg[1]2default:default2
DIV2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
mdivisor_reg[0]2default:default2
DIV2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	carry_reg2default:default2
ALU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
npc_reg__0i_482default:default2
CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
npc_reg__0i_492default:default2
CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
npc_reg__0i_502default:default2
CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
npc_reg__0i_512default:default2
CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
npc_reg__0i_522default:default2
CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
npc_reg__0i_532default:default2
CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
npc_reg__0i_542default:default2
CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
npc_reg__0i_552default:default2
CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
npc_reg__0i_562default:default2
CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
npc_reg__0i_572default:default2
CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
npc_reg__0i_582default:default2
CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
npc_reg__0i_592default:default2
CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
npc_reg__0i_602default:default2
CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
npc_reg__0i_612default:default2
CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
npc_reg__0i_622default:default2
CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
npc_reg__0i_632default:default2
CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
npc_reg__0i_642default:default2
CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
npc_reg__0i_652default:default2
CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
npc_reg__0i_662default:default2
CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
npc_reg__0i_672default:default2
CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
npc_reg__0i_682default:default2
CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
npc_reg__0i_692default:default2
CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
npc_reg__0i_702default:default2
CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
npc_reg__0i_712default:default2
CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
npc_reg__0i_722default:default2
CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
npc_reg__0i_732default:default2
CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
npc_reg__0i_742default:default2
CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
npc_reg__0i_752default:default2
CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
npc_reg__0i_762default:default2
CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
npc_reg__0i_772default:default2
CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
npc_reg__0i_782default:default2
CPU2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2 
negative_reg2default:default2
ALU2default:defaultZ8-3332h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
zFinished Area Optimization : Time (s): cpu = 00:01:14 ; elapsed = 00:02:10 . Memory (MB): peak = 776.328 ; gain = 569.367
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Parallel Area Optimization  : Time (s): cpu = 00:01:14 ; elapsed = 00:02:10 . Memory (MB): peak = 776.328 ; gain = 569.367
2default:defaulth px? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
d
%s
*synth2L
8+------+----------------------+------------+----------+
2default:defaulth p
x
? 
d
%s
*synth2L
8|      |RTL Partition         |Replication |Instances |
2default:defaulth p
x
? 
d
%s
*synth2L
8+------+----------------------+------------+----------+
2default:defaulth p
x
? 
d
%s
*synth2L
8|1     |DMEM__GB0             |           1|     34605|
2default:defaulth p
x
? 
d
%s
*synth2L
8|2     |DMEM__GB1             |           1|      9224|
2default:defaulth p
x
? 
d
%s
*synth2L
8|3     |DMEM__GB2             |           1|     11326|
2default:defaulth p
x
? 
d
%s
*synth2L
8|4     |DMEM__GB3             |           1|     13628|
2default:defaulth p
x
? 
d
%s
*synth2L
8|5     |DMEM__GB4             |           1|     17262|
2default:defaulth p
x
? 
d
%s
*synth2L
8|6     |CPU                   |           1|     20629|
2default:defaulth p
x
? 
d
%s
*synth2L
8|7     |sccomp_dataflow__GCB2 |           1|       492|
2default:defaulth p
x
? 
d
%s
*synth2L
8+------+----------------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:01:23 ; elapsed = 00:02:19 . Memory (MB): peak = 874.063 ; gain = 667.102
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Timing Optimization : Time (s): cpu = 00:01:30 ; elapsed = 00:02:27 . Memory (MB): peak = 907.980 ; gain = 701.020
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
d
%s
*synth2L
8+------+----------------------+------------+----------+
2default:defaulth p
x
? 
d
%s
*synth2L
8|      |RTL Partition         |Replication |Instances |
2default:defaulth p
x
? 
d
%s
*synth2L
8+------+----------------------+------------+----------+
2default:defaulth p
x
? 
d
%s
*synth2L
8|1     |DMEM__GB0             |           1|     29485|
2default:defaulth p
x
? 
d
%s
*synth2L
8|2     |DMEM__GB1             |           1|      9224|
2default:defaulth p
x
? 
d
%s
*synth2L
8|3     |DMEM__GB2             |           1|     11326|
2default:defaulth p
x
? 
d
%s
*synth2L
8|4     |DMEM__GB3             |           1|     13627|
2default:defaulth p
x
? 
d
%s
*synth2L
8|5     |DMEM__GB4             |           1|     17262|
2default:defaulth p
x
? 
d
%s
*synth2L
8|6     |CPU                   |           1|     20607|
2default:defaulth p
x
? 
d
%s
*synth2L
8|7     |sccomp_dataflow__GCB2 |           1|       492|
2default:defaulth p
x
? 
d
%s
*synth2L
8+------+----------------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
{Finished Technology Mapping : Time (s): cpu = 00:01:45 ; elapsed = 00:02:53 . Memory (MB): peak = 907.980 ; gain = 701.020
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Parallel Technology Mapping Optimization  : Time (s): cpu = 00:01:45 ; elapsed = 00:02:53 . Memory (MB): peak = 907.980 ; gain = 701.020
2default:defaulth px? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
\
%s
*synth2D
0+------+--------------+------------+----------+
2default:defaulth p
x
? 
\
%s
*synth2D
0|      |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
\
%s
*synth2D
0+------+--------------+------------+----------+
2default:defaulth p
x
? 
\
%s
*synth2D
0|1     |DMEM__GB0     |           1|     13913|
2default:defaulth p
x
? 
\
%s
*synth2D
0|2     |DMEM__GB2     |           1|      3546|
2default:defaulth p
x
? 
\
%s
*synth2D
0|3     |DMEM__GB3     |           1|      4258|
2default:defaulth p
x
? 
\
%s
*synth2D
0|4     |DMEM__GB4     |           1|      5412|
2default:defaulth p
x
? 
\
%s
*synth2D
0|5     |CPU           |           1|      8756|
2default:defaulth p
x
? 
\
%s
*synth2D
0+------+--------------+------------+----------+
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Parallel Synthesis Optimization  : Time (s): cpu = 00:01:45 ; elapsed = 00:02:53 . Memory (MB): peak = 907.980 ; gain = 701.020
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
uFinished IO Insertion : Time (s): cpu = 00:01:54 ; elapsed = 00:03:01 . Memory (MB): peak = 907.980 ; gain = 701.020
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:01:54 ; elapsed = 00:03:02 . Memory (MB): peak = 907.980 ; gain = 701.020
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:01:57 ; elapsed = 00:03:05 . Memory (MB): peak = 907.980 ; gain = 701.020
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:01:58 ; elapsed = 00:03:06 . Memory (MB): peak = 907.980 ; gain = 701.020
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:02:02 ; elapsed = 00:03:09 . Memory (MB): peak = 907.980 ; gain = 701.020
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:02:02 ; elapsed = 00:03:09 . Memory (MB): peak = 907.980 ; gain = 701.020
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
P
%s
*synth28
$+------+---------------+----------+
2default:defaulth p
x
? 
P
%s
*synth28
$|      |BlackBox name  |Instances |
2default:defaulth p
x
? 
P
%s
*synth28
$+------+---------------+----------+
2default:defaulth p
x
? 
P
%s
*synth28
$|1     |dist_mem_gen_0 |         1|
2default:defaulth p
x
? 
P
%s
*synth28
$+------+---------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
L
%s*synth24
 +------+---------------+------+
2default:defaulth px? 
L
%s*synth24
 |      |Cell           |Count |
2default:defaulth px? 
L
%s*synth24
 +------+---------------+------+
2default:defaulth px? 
L
%s*synth24
 |1     |dist_mem_gen_0 |     1|
2default:defaulth px? 
L
%s*synth24
 |2     |BUFG           |     2|
2default:defaulth px? 
L
%s*synth24
 |3     |CARRY4         |   378|
2default:defaulth px? 
L
%s*synth24
 |4     |LUT1           |   280|
2default:defaulth px? 
L
%s*synth24
 |5     |LUT2           |  1469|
2default:defaulth px? 
L
%s*synth24
 |6     |LUT3           |  1003|
2default:defaulth px? 
L
%s*synth24
 |7     |LUT4           |  1813|
2default:defaulth px? 
L
%s*synth24
 |8     |LUT5           |  5357|
2default:defaulth px? 
L
%s*synth24
 |9     |LUT6           | 16385|
2default:defaulth px? 
L
%s*synth24
 |10    |MUXF7          |  3114|
2default:defaulth px? 
L
%s*synth24
 |11    |MUXF8          |  1344|
2default:defaulth px? 
L
%s*synth24
 |12    |FDCE           |  1171|
2default:defaulth px? 
L
%s*synth24
 |13    |FDPE           |    14|
2default:defaulth px? 
L
%s*synth24
 |14    |FDRE           |  6486|
2default:defaulth px? 
L
%s*synth24
 |15    |FDSE           |     3|
2default:defaulth px? 
L
%s*synth24
 |16    |LD             |     1|
2default:defaulth px? 
L
%s*synth24
 |17    |IBUF           |     2|
2default:defaulth px? 
L
%s*synth24
 |18    |OBUF           |    16|
2default:defaulth px? 
L
%s*synth24
 +------+---------------+------+
2default:defaulth px? 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
? 
W
%s
*synth2?
++------+-----------------+--------+------+
2default:defaulth p
x
? 
W
%s
*synth2?
+|      |Instance         |Module  |Cells |
2default:defaulth p
x
? 
W
%s
*synth2?
++------+-----------------+--------+------+
2default:defaulth p
x
? 
W
%s
*synth2?
+|1     |top              |        | 38870|
2default:defaulth p
x
? 
W
%s
*synth2?
+|2     |  div            |CLK_DIV |    48|
2default:defaulth p
x
? 
W
%s
*synth2?
+|3     |  dmemory        |DMEM    | 14704|
2default:defaulth p
x
? 
W
%s
*synth2?
+|4     |  imemory        |IMEM    |    32|
2default:defaulth p
x
? 
W
%s
*synth2?
+|5     |  sccpu          |CPU     | 23390|
2default:defaulth p
x
? 
W
%s
*synth2?
+|6     |    cp0          |CP0     |  1716|
2default:defaulth p
x
? 
W
%s
*synth2?
+|7     |    cpu_alu      |ALU     |   130|
2default:defaulth p
x
? 
W
%s
*synth2?
+|8     |    cpu_div      |DIV     |   490|
2default:defaulth p
x
? 
W
%s
*synth2?
+|9     |    cpu_divu     |DIVU    |   277|
2default:defaulth p
x
? 
W
%s
*synth2?
+|10    |    cpu_mult     |MULT    |   239|
2default:defaulth p
x
? 
W
%s
*synth2?
+|11    |      multu_inst |MULTU_0 |   239|
2default:defaulth p
x
? 
W
%s
*synth2?
+|12    |    cpu_multu    |MULTU   |   548|
2default:defaulth p
x
? 
W
%s
*synth2?
+|13    |    cpu_ref      |RegFile | 14625|
2default:defaulth p
x
? 
W
%s
*synth2?
+|14    |    pcreg        |PcReg   |   587|
2default:defaulth p
x
? 
W
%s
*synth2?
+|15    |  seg            |seg7x16 |   150|
2default:defaulth p
x
? 
W
%s
*synth2?
++------+-----------------+--------+------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:02:02 ; elapsed = 00:03:09 . Memory (MB): peak = 907.980 ; gain = 701.020
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
t
%s
*synth2\
HSynthesis finished with 0 errors, 0 critical warnings and 102 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
~Synthesis Optimization Runtime : Time (s): cpu = 00:01:45 ; elapsed = 00:02:59 . Memory (MB): peak = 907.980 ; gain = 357.688
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Complete : Time (s): cpu = 00:02:02 ; elapsed = 00:03:10 . Memory (MB): peak = 907.980 ; gain = 701.020
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
3812default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
w
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
32default:default2
2052default:defaultZ31-138h px? 
?
!Unisim Transformation Summary:
%s111*project2Y
E  A total of 1 instances were transformed.
  LD => LDCE: 1 instances
2default:defaultZ1-111h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1692default:default2
1682default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:02:072default:default2
00:03:132default:default2
907.9802default:default2
677.1412default:defaultZ17-268h px? 
?
sreport_utilization: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.147 . Memory (MB): peak = 907.980 ; gain = 0.000
*commonh px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Tue Jul 13 10:47:56 20212default:defaultZ17-206h px? 


End Record