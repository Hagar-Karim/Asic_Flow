
set flattened 1

########################### Define Top Module ############################
                                                   
set top_module ALU_TOP

##################### Define Working Library Directory ######################
                                                   
define_design_lib work -path ./work

################## Design Compiler Library Files #setup ######################

puts "###########################################"
puts "#      #setting Design Libraries           #"
puts "###########################################"

#Add the path of the libraries to the search_path variable
lappend search_path /home/IC/Labs/Lab_Syn_3.1/std_cells
lappend search_path /home/IC/Labs/Lab_Syn_3.1/rtl

set SSLIB "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"

## Standard Cell libraries 
set target_library [list $SSLIB $TTLIB $FFLIB]

## Standard Cell & Hard Macros libraries 
set link_library [list * $SSLIB $TTLIB $FFLIB]  

######################## Reading RTL Files #################################

puts "###########################################"
puts "#             Reading RTL Files           #"
puts "###########################################"

set file_format verilog

read_file -format $file_format ARITHMETIC_UNIT.v
read_file -format $file_format CMP_UNIT.v
read_file -format $file_format Decoder.v
read_file -format $file_format LOGIC_UNIT.v
read_file -format $file_format SHIFT_UNIT.v
read_file -format $file_format ALU_TOP.v

###################### Defining toplevel ###################################

current_design $top_module

#################### Liniking All The Design Parts #########################
puts "###############################################"
puts "######## Liniking All The Design Parts ########"
puts "###############################################"

link 

#################### Liniking All The Design Parts #########################
puts "###############################################"
puts "######## checking design consistency ##########"
puts "###############################################"

check_design

#################### Define Design Constraints #########################
puts "###############################################"
puts "############ Design Constraints #### ##########"
puts "###############################################"


source ./cons.tcl

###################### Mapping and optimization ########################
puts "###############################################"
puts "########## Mapping & Optimization #############"
puts "###############################################"

if {$flattened == 0} {
compile 
} else {
compile -ungroup_all 
}


#############################################################################
# Write out Design after initial compile
#############################################################################

#Avoid Writing assign statements in the netlist
change_name -hier -rule verilog

if {$flattened == 0} {
write_file -format verilog -hierarchy -output ALU_mapped_hierarchy.v
} else {
write_file -format verilog -hierarchy -output ALU_mapped_flattened.v
}


####################### reporting ##########################################

if {$flattened == 0} {
report_area -hierarchy > area_hierarchy.rpt
} else {
report_area -hierarchy > area_flattened.rpt
}



################# starting graphical user interface #######################

#gui_start

#exit
