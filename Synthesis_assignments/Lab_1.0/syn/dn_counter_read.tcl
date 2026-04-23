####read_script###
set mylib "scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"

lappend search_path /home/IC/Labs/Ass_Syn_1.0/std_cells
lappend search_path /home/IC/Labs/Ass_Syn_1.0/rtl

set target_library [list $mylib]
set link_library   [list "*" $mylib]

read_file -format verilog {Down_Counter.v}

link

compile 

write -format verilog -output dn_counter_read.v

gui_start
