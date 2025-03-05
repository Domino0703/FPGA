SetActiveLib -work
comp -include "$dsn\src\Top.vhd"   
comp -include "$dsn\src\Decoder_1.vhd" 
comp -include "$dsn\src\Counter.vhd"  	
comp -include "$dsn\src\Display.vhd"  
comp -include "$dsn\src\Compare.vhd"
comp -include "$dsn\src\Annode.vhd"
comp -include "$dsn\src\Counter_2.vhd" 
comp -include "$dsn\src\Prescaler_11.vhd"
comp -include "$dsn\src\Prescaler_13.vhd"
comp -include "$dsn\src\Prescaler_17.vhd"

comp -include "$dsn\src\TestBench\Top_TB.vhd" 
asim +access +r TESTBENCH_FOR_top
wave 
wave -noreg CLK
wave -noreg CLR	 
wave -noreg CE 
wave -noreg MODE_1
wave -noreg MODE_2
wave -noreg MODE_3
wave -noreg Q  
wave -noreg RED
wave -noreg GREEN
wave -noreg AN
run 4000.00 ns
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$dsn\src\TestBench\tutorvhdl_TB_tim_cfg.vhd" 
# asim +access +r TIMING_FOR_tutorvhdl 
