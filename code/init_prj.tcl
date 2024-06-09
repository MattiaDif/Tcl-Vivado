# Define project variables
set project_name "MyProject"
set project_directory "D:/GitHub/Tcl-Vivado/pl_project/$project_name"
set top_module "top_level"
set target_device "XC7A100TCSG324-1"


# Create the project and directory structure setting up the board of interest
#create_project -force -part XC7A100TCSG324-1 D:/GitHub/Tcl-Vivado/pl_project
create_project $project_name $project_directory -part $target_device


# Add various sources (no copy) to the project: sources, testbenches, constraint/s files
add_files {D:/GitHub/Tcl-Vivado/code/src/}                                                                
add_files -fileset sim_1 {D:/GitHub/Tcl-Vivado/code/sim/}
add_files -fileset constrs_1 D:/GitHub/Tcl-Vivado/code/xdc/Arty-A7-100-Master.xdc


# Set top module
set_property top $top_module [current_fileset]


# Set target language of current project, VHDL or Verilog 
# Project language
set_property target_language VHDL [current_project]
# Simulator language
set_property simulator_language VHDL [current_project]



puts "Project initialization complete!"