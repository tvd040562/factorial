###############################################################################
# Created by write_sdc
###############################################################################
current_design factorial
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk -period $::env(CLOCK_PERIOD) [get_ports {clk}]
set_clock_transition 0.1500 [get_clocks {clk}]
set_clock_uncertainty 0.2500 clk
set IO_DELAY [expr $::env(CLOCK_PERIOD)/2.0]
set_input_delay $IO_DELAY -clock [get_clocks {clk}] -add_delay [get_ports {fdata_in[0]}]
set_input_delay $IO_DELAY -clock [get_clocks {clk}] -add_delay [get_ports {fdata_in[1]}]
set_input_delay $IO_DELAY -clock [get_clocks {clk}] -add_delay [get_ports {fdata_in[2]}]
set_input_delay $IO_DELAY -clock [get_clocks {clk}] -add_delay [get_ports {fdata_in[3]}]
set_input_delay $IO_DELAY -clock [get_clocks {clk}] -add_delay [get_ports {fdata_in[4]}]
set_input_delay $IO_DELAY -clock [get_clocks {clk}] -add_delay [get_ports {fdata_in[5]}]
set_input_delay $IO_DELAY -clock [get_clocks {clk}] -add_delay [get_ports {fdata_in[6]}]
set_input_delay $IO_DELAY -clock [get_clocks {clk}] -add_delay [get_ports {fdata_in[7]}]
set_input_delay $IO_DELAY -clock [get_clocks {clk}] -add_delay [get_ports {reset}]
set_input_delay $IO_DELAY -clock [get_clocks {clk}] -add_delay [get_ports {start}]
set_output_delay $IO_DELAY -clock [get_clocks {clk}] -add_delay [get_ports {done}]
set_output_delay $IO_DELAY -clock [get_clocks {clk}] -add_delay [get_ports {fdata_out[0]}]
set_output_delay $IO_DELAY -clock [get_clocks {clk}] -add_delay [get_ports {fdata_out[10]}]
set_output_delay $IO_DELAY -clock [get_clocks {clk}] -add_delay [get_ports {fdata_out[11]}]
set_output_delay $IO_DELAY -clock [get_clocks {clk}] -add_delay [get_ports {fdata_out[12]}]
set_output_delay $IO_DELAY -clock [get_clocks {clk}] -add_delay [get_ports {fdata_out[13]}]
set_output_delay $IO_DELAY -clock [get_clocks {clk}] -add_delay [get_ports {fdata_out[14]}]
set_output_delay $IO_DELAY -clock [get_clocks {clk}] -add_delay [get_ports {fdata_out[15]}]
set_output_delay $IO_DELAY -clock [get_clocks {clk}] -add_delay [get_ports {fdata_out[1]}]
set_output_delay $IO_DELAY -clock [get_clocks {clk}] -add_delay [get_ports {fdata_out[2]}]
set_output_delay $IO_DELAY -clock [get_clocks {clk}] -add_delay [get_ports {fdata_out[3]}]
set_output_delay $IO_DELAY -clock [get_clocks {clk}] -add_delay [get_ports {fdata_out[4]}]
set_output_delay $IO_DELAY -clock [get_clocks {clk}] -add_delay [get_ports {fdata_out[5]}]
set_output_delay $IO_DELAY -clock [get_clocks {clk}] -add_delay [get_ports {fdata_out[6]}]
set_output_delay $IO_DELAY -clock [get_clocks {clk}] -add_delay [get_ports {fdata_out[7]}]
set_output_delay $IO_DELAY -clock [get_clocks {clk}] -add_delay [get_ports {fdata_out[8]}]
set_output_delay $IO_DELAY -clock [get_clocks {clk}] -add_delay [get_ports {fdata_out[9]}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.0334 [get_ports {done}]
set_load -pin_load 0.0334 [get_ports {fdata_out[15]}]
set_load -pin_load 0.0334 [get_ports {fdata_out[14]}]
set_load -pin_load 0.0334 [get_ports {fdata_out[13]}]
set_load -pin_load 0.0334 [get_ports {fdata_out[12]}]
set_load -pin_load 0.0334 [get_ports {fdata_out[11]}]
set_load -pin_load 0.0334 [get_ports {fdata_out[10]}]
set_load -pin_load 0.0334 [get_ports {fdata_out[9]}]
set_load -pin_load 0.0334 [get_ports {fdata_out[8]}]
set_load -pin_load 0.0334 [get_ports {fdata_out[7]}]
set_load -pin_load 0.0334 [get_ports {fdata_out[6]}]
set_load -pin_load 0.0334 [get_ports {fdata_out[5]}]
set_load -pin_load 0.0334 [get_ports {fdata_out[4]}]
set_load -pin_load 0.0334 [get_ports {fdata_out[3]}]
set_load -pin_load 0.0334 [get_ports {fdata_out[2]}]
set_load -pin_load 0.0334 [get_ports {fdata_out[1]}]
set_load -pin_load 0.0334 [get_ports {fdata_out[0]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {clk}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {reset}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {start}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {fdata_in[7]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {fdata_in[6]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {fdata_in[5]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {fdata_in[4]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {fdata_in[3]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {fdata_in[2]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {fdata_in[1]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {fdata_in[0]}]
###############################################################################
# Design Rules
###############################################################################
set_max_transition 0.7500 [current_design]
set_max_capacitance 0.2000 [current_design]
set_max_fanout 6.0000 [current_design]
