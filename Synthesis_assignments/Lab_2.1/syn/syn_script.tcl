
################## Design Compiler Library Files ######################

lappend search_path /home/IC/Labs/Lab_Syn_2.1/std_cells
lappend search_path /home/IC/Labs/Lab_Syn_2.1/rtl

set TTLIB "scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"

## Standard Cell libraries 
set target_library [list $TTLIB]

## Standard Cell & Hard Macros libraries 
set link_library [list * $TTLIB]  

######################## Reading RTL Files #################################

read_file -format verilog regfile.v

link 

###################### Mapping and optimization ########################"

compile_ultra

#############################################################################
# Write out Design after initial compile
#############################################################################

write_file -format verilog -output regfile_mapped.v


