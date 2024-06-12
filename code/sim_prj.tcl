# Define project variables
set selected_simulator XSim
set top_module_sim "adder_tb"


# Set module to simulate
set_property top $top_module_sim [get_filesets sim_1]

#Set target simulator
set_property target_simulator $selected_simulator [current_project]

# Lunch simulation
launch_simulation

puts "Simulation launched with $selected_simulator."
