########################### Define Top Module ############################
                                                   
set top_module System_Top

##################### Define Working Library Directory ######################
                                                   
define_design_lib work -path ./work

################## Design Compiler Library Files #setup ######################

puts "###########################################"
puts "#      #setting Design Libraries           #"
puts "###########################################"

#Add the path of the libraries to the search_path variable
lappend search_path /home/IC/Labs/Lab_Syn_3.0/std_cells
lappend search_path /home/IC/Labs/Lab_Syn_3.0/rtl

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

read_file -format $file_format System_Top.v
read_file -format $file_format ALU.v
read_file -format $file_format ClkDiv.v
read_file -format $file_format CLK_GATE.v
read_file -format $file_format RegFile.v

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

############################### Path groups ################################
puts "###############################################"
puts "################ Path groups ##################"
puts "###############################################"

group_path -name INREG -from [all_inputs]
group_path -name REGOUT -to [all_outputs]
group_path -name INOUT -from [all_inputs] -to [all_outputs]

#################### Define Design Constraints #########################
puts "###############################################"
puts "############ Design Constraints #### ##########"
puts "###############################################"


# Constraints
# ----------------------------------------------------------------------------
#
# 1. Master Clock Definitions
#
# 2. Generated Clock Definitions
#
# 3. Clock Uncertainties
#
# 4. Clock Latencies 
#
# 5. Clock Relationships
#
# 6. set input/output delay on ports
#
# 7. Driving cells
#
# 8. Output load

####################################################################################
           #########################################################
                  #### Section 1 : Clock Definition ####
           #########################################################
#################################################################################### 
# 1. Master Clock Definitions 
# 2. Generated Clock Definitions
# 3. Clock Latencies
# 4. Clock Uncertainties
# 4. Clock Transitions
####################################################################################
create_clock -period 50 -name master_clk -waveform {0 25} [get_ports CLK]
create_generated_clock -master_clock "master_clk" -source [get_ports CLK] -name generated_reg -divide_by 2 [get_port U0_ClkDiv/o_div_clk]
create_generated_clock -master_clock "master_clk" -source [get_ports CLK] -name generated_alu -divide_by 1 [get_port U0_CLK_GATE/GATED_CLK]
set_clock_uncertainty -setup 0.2 [get_clock generated_reg]
set_clock_uncertainty -setup 0.2 [get_clock generated_alu]
set_clock_uncertainty -setup 0.2 [get_clock master_clk]
set_clock_uncertainty -hold 0.1  [get_clock generated_reg]
set_clock_uncertainty -hold 0.1  [get_clock generated_alu]
set_clock_uncertainty -hold 0.1  [get_clock master_clk]
set_clock_transition 0.05 [get_clock master_clk]
set_clock_transition 0.05 [get_clock generated_reg]
set_clock_transition 0.05 [get_clock generated_alu]
set_clock_latency 0 [get_clock master_clk]
set_clock_latency 0 [get_clock generated_reg]
set_clock_latency 0 [get_clock generated_alu]
####################################################################################
           #########################################################
                  #### Section 2 : Clocks Relationships ####
           #########################################################
####################################################################################
set_dont_touch_network [get_clocks {master_clk generated_reg generated_alu}]
set_dont_touch_network [get_port RST]

####################################################################################
           #########################################################
             #### Section 3 : set input/output delay on ports ####
           #########################################################
####################################################################################
set_input_delay 10 -clock master_clk [get_port CLKDIV_EN]
set_input_delay 10 -clock master_clk [get_port CLKG_EN]
set_input_delay 10 -clock generated_alu [get_port ALU_FUN]
set_input_delay 10 -clock generated_alu [get_port ALU_Enable]
set_input_delay 5 -clock generated_reg [get_port WrEn]
set_input_delay 5 -clock generated_reg [get_port RdEn]
set_input_delay 5 -clock generated_reg [get_port Address]
set_input_delay 5 -clock generated_reg [get_port WrData]
set_output_delay 5 -clock generated_reg [get_port RdData]
set_output_delay 10 -clock generated_alu [get_port ALU_VLD]
set_output_delay 10 -clock generated_alu [get_port ALU_OUT]


####################################################################################
           #########################################################
                  #### Section 4 : Driving cells ####
           #########################################################
####################################################################################
set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c  -lib_cell BUFX2M [get_port CLKDIV_EN]
set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c  -lib_cell BUFX2M [get_port CLKG_EN]
set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c  -lib_cell BUFX2M [get_port ALU_FUN]
set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c  -lib_cell BUFX2M [get_port ALU_Enable]
set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c  -lib_cell BUFX2M [get_port WrEn]
set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c  -lib_cell BUFX2M [get_port RdEn]
set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c  -lib_cell BUFX2M [get_port Address]
set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c  -lib_cell BUFX2M [get_port WrData]

####################################################################################
           #########################################################
                  #### Section 5 : Output load ####
           #########################################################
####################################################################################
set_load 0.75 [get_port RdData]
set_load 0.75 [get_port ALU_VLD]
set_load 0.75 [get_port ALU_OUT]

####################################################################################
           #########################################################
                 #### Section 6 : Operating Condition ####
           #########################################################
####################################################################################

# Define the Worst Library for Max(#setup) analysis
# Define the Best Library for Min(hold) analysis
set_operating_conditions -min_library "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" \
                         -min "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" \
						 -max_library "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c" \
						 -max "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c"




####################################################################################
           #########################################################
                  #### Section 7 : wireload Model ####
           #########################################################
####################################################################################
set_wire_load_model -name "tsmc13_wl10" -library "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c"

####################################################################################
           #########################################################
                  #### Section 8 : multicycle path ####
           #########################################################
####################################################################################
set_multicycle_path -setup 2 -from [get_clock generated_reg] -to [get_clock generated_alu]
set_multicycle_path -setup 2 -from [get_clock generated_reg] -to [get_clock master_clk]
set_multicycle_path -hold 1 -from [get_clock generated_reg] -to [get_clock generated_alu]
set_multicycle_path -hold 1 -from [get_clock generated_reg] -to [get_clock master_clk]

###################### Mapping and optimization ########################
puts "###############################################"
puts "########## Mapping & Optimization #############"
puts "###############################################"

compile -map_effort high

#############################################################################
# Write out Design after initial compile
#############################################################################
write_file -format verilog -hierarchy -output System_Top.v
write_file -format ddc -hierarchy -output System_Top.ddc
write_sdc  -nosplit System_Top.sdc
write_sdf           System_Top.sdf


################# reporting #######################
report_area -hierarchy > area.rpt
report_power -hierarchy > power.rpt
report_timing -max_paths 100 -delay_type min > hold.rpt
report_timing -max_paths 100 -delay_type max > setup.rpt
report_clock -attributes > clocks.rpt
report_constraint -all_violators > constraints.rpt


################# starting graphical user interface #######################

gui_start

#exit
