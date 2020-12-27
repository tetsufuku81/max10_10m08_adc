## Generated SDC file "max10_adc.out.sdc"

## Copyright (C) 2020  Intel Corporation. All rights reserved.
## Your use of Intel Corporation's design tools, logic functions 
## and other software and tools, and any partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Intel Program License 
## Subscription Agreement, the Intel Quartus Prime License Agreement,
## the Intel FPGA IP License Agreement, or other applicable license
## agreement, including, without limitation, that your use is for
## the sole purpose of programming logic devices manufactured by
## Intel and sold by Intel or its authorized distributors.  Please
## refer to the applicable agreement for further details, at
## https://fpgasoftware.intel.com/eula.


## VENDOR  "Altera"
## PROGRAM "Quartus Prime"
## VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

## DATE    "Mon Dec 07 23:14:27 2020"

##
## DEVICE  "10M08SAE144C8GES"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {altera_reserved_tck} -period 100.000 -waveform { 0.000 50.000 } [get_ports {altera_reserved_tck}]
create_clock -name {clk} -period 20.000 -waveform { 0.000 10.000 } [get_ports {clk_i}]


#**************************************************************
# Create Generated Clock
#**************************************************************



#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************



#**************************************************************
# Set Input Delay
#**************************************************************



#**************************************************************
# Set Output Delay
#**************************************************************



#**************************************************************
# Set Clock Groups
#**************************************************************

set_clock_groups -asynchronous -group [get_clocks {altera_reserved_tck}] 


#**************************************************************
# Set False Path
#**************************************************************

set_false_path -to [get_keepers {*altera_std_synchronizer:*|din_s1}]
set_false_path -to [get_pins -nocase -compatibility_mode {*|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain*|clrn}]
set_false_path -from [get_keepers {*fiftyfivenm_adcblock_primitive_wrapper:adcblock_instance|wire_from_adc_dout[0]}] -to [get_registers {*altera_modular_adc_control_fsm:u_control_fsm|dout_flp[0]}]
set_false_path -from [get_keepers {*fiftyfivenm_adcblock_primitive_wrapper:adcblock_instance|wire_from_adc_dout[1]}] -to [get_registers {*altera_modular_adc_control_fsm:u_control_fsm|dout_flp[1]}]
set_false_path -from [get_keepers {*fiftyfivenm_adcblock_primitive_wrapper:adcblock_instance|wire_from_adc_dout[2]}] -to [get_registers {*altera_modular_adc_control_fsm:u_control_fsm|dout_flp[2]}]
set_false_path -from [get_keepers {*fiftyfivenm_adcblock_primitive_wrapper:adcblock_instance|wire_from_adc_dout[3]}] -to [get_registers {*altera_modular_adc_control_fsm:u_control_fsm|dout_flp[3]}]
set_false_path -from [get_keepers {*fiftyfivenm_adcblock_primitive_wrapper:adcblock_instance|wire_from_adc_dout[4]}] -to [get_registers {*altera_modular_adc_control_fsm:u_control_fsm|dout_flp[4]}]
set_false_path -from [get_keepers {*fiftyfivenm_adcblock_primitive_wrapper:adcblock_instance|wire_from_adc_dout[5]}] -to [get_registers {*altera_modular_adc_control_fsm:u_control_fsm|dout_flp[5]}]
set_false_path -from [get_keepers {*fiftyfivenm_adcblock_primitive_wrapper:adcblock_instance|wire_from_adc_dout[6]}] -to [get_registers {*altera_modular_adc_control_fsm:u_control_fsm|dout_flp[6]}]
set_false_path -from [get_keepers {*fiftyfivenm_adcblock_primitive_wrapper:adcblock_instance|wire_from_adc_dout[7]}] -to [get_registers {*altera_modular_adc_control_fsm:u_control_fsm|dout_flp[7]}]
set_false_path -from [get_keepers {*fiftyfivenm_adcblock_primitive_wrapper:adcblock_instance|wire_from_adc_dout[8]}] -to [get_registers {*altera_modular_adc_control_fsm:u_control_fsm|dout_flp[8]}]
set_false_path -from [get_keepers {*fiftyfivenm_adcblock_primitive_wrapper:adcblock_instance|wire_from_adc_dout[9]}] -to [get_registers {*altera_modular_adc_control_fsm:u_control_fsm|dout_flp[9]}]
set_false_path -from [get_keepers {*fiftyfivenm_adcblock_primitive_wrapper:adcblock_instance|wire_from_adc_dout[10]}] -to [get_registers {*altera_modular_adc_control_fsm:u_control_fsm|dout_flp[10]}]
set_false_path -from [get_keepers {*fiftyfivenm_adcblock_primitive_wrapper:adcblock_instance|wire_from_adc_dout[11]}] -to [get_registers {*altera_modular_adc_control_fsm:u_control_fsm|dout_flp[11]}]
set_false_path -from [get_registers {*altera_modular_adc_control_fsm:u_control_fsm|chsel[*]}] -to [get_pins -compatibility_mode {*|adc_inst|adcblock_instance|primitive_instance|chsel[*]}]
set_false_path -from [get_registers {*altera_modular_adc_control_fsm:u_control_fsm|soc}] -to [get_pins -compatibility_mode {*|adc_inst|adcblock_instance|primitive_instance|soc}]
set_false_path -from [get_registers {*altera_jtag_src_crosser:*|sink_data_buffer*}] -to [get_registers {*altera_jtag_src_crosser:*|src_data*}]


#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************



#**************************************************************
# Set Net Delay
#**************************************************************

set_net_delay -max 5.000 -from [get_pins -compatibility_mode {*|adc_inst|adcblock_instance|primitive_instance|eoc}]
set_net_delay -min 0.000 -from [get_pins -compatibility_mode {*|adc_inst|adcblock_instance|primitive_instance|eoc}]
set_net_delay -max 5.000 -from [get_pins -compatibility_mode {*|adc_inst|adcblock_instance|primitive_instance|clk_dft}]
set_net_delay -min 0.000 -from [get_pins -compatibility_mode {*|adc_inst|adcblock_instance|primitive_instance|clk_dft}]
set_net_delay -max 5.000 -from [get_pins -compatibility_mode {*|adc_inst|adcblock_instance|primitive_instance|dout[0]}]
set_net_delay -max 5.000 -from [get_pins -compatibility_mode {*|adc_inst|adcblock_instance|primitive_instance|dout[1]}]
set_net_delay -max 5.000 -from [get_pins -compatibility_mode {*|adc_inst|adcblock_instance|primitive_instance|dout[2]}]
set_net_delay -max 5.000 -from [get_pins -compatibility_mode {*|adc_inst|adcblock_instance|primitive_instance|dout[3]}]
set_net_delay -max 5.000 -from [get_pins -compatibility_mode {*|adc_inst|adcblock_instance|primitive_instance|dout[4]}]
set_net_delay -max 5.000 -from [get_pins -compatibility_mode {*|adc_inst|adcblock_instance|primitive_instance|dout[5]}]
set_net_delay -max 5.000 -from [get_pins -compatibility_mode {*|adc_inst|adcblock_instance|primitive_instance|dout[6]}]
set_net_delay -max 5.000 -from [get_pins -compatibility_mode {*|adc_inst|adcblock_instance|primitive_instance|dout[7]}]
set_net_delay -max 5.000 -from [get_pins -compatibility_mode {*|adc_inst|adcblock_instance|primitive_instance|dout[8]}]
set_net_delay -max 5.000 -from [get_pins -compatibility_mode {*|adc_inst|adcblock_instance|primitive_instance|dout[9]}]
set_net_delay -max 5.000 -from [get_pins -compatibility_mode {*|adc_inst|adcblock_instance|primitive_instance|dout[10]}]
set_net_delay -max 5.000 -from [get_pins -compatibility_mode {*|adc_inst|adcblock_instance|primitive_instance|dout[11]}]
set_net_delay -min 0.000 -from [get_pins -compatibility_mode {*|adc_inst|adcblock_instance|primitive_instance|dout[0]}]
set_net_delay -min 0.000 -from [get_pins -compatibility_mode {*|adc_inst|adcblock_instance|primitive_instance|dout[1]}]
set_net_delay -min 0.000 -from [get_pins -compatibility_mode {*|adc_inst|adcblock_instance|primitive_instance|dout[2]}]
set_net_delay -min 0.000 -from [get_pins -compatibility_mode {*|adc_inst|adcblock_instance|primitive_instance|dout[3]}]
set_net_delay -min 0.000 -from [get_pins -compatibility_mode {*|adc_inst|adcblock_instance|primitive_instance|dout[4]}]
set_net_delay -min 0.000 -from [get_pins -compatibility_mode {*|adc_inst|adcblock_instance|primitive_instance|dout[5]}]
set_net_delay -min 0.000 -from [get_pins -compatibility_mode {*|adc_inst|adcblock_instance|primitive_instance|dout[6]}]
set_net_delay -min 0.000 -from [get_pins -compatibility_mode {*|adc_inst|adcblock_instance|primitive_instance|dout[7]}]
set_net_delay -min 0.000 -from [get_pins -compatibility_mode {*|adc_inst|adcblock_instance|primitive_instance|dout[8]}]
set_net_delay -min 0.000 -from [get_pins -compatibility_mode {*|adc_inst|adcblock_instance|primitive_instance|dout[9]}]
set_net_delay -min 0.000 -from [get_pins -compatibility_mode {*|adc_inst|adcblock_instance|primitive_instance|dout[10]}]
set_net_delay -min 0.000 -from [get_pins -compatibility_mode {*|adc_inst|adcblock_instance|primitive_instance|dout[11]}]
set_net_delay -max 5.000 -from [get_pins -compatibility_mode {*|u_control_fsm|chsel[*]|q}]
set_net_delay -min 0.000 -from [get_pins -compatibility_mode {*|u_control_fsm|chsel[*]|q}]
set_net_delay -max 5.000 -from [get_pins -compatibility_mode {*|u_control_fsm|soc|q}]
set_net_delay -min 0.000 -from [get_pins -compatibility_mode {*|u_control_fsm|soc|q}]
