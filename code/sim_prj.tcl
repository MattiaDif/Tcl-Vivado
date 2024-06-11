# Define project variables
set selected_simulator XSim
set top_module_sim "adder_tb"

set_property top $top_module_sim [get_filesets sim_1]

set_property target_simulator $selected_simulator [current_project]

launch_simulation

puts "Simulation launched with $selected_simulator."
