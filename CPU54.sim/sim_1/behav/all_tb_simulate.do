######################################################################
#
# File name : all_tb_simulate.do
# Created on: Tue Jul 13 10:35:01 +0800 2021
#
# Auto generated by Vivado for 'behavioral' simulation
#
######################################################################
vsim -voptargs="+acc" -L unisims_ver -L unimacro_ver -L secureip -L xil_defaultlib -L dist_mem_gen_v8_0_10 -lib xil_defaultlib xil_defaultlib.all_tb xil_defaultlib.glbl

do {all_tb_wave.do}

view wave
view structure
view signals

do {all_tb.udo}

run 100000ns