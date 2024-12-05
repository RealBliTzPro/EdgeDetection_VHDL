transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/sheem/Desktop/Vhdl project/EdgeDetection.vhd}

vcom -93 -work work {C:/Users/sheem/Desktop/Vhdl project/edgeDetectionSim.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  asdasd

add wave *
view structure
view signals
run -all
