# Define project variables
set project_name "MyProject"
set project_directory "D:/GitHub/Tcl-Vivado/pl_project/$project_name"
set top_module "top_level"


# Set top module
set_property top $top_module [current_fileset]

# Set synthesis strategy
set_property strategy {Vivado Synthesis Defaults} [get_runs synth_1]
# Launch synthesis and set number of jobs
reset_run synth_1
launch_runs synth_1 -jobs 20

# Wait for synthesis to complete
wait_on_run synth_1

# Set implementation strategy
set_property strategy {Vivado Implementation Defaults} [get_runs impl_1]
# Launch implementation and set number of jobs
launch_runs impl_1 -jobs 20

# Wait for implementation to complete
wait_on_run impl_1

# Open implemented design
open_run impl_1

# Launch bitstream generation and set number of jobs
launch_runs impl_1 -to_step write_bitstream -jobs 20

# Wait for bitstream generation to complete
wait_on_run impl_1


puts "Synthesis, implementation, and bitstream generation complete!"


# Open hardware manager
# open_hw_manager