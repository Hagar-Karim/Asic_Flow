
################## Design Compiler Library Files ######################

lappend search_path /home/IC/Labs/Lab_Syn_4.1/std_cells
lappend search_path /home/IC/Labs/Lab_Syn_4.1/rtl

set TTLIB "scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"

## Standard Cell libraries 
set target_library [list $TTLIB]

## Standard Cell & Hard Macros libraries 
set link_library [list * $TTLIB]  

######################## Reading RTL Files #################################

read_file -format verilog Up_Dn_Counter.v

link 

###################### Mapping and optimization ########################"

# -minimum_bitwidth : Specifies the minimum size of a register for which the clock can be gated
# Ex : if -minimum_bitwidth 5 >>  it means that if register size >= 5 : clock gating cell will be inserted at the register clock pin otherwise   
set_clock_gating_style -minimum_bitwidth 6 

compile -gate_clock 

#############################################################################
# Write out Design after initial compile
#############################################################################

write_file -format verilog -output Up_Dn_Counter_mapped.v


start_gui

