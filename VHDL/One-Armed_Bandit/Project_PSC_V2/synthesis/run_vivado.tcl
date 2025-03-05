create_project -force Top {C:\Users\Dominik\Desktop\Project_PSC_V2\synthesis} -part 7a100tcsg324-1
add_files -norecurse {C:/Users/Dominik/Desktop/Project_PSC_V2/src/Counter.vhd}
add_files -norecurse {C:/Users/Dominik/Desktop/Project_PSC_V2/src/Decoder.vhd}
add_files -norecurse {C:/Users/Dominik/Desktop/Project_PSC_V2/src/Prescaler_11.vhd}
add_files -norecurse {C:/Users/Dominik/Desktop/Project_PSC_V2/src/Prescaler_13.vhd}
add_files -norecurse {C:/Users/Dominik/Desktop/Project_PSC_V2/src/Prescaler_17.vhd}
add_files -norecurse {C:/Users/Dominik/Desktop/Project_PSC_V2/compile/Top.vhd}
add_files -norecurse {C:/Users/Dominik/Desktop/Project_PSC_V2/src/Counter_2.vhd}
add_files -norecurse {C:/Users/Dominik/Desktop/Project_PSC_V2/src/Display.vhd}
add_files -norecurse {C:/Users/Dominik/Desktop/Project_PSC_V2/src/Annode.vhd}
add_files -norecurse {C:/Users/Dominik/Desktop/Project_PSC_V2/src/Prescaler_DISP.vhd}
add_files -norecurse {C:/Users/Dominik/Desktop/Project_PSC_V2/src/Decoder_1.vhd}
add_files -norecurse {C:/Users/Dominik/Desktop/Project_PSC_V2/src/Compare.vhd}
add_files -norecurse {C:/Users/Dominik/Desktop/Project_PSC_V2/src/Counter_3.vhd}
set_property top Top [current_fileset]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]

synth_design -top Top -flatten_hierarchy rebuilt -gated_clock_conversion off -fsm_extraction auto -bufg 12 -fanout_limit 10000 -shreg_min_size 3 -max_bram -1 -max_uram -1 -max_dsp -1 -max_bram_cascade_height -1 -max_uram_cascade_height -1 -cascade_dsp auto -directive default -resource_sharing auto -control_set_opt_threshold auto
report_utilization -file {Top_utilization_synth.rpt}
write_edf -force {Top.edn}
write_vhdl -force {Top.vhd}
write_xdc -force {Top.xdc}
write_checkpoint -force Top_synth.dcp
