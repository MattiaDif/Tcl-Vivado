# Create the project and directory structure setting up the board of interest
create_project -force -part XC7A100TCSG324-1 D:/tmp/test_neuroArchitecture/pl_project

# Add various sources (no copy) to the project: sources, testbenches, constraint/s files
add_files {D:/GitHub/neuroArchitecture/hdl/sources/}                                                                
add_files -fileset sim_1 {D:/GitHub/neuroArchitecture/hdl/sim/}
add_files -fileset constrs_1 D:/GitHub/neuroArchitecture/xdc/Arty-A7-100-Master.xdc

# set target language of current project, VHDL or Verilog 
set_property target_language VHDL [current_project]

# Now import/copy the files into the project
#import_files -force
#
# Set VHDL library property on some files
#set_property library bftLib [get_files {*round_*.vhdl core_transform.vhdl \
#bft_package.vhdl}]
