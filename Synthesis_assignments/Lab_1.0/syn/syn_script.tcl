####my_script####

set my_lib "scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"

lappend search_path "/home/IC/Labs/Ass_Syn_1.0/std_cells"
lappend search_path "/home/IC/Labs/Ass_Syn_1.0/rtl"

set target_library [list $my_lib]

set link_library   [list "*" $my_lib]

analyze -format verilog { Down_Counter.v }

elaborate -lib work Down_Counter

compile

write_file -format verilog -output Down_Counter_script_analyze.v

gui_start



