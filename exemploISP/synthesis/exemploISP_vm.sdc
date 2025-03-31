# Written by Synplify Pro version map202309act, Build 044R. Synopsys Run ID: sid1743445581 
# Top Level Design Parameters 

# Clocks 
create_clock -period 10.000 -waveform {0.000 5.000} -name {led_blink|reg_counter_inferred_clock[20]} [get_pins {led_blink_0/reg_counter[20]/Q}] 

# Virtual Clocks 

# Generated Clocks 

# Paths Between Clocks 

# Multicycle Constraints 

# Point-to-point Delay Constraints 

# False Path Constraints 

# Output Load Constraints 

# Driving Cell Constraints 

# Input Delay Constraints 

# Output Delay Constraints 

# Wire Loads 

# Other Constraints 

# syn_hier Attributes 

# set_case Attributes 

# Clock Delay Constraints 
set Inferred_clkgroup_1 [list led_blink|reg_counter_inferred_clock\[20\]]
set_clock_groups -asynchronous -group $Inferred_clkgroup_1

set_clock_groups -asynchronous -group [get_clocks {OSC_C1_OSC_C1_0_OSC|N_RCOSC_1MHZ_CLKOUT_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {led_blink|reg_counter_inferred_clock[20]}]

# syn_mode Attributes 

# Cells 

# Port DRC Rules 

# Input Transition Constraints 

# Unused constraints (intentionally commented out) 


# Non-forward-annotatable constraints (intentionally commented out) 

# Block Path constraints 

