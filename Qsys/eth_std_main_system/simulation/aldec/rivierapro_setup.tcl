
# (C) 2001-2019 Altera Corporation. All rights reserved.
# Your use of Altera Corporation's design tools, logic functions and 
# other software and tools, and its AMPP partner logic functions, and 
# any output files any of the foregoing (including device programming 
# or simulation files), and any associated documentation or information 
# are expressly subject to the terms and conditions of the Altera 
# Program License Subscription Agreement, Altera MegaCore Function 
# License Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by Altera 
# or its authorized distributors. Please refer to the applicable 
# agreement for further details.

# ACDS 16.1 196 linux 2019.01.18.13:06:10
# ----------------------------------------
# Auto-generated simulation script rivierapro_setup.tcl
# ----------------------------------------
# This script provides commands to simulate the following IP detected in
# your Quartus project:
#     eth_std_main_system
# 
# Altera recommends that you source this Quartus-generated IP simulation
# script from your own customized top-level script, and avoid editing this
# generated script.
# 
# To write a top-level script that compiles Altera simulation libraries and
# the Quartus-generated IP in your project, along with your design and
# testbench files, copy the text from the TOP-LEVEL TEMPLATE section below
# into a new file, e.g. named "aldec.do", and modify the text as directed.
# 
# ----------------------------------------
# # TOP-LEVEL TEMPLATE - BEGIN
# #
# # QSYS_SIMDIR is used in the Quartus-generated IP simulation script to
# # construct paths to the files required to simulate the IP in your Quartus
# # project. By default, the IP script assumes that you are launching the
# # simulator from the IP script location. If launching from another
# # location, set QSYS_SIMDIR to the output directory you specified when you
# # generated the IP script, relative to the directory from which you launch
# # the simulator.
# #
# set QSYS_SIMDIR <script generation output directory>
# #
# # Source the generated IP simulation script.
# source $QSYS_SIMDIR/aldec/rivierapro_setup.tcl
# #
# # Set any compilation options you require (this is unusual).
# set USER_DEFINED_COMPILE_OPTIONS <compilation options>
# #
# # Call command to compile the Quartus EDA simulation library.
# dev_com
# #
# # Call command to compile the Quartus-generated IP simulation files.
# com
# #
# # Add commands to compile all design files and testbench files, including
# # the top level. (These are all the files required for simulation other
# # than the files compiled by the Quartus-generated IP simulation script)
# #
# vlog -sv2k5 <your compilation options> <design and testbench files>
# #
# # Set the top-level simulation or testbench module/entity name, which is
# # used by the elab command to elaborate the top level.
# #
# set TOP_LEVEL_NAME <simulation top>
# #
# # Set any elaboration options you require.
# set USER_DEFINED_ELAB_OPTIONS <elaboration options>
# #
# # Call command to elaborate your design and testbench.
# elab
# #
# # Run the simulation.
# run
# #
# # Report success to the shell.
# exit -code 0
# #
# # TOP-LEVEL TEMPLATE - END
# ----------------------------------------
# 
# IP SIMULATION SCRIPT
# ----------------------------------------
# If eth_std_main_system is one of several IP cores in your
# Quartus project, you can generate a simulation script
# suitable for inclusion in your top-level simulation
# script by running the following command line:
# 
# ip-setup-simulation --quartus-project=<quartus project>
# 
# ip-setup-simulation will discover the Altera IP
# within the Quartus project, and generate a unified
# script which supports all the Altera IP within the design.
# ----------------------------------------

# ----------------------------------------
# Initialize variables
if ![info exists SYSTEM_INSTANCE_NAME] { 
  set SYSTEM_INSTANCE_NAME ""
} elseif { ![ string match "" $SYSTEM_INSTANCE_NAME ] } { 
  set SYSTEM_INSTANCE_NAME "/$SYSTEM_INSTANCE_NAME"
}

if ![info exists TOP_LEVEL_NAME] { 
  set TOP_LEVEL_NAME "eth_std_main_system"
}

if ![info exists QSYS_SIMDIR] { 
  set QSYS_SIMDIR "./../"
}

if ![info exists QUARTUS_INSTALL_DIR] { 
  set QUARTUS_INSTALL_DIR "/home/srdejong/intelFPGA/16.1/quartus/"
}

if ![info exists USER_DEFINED_COMPILE_OPTIONS] { 
  set USER_DEFINED_COMPILE_OPTIONS ""
}
if ![info exists USER_DEFINED_ELAB_OPTIONS] { 
  set USER_DEFINED_ELAB_OPTIONS ""
}

# ----------------------------------------
# Initialize simulation properties - DO NOT MODIFY!
set ELAB_OPTIONS ""
set SIM_OPTIONS ""
if ![ string match "*-64 vsim*" [ vsim -version ] ] {
} else {
}

set Aldec "Riviera"
if { [ string match "*Active-HDL*" [ vsim -version ] ] } {
  set Aldec "Active"
}

if { [ string match "Active" $Aldec ] } {
  scripterconf -tcl
  createdesign "$TOP_LEVEL_NAME"  "."
  opendesign "$TOP_LEVEL_NAME"
}

# ----------------------------------------
# Copy ROM/RAM files to simulation directory
alias file_copy {
  echo "\[exec\] file_copy"
  file copy -force $QSYS_SIMDIR/submodules/eth_std_main_system_sdram_s0_AC_ROM.hex ./
  file copy -force $QSYS_SIMDIR/submodules/eth_std_main_system_sdram_s0_inst_ROM.hex ./
  file copy -force $QSYS_SIMDIR/submodules/eth_std_main_system_sdram_s0_sequencer_mem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/eth_std_main_system_ethernet_subsystem_descriptor_memory.hex ./
  file copy -force $QSYS_SIMDIR/submodules/eth_std_main_system_cpu_cpu_ic_tag_ram.dat ./
  file copy -force $QSYS_SIMDIR/submodules/eth_std_main_system_cpu_cpu_ociram_default_contents.mif ./
  file copy -force $QSYS_SIMDIR/submodules/eth_std_main_system_cpu_cpu_dc_tag_ram.dat ./
  file copy -force $QSYS_SIMDIR/submodules/eth_std_main_system_cpu_cpu_bht_ram.hex ./
  file copy -force $QSYS_SIMDIR/submodules/eth_std_main_system_cpu_cpu_ic_tag_ram.mif ./
  file copy -force $QSYS_SIMDIR/submodules/eth_std_main_system_cpu_cpu_dc_tag_ram.hex ./
  file copy -force $QSYS_SIMDIR/submodules/eth_std_main_system_cpu_cpu_rf_ram_a.dat ./
  file copy -force $QSYS_SIMDIR/submodules/eth_std_main_system_cpu_cpu_bht_ram.mif ./
  file copy -force $QSYS_SIMDIR/submodules/eth_std_main_system_cpu_cpu_rf_ram_b.hex ./
  file copy -force $QSYS_SIMDIR/submodules/eth_std_main_system_cpu_cpu_ic_tag_ram.hex ./
  file copy -force $QSYS_SIMDIR/submodules/eth_std_main_system_cpu_cpu_rf_ram_a.mif ./
  file copy -force $QSYS_SIMDIR/submodules/eth_std_main_system_cpu_cpu_ociram_default_contents.dat ./
  file copy -force $QSYS_SIMDIR/submodules/eth_std_main_system_cpu_cpu_rf_ram_b.mif ./
  file copy -force $QSYS_SIMDIR/submodules/eth_std_main_system_cpu_cpu_rf_ram_a.hex ./
  file copy -force $QSYS_SIMDIR/submodules/eth_std_main_system_cpu_cpu_ociram_default_contents.hex ./
  file copy -force $QSYS_SIMDIR/submodules/eth_std_main_system_cpu_cpu_rf_ram_b.dat ./
  file copy -force $QSYS_SIMDIR/submodules/eth_std_main_system_cpu_cpu_dc_tag_ram.mif ./
  file copy -force $QSYS_SIMDIR/submodules/eth_std_main_system_cpu_cpu_bht_ram.dat ./
}

# ----------------------------------------
# Create compilation libraries
proc ensure_lib { lib } { if ![file isdirectory $lib] { vlib $lib } }
ensure_lib      ./libraries     
ensure_lib      ./libraries/work
vmap       work ./libraries/work
ensure_lib                       ./libraries/altera_ver           
vmap       altera_ver            ./libraries/altera_ver           
ensure_lib                       ./libraries/lpm_ver              
vmap       lpm_ver               ./libraries/lpm_ver              
ensure_lib                       ./libraries/sgate_ver            
vmap       sgate_ver             ./libraries/sgate_ver            
ensure_lib                       ./libraries/altera_mf_ver        
vmap       altera_mf_ver         ./libraries/altera_mf_ver        
ensure_lib                       ./libraries/altera_lnsim_ver     
vmap       altera_lnsim_ver      ./libraries/altera_lnsim_ver     
ensure_lib                       ./libraries/cyclonev_ver         
vmap       cyclonev_ver          ./libraries/cyclonev_ver         
ensure_lib                       ./libraries/cyclonev_hssi_ver    
vmap       cyclonev_hssi_ver     ./libraries/cyclonev_hssi_ver    
ensure_lib                       ./libraries/cyclonev_pcie_hip_ver
vmap       cyclonev_pcie_hip_ver ./libraries/cyclonev_pcie_hip_ver
ensure_lib                       ./libraries/altera               
vmap       altera                ./libraries/altera               
ensure_lib                       ./libraries/lpm                  
vmap       lpm                   ./libraries/lpm                  
ensure_lib                       ./libraries/sgate                
vmap       sgate                 ./libraries/sgate                
ensure_lib                       ./libraries/altera_mf            
vmap       altera_mf             ./libraries/altera_mf            
ensure_lib                       ./libraries/altera_lnsim         
vmap       altera_lnsim          ./libraries/altera_lnsim         
ensure_lib                       ./libraries/cyclonev             
vmap       cyclonev              ./libraries/cyclonev             
ensure_lib                                  ./libraries/error_adapter_0                 
vmap       error_adapter_0                  ./libraries/error_adapter_0                 
ensure_lib                                  ./libraries/p2b_adapter                     
vmap       p2b_adapter                      ./libraries/p2b_adapter                     
ensure_lib                                  ./libraries/b2p_adapter                     
vmap       b2p_adapter                      ./libraries/b2p_adapter                     
ensure_lib                                  ./libraries/transacto                       
vmap       transacto                        ./libraries/transacto                       
ensure_lib                                  ./libraries/p2b                             
vmap       p2b                              ./libraries/p2b                             
ensure_lib                                  ./libraries/b2p                             
vmap       b2p                              ./libraries/b2p                             
ensure_lib                                  ./libraries/timing_adt                      
vmap       timing_adt                       ./libraries/timing_adt                      
ensure_lib                                  ./libraries/jtag_phy_embedded_in_jtag_master
vmap       jtag_phy_embedded_in_jtag_master ./libraries/jtag_phy_embedded_in_jtag_master
ensure_lib                                  ./libraries/rsp_mux                         
vmap       rsp_mux                          ./libraries/rsp_mux                         
ensure_lib                                  ./libraries/rsp_demux                       
vmap       rsp_demux                        ./libraries/rsp_demux                       
ensure_lib                                  ./libraries/cmd_mux                         
vmap       cmd_mux                          ./libraries/cmd_mux                         
ensure_lib                                  ./libraries/cmd_demux                       
vmap       cmd_demux                        ./libraries/cmd_demux                       
ensure_lib                                  ./libraries/router_001                      
vmap       router_001                       ./libraries/router_001                      
ensure_lib                                  ./libraries/router                          
vmap       router                           ./libraries/router                          
ensure_lib                                  ./libraries/timing_adapter_0                
vmap       timing_adapter_0                 ./libraries/timing_adapter_0                
ensure_lib                                  ./libraries/router_002                      
vmap       router_002                       ./libraries/router_002                      
ensure_lib                                  ./libraries/router_004                      
vmap       router_004                       ./libraries/router_004                      
ensure_lib                                  ./libraries/i_tse_mac                       
vmap       i_tse_mac                        ./libraries/i_tse_mac                       
ensure_lib                                  ./libraries/avalon_st_adapter               
vmap       avalon_st_adapter                ./libraries/avalon_st_adapter               
ensure_lib                                  ./libraries/crosser                         
vmap       crosser                          ./libraries/crosser                         
ensure_lib                                  ./libraries/rsp_mux_002                     
vmap       rsp_mux_002                      ./libraries/rsp_mux_002                     
ensure_lib                                  ./libraries/rsp_mux_001                     
vmap       rsp_mux_001                      ./libraries/rsp_mux_001                     
ensure_lib                                  ./libraries/rsp_demux_002                   
vmap       rsp_demux_002                    ./libraries/rsp_demux_002                   
ensure_lib                                  ./libraries/cmd_mux_002                     
vmap       cmd_mux_002                      ./libraries/cmd_mux_002                     
ensure_lib                                  ./libraries/cmd_mux_001                     
vmap       cmd_mux_001                      ./libraries/cmd_mux_001                     
ensure_lib                                  ./libraries/cmd_demux_002                   
vmap       cmd_demux_002                    ./libraries/cmd_demux_002                   
ensure_lib                                  ./libraries/cmd_demux_001                   
vmap       cmd_demux_001                    ./libraries/cmd_demux_001                   
ensure_lib                                  ./libraries/cpu_data_master_limiter         
vmap       cpu_data_master_limiter          ./libraries/cpu_data_master_limiter         
ensure_lib                                  ./libraries/router_005                      
vmap       router_005                       ./libraries/router_005                      
ensure_lib                                  ./libraries/router_003                      
vmap       router_003                       ./libraries/router_003                      
ensure_lib                                  ./libraries/sdram_avl_0_agent_rsp_fifo      
vmap       sdram_avl_0_agent_rsp_fifo       ./libraries/sdram_avl_0_agent_rsp_fifo      
ensure_lib                                  ./libraries/sdram_avl_0_agent               
vmap       sdram_avl_0_agent                ./libraries/sdram_avl_0_agent               
ensure_lib                                  ./libraries/cpu_data_master_agent           
vmap       cpu_data_master_agent            ./libraries/cpu_data_master_agent           
ensure_lib                                  ./libraries/sdram_avl_0_translator          
vmap       sdram_avl_0_translator           ./libraries/sdram_avl_0_translator          
ensure_lib                                  ./libraries/cpu_data_master_translator      
vmap       cpu_data_master_translator       ./libraries/cpu_data_master_translator      
ensure_lib                                  ./libraries/mm_interconnect_1               
vmap       mm_interconnect_1                ./libraries/mm_interconnect_1               
ensure_lib                                  ./libraries/dll0                            
vmap       dll0                             ./libraries/dll0                            
ensure_lib                                  ./libraries/oct0                            
vmap       oct0                             ./libraries/oct0                            
ensure_lib                                  ./libraries/c0                              
vmap       c0                               ./libraries/c0                              
ensure_lib                                  ./libraries/dmaster                         
vmap       dmaster                          ./libraries/dmaster                         
ensure_lib                                  ./libraries/s0                              
vmap       s0                               ./libraries/s0                              
ensure_lib                                  ./libraries/p0                              
vmap       p0                               ./libraries/p0                              
ensure_lib                                  ./libraries/pll0                            
vmap       pll0                             ./libraries/pll0                            
ensure_lib                                  ./libraries/mm_interconnect_0               
vmap       mm_interconnect_0                ./libraries/mm_interconnect_0               
ensure_lib                                  ./libraries/sys_clk_timer                   
vmap       sys_clk_timer                    ./libraries/sys_clk_timer                   
ensure_lib                                  ./libraries/performance_counter             
vmap       performance_counter              ./libraries/performance_counter             
ensure_lib                                  ./libraries/led_pio                         
vmap       led_pio                          ./libraries/led_pio                         
ensure_lib                                  ./libraries/jtag_uart                       
vmap       jtag_uart                        ./libraries/jtag_uart                       
ensure_lib                                  ./libraries/high_res_timer                  
vmap       high_res_timer                   ./libraries/high_res_timer                  
ensure_lib                                  ./libraries/button_pio                      
vmap       button_pio                       ./libraries/button_pio                      
ensure_lib                                  ./libraries/mm_interconnect_2               
vmap       mm_interconnect_2                ./libraries/mm_interconnect_2               
ensure_lib                                  ./libraries/tse_mac                         
vmap       tse_mac                          ./libraries/tse_mac                         
ensure_lib                                  ./libraries/sgdma_tx                        
vmap       sgdma_tx                         ./libraries/sgdma_tx                        
ensure_lib                                  ./libraries/sgdma_rx                        
vmap       sgdma_rx                         ./libraries/sgdma_rx                        
ensure_lib                                  ./libraries/ethernet_bridge                 
vmap       ethernet_bridge                  ./libraries/ethernet_bridge                 
ensure_lib                                  ./libraries/descriptor_memory               
vmap       descriptor_memory                ./libraries/descriptor_memory               
ensure_lib                                  ./libraries/cpu                             
vmap       cpu                              ./libraries/cpu                             
ensure_lib                                  ./libraries/rst_controller                  
vmap       rst_controller                   ./libraries/rst_controller                  
ensure_lib                                  ./libraries/irq_mapper                      
vmap       irq_mapper                       ./libraries/irq_mapper                      
ensure_lib                                  ./libraries/sysid                           
vmap       sysid                            ./libraries/sysid                           
ensure_lib                                  ./libraries/sdram                           
vmap       sdram                            ./libraries/sdram                           
ensure_lib                                  ./libraries/peripheral_subsystem            
vmap       peripheral_subsystem             ./libraries/peripheral_subsystem            
ensure_lib                                  ./libraries/ethernet_subsystem              
vmap       ethernet_subsystem               ./libraries/ethernet_subsystem              
ensure_lib                                  ./libraries/enet_pll                        
vmap       enet_pll                         ./libraries/enet_pll                        

# ----------------------------------------
# Compile device library files
alias dev_com {
  echo "\[exec\] dev_com"
  eval vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v"                    -work altera_ver           
  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"                             -work lpm_ver              
  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"                                -work sgate_ver            
  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"                            -work altera_mf_ver        
  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"                        -work altera_lnsim_ver     
  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/aldec/cyclonev_atoms_ncrypt.v"          -work cyclonev_ver         
  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/aldec/cyclonev_hmi_atoms_ncrypt.v"      -work cyclonev_ver         
  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_atoms.v"                       -work cyclonev_ver         
  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/aldec/cyclonev_hssi_atoms_ncrypt.v"     -work cyclonev_hssi_ver    
  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_hssi_atoms.v"                  -work cyclonev_hssi_ver    
  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/aldec/cyclonev_pcie_hip_atoms_ncrypt.v" -work cyclonev_pcie_hip_ver
  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_pcie_hip_atoms.v"              -work cyclonev_pcie_hip_ver
  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_syn_attributes.vhd"              -work altera               
  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_standard_functions.vhd"          -work altera               
  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QUARTUS_INSTALL_DIR/eda/sim_lib/alt_dspbuilder_package.vhd"             -work altera               
  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_europa_support_lib.vhd"          -work altera               
  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives_components.vhd"       -work altera               
  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.vhd"                  -work altera               
  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QUARTUS_INSTALL_DIR/eda/sim_lib/220pack.vhd"                            -work lpm                  
  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.vhd"                           -work lpm                  
  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate_pack.vhd"                         -work sgate                
  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.vhd"                              -work sgate                
  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf_components.vhd"               -work altera_mf            
  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.vhd"                          -work altera_mf            
  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim_components.vhd"            -work altera_lnsim         
  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_atoms.vhd"                     -work cyclonev             
  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_components.vhd"                -work cyclonev             
}

# ----------------------------------------
# Compile the design files in correct order
alias com {
  echo "\[exec\] com"
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_mm_interconnect_0_avalon_st_adapter_error_adapter_0.sv"          -work error_adapter_0                 
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_dmaster_p2b_adapter.sv"                                    -work p2b_adapter                     
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_dmaster_b2p_adapter.sv"                                    -work b2p_adapter                     
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_packets_to_master.v"                                                   -work transacto                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_st_packets_to_bytes.v"                                                 -work p2b                             
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_st_bytes_to_packets.v"                                                 -work b2p                             
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_dmaster_timing_adt.sv"                                     -work timing_adt                      
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_st_jtag_interface.v"                                                   -work jtag_phy_embedded_in_jtag_master
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_jtag_dc_streaming.v"                                                          -work jtag_phy_embedded_in_jtag_master
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_jtag_sld_node.v"                                                              -work jtag_phy_embedded_in_jtag_master
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_jtag_streaming.v"                                                             -work jtag_phy_embedded_in_jtag_master
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_st_clock_crosser.v"                                                    -work jtag_phy_embedded_in_jtag_master
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_std_synchronizer_nocut.v"                                                     -work jtag_phy_embedded_in_jtag_master
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_base.v"                                                    -work jtag_phy_embedded_in_jtag_master
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_st_idle_remover.v"                                                     -work jtag_phy_embedded_in_jtag_master
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_st_idle_inserter.v"                                                    -work jtag_phy_embedded_in_jtag_master
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_stage.sv"                                                  -work jtag_phy_embedded_in_jtag_master
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_peripheral_subsystem_mm_interconnect_0_rsp_mux.sv"               -work rsp_mux                         
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                                         -work rsp_mux                         
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_peripheral_subsystem_mm_interconnect_0_rsp_demux.sv"             -work rsp_demux                       
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_peripheral_subsystem_mm_interconnect_0_cmd_mux.sv"               -work cmd_mux                         
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                                         -work cmd_mux                         
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_peripheral_subsystem_mm_interconnect_0_cmd_demux.sv"             -work cmd_demux                       
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_peripheral_subsystem_mm_interconnect_0_router_001.sv"            -work router_001                      
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_peripheral_subsystem_mm_interconnect_0_router.sv"                -work router                          
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_ethernet_subsystem_avalon_st_adapter_timing_adapter_0.sv"        -work timing_adapter_0                
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_ethernet_subsystem_avalon_st_adapter_timing_adapter_0_fifo.sv"   -work timing_adapter_0                
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_ethernet_subsystem_mm_interconnect_2_rsp_mux.sv"                 -work rsp_mux                         
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                                         -work rsp_mux                         
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_ethernet_subsystem_mm_interconnect_2_rsp_demux.sv"               -work rsp_demux                       
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_ethernet_subsystem_mm_interconnect_2_cmd_mux.sv"                 -work cmd_mux                         
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                                         -work cmd_mux                         
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_ethernet_subsystem_mm_interconnect_2_cmd_demux.sv"               -work cmd_demux                       
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_ethernet_subsystem_mm_interconnect_2_router_002.sv"              -work router_002                      
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_ethernet_subsystem_mm_interconnect_2_router.sv"                  -work router                          
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_ethernet_subsystem_mm_interconnect_1_rsp_mux.sv"                 -work rsp_mux                         
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                                         -work rsp_mux                         
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_ethernet_subsystem_mm_interconnect_1_rsp_demux.sv"               -work rsp_demux                       
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_ethernet_subsystem_mm_interconnect_1_cmd_mux.sv"                 -work cmd_mux                         
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                                         -work cmd_mux                         
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_ethernet_subsystem_mm_interconnect_1_cmd_demux.sv"               -work cmd_demux                       
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_ethernet_subsystem_mm_interconnect_1_router_001.sv"              -work router_001                      
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_ethernet_subsystem_mm_interconnect_1_router.sv"                  -work router                          
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_ethernet_subsystem_mm_interconnect_0_rsp_mux.sv"                 -work rsp_mux                         
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                                         -work rsp_mux                         
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_ethernet_subsystem_mm_interconnect_0_rsp_demux.sv"               -work rsp_demux                       
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_ethernet_subsystem_mm_interconnect_0_cmd_mux.sv"                 -work cmd_mux                         
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                                         -work cmd_mux                         
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_ethernet_subsystem_mm_interconnect_0_cmd_demux.sv"               -work cmd_demux                       
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_ethernet_subsystem_mm_interconnect_0_router_004.sv"              -work router_004                      
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_ethernet_subsystem_mm_interconnect_0_router.sv"                  -work router                          
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_eth_tse_mac.v"                                                          -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_clk_cntl.v"                                                         -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_crc328checker.v"                                                    -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_crc328generator.v"                                                  -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_crc32ctl8.v"                                                        -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_crc32galois8.v"                                                     -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_gmii_io.v"                                                          -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_lb_read_cntl.v"                                                     -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_lb_wrt_cntl.v"                                                      -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_hashing.v"                                                          -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_host_control.v"                                                     -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_host_control_small.v"                                               -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_mac_control.v"                                                      -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_register_map.v"                                                     -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_register_map_small.v"                                               -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_rx_counter_cntl.v"                                                  -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_shared_mac_control.v"                                               -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_shared_register_map.v"                                              -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_tx_counter_cntl.v"                                                  -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_lfsr_10.v"                                                          -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_loopback_ff.v"                                                      -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_altshifttaps.v"                                                     -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_fifoless_mac_rx.v"                                                  -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_mac_rx.v"                                                           -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_fifoless_mac_tx.v"                                                  -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_mac_tx.v"                                                           -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_magic_detection.v"                                                  -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_mdio.v"                                                             -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_mdio_clk_gen.v"                                                     -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_mdio_cntl.v"                                                        -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_top_mdio.v"                                                         -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_mii_rx_if.v"                                                        -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_mii_tx_if.v"                                                        -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_pipeline_base.v"                                                    -work i_tse_mac                       
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/aldec/altera_tse_pipeline_stage.sv"                                                  -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_dpram_16x32.v"                                                      -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_dpram_8x32.v"                                                       -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_dpram_ecc_16x32.v"                                                  -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_fifoless_retransmit_cntl.v"                                         -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_retransmit_cntl.v"                                                  -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_rgmii_in1.v"                                                        -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_rgmii_in4.v"                                                        -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_nf_rgmii_module.v"                                                  -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_rgmii_module.v"                                                     -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_rgmii_out1.v"                                                       -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_rgmii_out4.v"                                                       -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_rx_ff.v"                                                            -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_rx_min_ff.v"                                                        -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_rx_ff_cntrl.v"                                                      -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_rx_ff_cntrl_32.v"                                                   -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_rx_ff_cntrl_32_shift16.v"                                           -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_rx_ff_length.v"                                                     -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_rx_stat_extract.v"                                                  -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_timing_adapter32.v"                                                 -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_timing_adapter8.v"                                                  -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_timing_adapter_fifo32.v"                                            -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_timing_adapter_fifo8.v"                                             -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_top_1geth.v"                                                        -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_top_fifoless_1geth.v"                                               -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_top_w_fifo.v"                                                       -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_top_w_fifo_10_100_1000.v"                                           -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_top_wo_fifo.v"                                                      -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_top_wo_fifo_10_100_1000.v"                                          -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_top_gen_host.v"                                                     -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_tx_ff.v"                                                            -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_tx_min_ff.v"                                                        -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_tx_ff_cntrl.v"                                                      -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_tx_ff_cntrl_32.v"                                                   -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_tx_ff_cntrl_32_shift16.v"                                           -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_tx_ff_length.v"                                                     -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_tx_ff_read_cntl.v"                                                  -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_tx_stat_extract.v"                                                  -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_eth_tse_std_synchronizer.v"                                             -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_eth_tse_std_synchronizer_bundle.v"                                      -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_eth_tse_ptp_std_synchronizer.v"                                         -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_false_path_marker.v"                                                -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_reset_synchronizer.v"                                               -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_clock_crosser.v"                                                    -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_a_fifo_13.v"                                                        -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_a_fifo_24.v"                                                        -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_a_fifo_34.v"                                                        -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_a_fifo_opt_1246.v"                                                  -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_a_fifo_opt_14_44.v"                                                 -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_a_fifo_opt_36_10.v"                                                 -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_gray_cnt.v"                                                         -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_sdpm_altsyncram.v"                                                  -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_altsyncram_dpm_fifo.v"                                              -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_bin_cnt.v"                                                          -work i_tse_mac                       
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/aldec/altera_tse_ph_calculator.sv"                                                   -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_sdpm_gen.v"                                                         -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_ecc_dec_x10.v"                                                      -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_ecc_enc_x10.v"                                                      -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_ecc_enc_x10_wrapper.v"                                              -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_ecc_dec_x14.v"                                                      -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_ecc_enc_x14.v"                                                      -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_ecc_enc_x14_wrapper.v"                                              -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_ecc_dec_x2.v"                                                       -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_ecc_enc_x2.v"                                                       -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_ecc_enc_x2_wrapper.v"                                               -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_ecc_dec_x23.v"                                                      -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_ecc_enc_x23.v"                                                      -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_ecc_enc_x23_wrapper.v"                                              -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_ecc_dec_x36.v"                                                      -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_ecc_enc_x36.v"                                                      -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_ecc_enc_x36_wrapper.v"                                              -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_ecc_dec_x40.v"                                                      -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_ecc_enc_x40.v"                                                      -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_ecc_enc_x40_wrapper.v"                                              -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_ecc_dec_x30.v"                                                      -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_ecc_enc_x30.v"                                                      -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_ecc_enc_x30_wrapper.v"                                              -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_tse_ecc_status_crosser.v"                                               -work i_tse_mac                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_std_synchronizer_nocut.v"                                                     -work i_tse_mac                       
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/submodules/eth_std_main_system_mm_interconnect_0_avalon_st_adapter.vhd"                         -work avalon_st_adapter               
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_avalon_st_handshake_clock_crosser.v"                                          -work crosser                         
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_avalon_st_clock_crosser.v"                                                    -work crosser                         
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_base.v"                                                    -work crosser                         
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_std_synchronizer_nocut.v"                                                     -work crosser                         
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_mm_interconnect_0_rsp_mux_002.sv"                                -work rsp_mux_002                     
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                                         -work rsp_mux_002                     
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_mm_interconnect_0_rsp_mux_001.sv"                                -work rsp_mux_001                     
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                                         -work rsp_mux_001                     
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_mm_interconnect_0_rsp_mux.sv"                                    -work rsp_mux                         
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                                         -work rsp_mux                         
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_mm_interconnect_0_rsp_demux_002.sv"                              -work rsp_demux_002                   
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_mm_interconnect_0_rsp_demux.sv"                                  -work rsp_demux                       
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_mm_interconnect_0_cmd_mux_002.sv"                                -work cmd_mux_002                     
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                                         -work cmd_mux_002                     
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_mm_interconnect_0_cmd_mux_001.sv"                                -work cmd_mux_001                     
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                                         -work cmd_mux_001                     
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_mm_interconnect_0_cmd_mux.sv"                                    -work cmd_mux                         
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                                         -work cmd_mux                         
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_mm_interconnect_0_cmd_demux_002.sv"                              -work cmd_demux_002                   
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_mm_interconnect_0_cmd_demux_001.sv"                              -work cmd_demux_001                   
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_mm_interconnect_0_cmd_demux.sv"                                  -work cmd_demux                       
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_merlin_traffic_limiter.sv"                                                    -work cpu_data_master_limiter         
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_merlin_reorder_memory.sv"                                                     -work cpu_data_master_limiter         
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_avalon_sc_fifo.v"                                                             -work cpu_data_master_limiter         
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_base.v"                                                    -work cpu_data_master_limiter         
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_mm_interconnect_0_router_005.sv"                                 -work router_005                      
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_mm_interconnect_0_router_004.sv"                                 -work router_004                      
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_mm_interconnect_0_router_003.sv"                                 -work router_003                      
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_mm_interconnect_0_router_002.sv"                                 -work router_002                      
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_mm_interconnect_0_router_001.sv"                                 -work router_001                      
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_mm_interconnect_0_router.sv"                                     -work router                          
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_sc_fifo.v"                                                             -work sdram_avl_0_agent_rsp_fifo      
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_merlin_slave_agent.sv"                                                        -work sdram_avl_0_agent               
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_merlin_burst_uncompressor.sv"                                                 -work sdram_avl_0_agent               
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_merlin_master_agent.sv"                                                       -work cpu_data_master_agent           
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_merlin_slave_translator.sv"                                                   -work sdram_avl_0_translator          
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_merlin_master_translator.sv"                                                  -work cpu_data_master_translator      
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_mm_interconnect_1.v"                                       -work mm_interconnect_1               
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_mem_if_dll_cyclonev.sv"                                                       -work dll0                            
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_mem_if_oct_cyclonev.sv"                                                       -work oct0                            
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_mem_if_hard_memory_controller_top_cyclonev.sv"                                -work c0                              
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_dmaster.vhd"                                               -work dmaster                         
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_s0.v"                                                      -work s0                              
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_s0_mm_interconnect_0_router_007.sv"                        -work s0                              
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_s0_mm_interconnect_0_cmd_demux_002.sv"                     -work s0                              
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/sequencer_scc_siii_wrapper.sv"                                                       -work s0                              
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_mm_bridge.v"                                                           -work s0                              
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_s0_mm_interconnect_0.v"                                    -work s0                              
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_merlin_master_agent.sv"                                                       -work s0                              
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_s0_irq_mapper.sv"                                          -work s0                              
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_s0_mm_interconnect_0_cmd_demux_001.sv"                     -work s0                              
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/sequencer_reg_file.sv"                                                               -work s0                              
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_s0_mm_interconnect_0_router_002.sv"                        -work s0                              
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/sequencer_scc_mgr.sv"                                                                -work s0                              
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_mem_if_sequencer_rst.sv"                                                      -work s0                              
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_s0_mm_interconnect_0_router_010.sv"                        -work s0                              
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_merlin_reorder_memory.sv"                                                     -work s0                              
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_s0_mm_interconnect_0_router_009.sv"                        -work s0                              
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_s0_mm_interconnect_0_router.sv"                            -work s0                              
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_s0_mm_interconnect_0_avalon_st_adapter_error_adapter_0.sv" -work s0                              
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_s0_mm_interconnect_0_router_003.sv"                        -work s0                              
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_s0_mm_interconnect_0_cmd_mux_003.sv"                       -work s0                              
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/sequencer_trk_mgr.sv"                                                                -work s0                              
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_s0_mm_interconnect_0_cmd_demux_003.sv"                     -work s0                              
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_mem_if_sequencer_cpu_cv_sim_cpu_inst_test_bench.v"                            -work s0                              
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_mem_if_sequencer_cpu_cv_sim_cpu_inst.v"                                       -work s0                              
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_s0_mm_interconnect_0_rsp_mux_001.sv"                       -work s0                              
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_mem_if_sequencer_mem_no_ifdef_params.sv"                                      -work s0                              
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_merlin_burst_uncompressor.sv"                                                 -work s0                              
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/sequencer_scc_acv_wrapper.sv"                                                        -work s0                              
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_mem_if_simple_avalon_mm_bridge.sv"                                            -work s0                              
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/sequencer_scc_acv_phase_decode.v"                                                    -work s0                              
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_s0_mm_interconnect_0_avalon_st_adapter.v"                  -work s0                              
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/sequencer_scc_sv_phase_decode.v"                                                     -work s0                              
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_s0_mm_interconnect_0_rsp_demux_002.sv"                     -work s0                              
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                                         -work s0                              
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_s0_mm_interconnect_0_cmd_demux.sv"                         -work s0                              
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/sequencer_scc_reg_file.v"                                                            -work s0                              
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_s0_mm_interconnect_0_cmd_mux_002.sv"                       -work s0                              
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_s0_mm_interconnect_0_router_001.sv"                        -work s0                              
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_s0_mm_interconnect_0_rsp_mux.sv"                           -work s0                              
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/sequencer_scc_sv_wrapper.sv"                                                         -work s0                              
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_s0_mm_interconnect_0_router_005.sv"                        -work s0                              
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_s0_mm_interconnect_0_router_008.sv"                        -work s0                              
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_merlin_slave_agent.sv"                                                        -work s0                              
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/sequencer_scc_siii_phase_decode.v"                                                   -work s0                              
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_s0_mm_interconnect_0_cmd_mux.sv"                           -work s0                              
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_s0_mm_interconnect_0_rsp_mux_002.sv"                       -work s0                              
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_merlin_traffic_limiter.sv"                                                    -work s0                              
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_s0_mm_interconnect_0_router_004.sv"                        -work s0                              
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_p0_clock_pair_generator.v"                                 -work p0                              
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_p0_acv_hard_addr_cmd_pads.v"                               -work p0                              
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_p0_acv_hard_memphy.v"                                      -work p0                              
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_p0_acv_ldc.v"                                              -work p0                              
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_p0_acv_hard_io_pads.v"                                     -work p0                              
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_p0_generic_ddio.v"                                         -work p0                              
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_p0_reset.v"                                                -work p0                              
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_p0_reset_sync.v"                                           -work p0                              
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_p0_phy_csr.sv"                                             -work p0                              
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_p0_iss_probe.v"                                            -work p0                              
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_p0.sv"                                                     -work p0                              
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_p0_altdqdqs.v"                                             -work p0                              
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altdq_dqs2_acv_connect_to_hard_phy_cyclonev_lpddr2.sv"                               -work p0                              
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_pll0.sv"                                                   -work pll0                            
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_peripheral_subsystem_mm_interconnect_0.v"                        -work mm_interconnect_0               
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_peripheral_subsystem_sys_clk_timer.v"                            -work sys_clk_timer                   
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_peripheral_subsystem_performance_counter.v"                      -work performance_counter             
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_peripheral_subsystem_led_pio.v"                                  -work led_pio                         
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_peripheral_subsystem_jtag_uart.v"                                -work jtag_uart                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_peripheral_subsystem_high_res_timer.v"                           -work high_res_timer                  
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_peripheral_subsystem_button_pio.v"                               -work button_pio                      
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/submodules/eth_std_main_system_ethernet_subsystem_avalon_st_adapter.vhd"                        -work avalon_st_adapter               
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_ethernet_subsystem_mm_interconnect_2.v"                          -work mm_interconnect_2               
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_ethernet_subsystem_mm_interconnect_1.v"                          -work mm_interconnect_1               
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_ethernet_subsystem_mm_interconnect_0.v"                          -work mm_interconnect_0               
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_ethernet_subsystem_tse_mac.v"                                    -work tse_mac                         
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_ethernet_subsystem_sgdma_tx.v"                                   -work sgdma_tx                        
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_ethernet_subsystem_sgdma_rx.v"                                   -work sgdma_rx                        
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_mm_bridge.v"                                                           -work ethernet_bridge                 
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_ethernet_subsystem_descriptor_memory.v"                          -work descriptor_memory               
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_cpu_cpu_debug_slave_sysclk.v"                                    -work cpu                             
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_cpu_cpu_mult_cell.v"                                             -work cpu                             
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_cpu_cpu_debug_slave_wrapper.v"                                   -work cpu                             
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_cpu_cpu.vo"                                                      -work cpu                             
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_cpu_cpu_debug_slave_tck.v"                                       -work cpu                             
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_cpu_cpu_test_bench.v"                                            -work cpu                             
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_reset_controller.v"                                                           -work rst_controller                  
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_reset_synchronizer.v"                                                         -work rst_controller                  
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/eth_std_main_system_irq_mapper.sv"                                                   -work irq_mapper                      
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_mm_interconnect_0.v"                                             -work mm_interconnect_0               
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_sysid.v"                                                         -work sysid                           
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram.v"                                                         -work sdram                           
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/submodules/eth_std_main_system_peripheral_subsystem.vhd"                                        -work peripheral_subsystem            
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/submodules/eth_std_main_system_ethernet_subsystem.vhd"                                          -work ethernet_subsystem              
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/submodules/eth_std_main_system_ethernet_subsystem_ethernet_bridge.vhd"                          -work ethernet_subsystem              
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/submodules/eth_std_main_system_ethernet_subsystem_sgdma_bridge.vhd"                             -work ethernet_subsystem              
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_enet_pll.vo"                                                     -work enet_pll                        
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_cpu.v"                                                           -work cpu                             
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/eth_std_main_system.vhd"                                                                                                              
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/eth_std_main_system_rst_controller.vhd"                                                                                               
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/eth_std_main_system_rst_controller_001.vhd"                                                                                           
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/eth_std_main_system_rst_controller_006.vhd"                                                                                           
}

# ----------------------------------------
# Elaborate top level design
alias elab {
  echo "\[exec\] elab"
  eval vsim +access +r -t ps $ELAB_OPTIONS -L work -L error_adapter_0 -L p2b_adapter -L b2p_adapter -L transacto -L p2b -L b2p -L timing_adt -L jtag_phy_embedded_in_jtag_master -L rsp_mux -L rsp_demux -L cmd_mux -L cmd_demux -L router_001 -L router -L timing_adapter_0 -L router_002 -L router_004 -L i_tse_mac -L avalon_st_adapter -L crosser -L rsp_mux_002 -L rsp_mux_001 -L rsp_demux_002 -L cmd_mux_002 -L cmd_mux_001 -L cmd_demux_002 -L cmd_demux_001 -L cpu_data_master_limiter -L router_005 -L router_003 -L sdram_avl_0_agent_rsp_fifo -L sdram_avl_0_agent -L cpu_data_master_agent -L sdram_avl_0_translator -L cpu_data_master_translator -L mm_interconnect_1 -L dll0 -L oct0 -L c0 -L dmaster -L s0 -L p0 -L pll0 -L mm_interconnect_0 -L sys_clk_timer -L performance_counter -L led_pio -L jtag_uart -L high_res_timer -L button_pio -L mm_interconnect_2 -L tse_mac -L sgdma_tx -L sgdma_rx -L ethernet_bridge -L descriptor_memory -L cpu -L rst_controller -L irq_mapper -L sysid -L sdram -L peripheral_subsystem -L ethernet_subsystem -L enet_pll -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev $TOP_LEVEL_NAME
}

# ----------------------------------------
# Elaborate the top level design with -dbg -O2 option
alias elab_debug {
  echo "\[exec\] elab_debug"
  eval vsim -dbg -O2 +access +r -t ps $ELAB_OPTIONS -L work -L error_adapter_0 -L p2b_adapter -L b2p_adapter -L transacto -L p2b -L b2p -L timing_adt -L jtag_phy_embedded_in_jtag_master -L rsp_mux -L rsp_demux -L cmd_mux -L cmd_demux -L router_001 -L router -L timing_adapter_0 -L router_002 -L router_004 -L i_tse_mac -L avalon_st_adapter -L crosser -L rsp_mux_002 -L rsp_mux_001 -L rsp_demux_002 -L cmd_mux_002 -L cmd_mux_001 -L cmd_demux_002 -L cmd_demux_001 -L cpu_data_master_limiter -L router_005 -L router_003 -L sdram_avl_0_agent_rsp_fifo -L sdram_avl_0_agent -L cpu_data_master_agent -L sdram_avl_0_translator -L cpu_data_master_translator -L mm_interconnect_1 -L dll0 -L oct0 -L c0 -L dmaster -L s0 -L p0 -L pll0 -L mm_interconnect_0 -L sys_clk_timer -L performance_counter -L led_pio -L jtag_uart -L high_res_timer -L button_pio -L mm_interconnect_2 -L tse_mac -L sgdma_tx -L sgdma_rx -L ethernet_bridge -L descriptor_memory -L cpu -L rst_controller -L irq_mapper -L sysid -L sdram -L peripheral_subsystem -L ethernet_subsystem -L enet_pll -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev $TOP_LEVEL_NAME
}

# ----------------------------------------
# Compile all the design files and elaborate the top level design
alias ld "
  dev_com
  com
  elab
"

# ----------------------------------------
# Compile all the design files and elaborate the top level design with -dbg -O2
alias ld_debug "
  dev_com
  com
  elab_debug
"

# ----------------------------------------
# Print out user commmand line aliases
alias h {
  echo "List Of Command Line Aliases"
  echo
  echo "file_copy                     -- Copy ROM/RAM files to simulation directory"
  echo
  echo "dev_com                       -- Compile device library files"
  echo
  echo "com                           -- Compile the design files in correct order"
  echo
  echo "elab                          -- Elaborate top level design"
  echo
  echo "elab_debug                    -- Elaborate the top level design with -dbg -O2 option"
  echo
  echo "ld                            -- Compile all the design files and elaborate the top level design"
  echo
  echo "ld_debug                      -- Compile all the design files and elaborate the top level design with -dbg -O2"
  echo
  echo 
  echo
  echo "List Of Variables"
  echo
  echo "TOP_LEVEL_NAME                -- Top level module name."
  echo "                                 For most designs, this should be overridden"
  echo "                                 to enable the elab/elab_debug aliases."
  echo
  echo "SYSTEM_INSTANCE_NAME          -- Instantiated system module name inside top level module."
  echo
  echo "QSYS_SIMDIR                   -- Qsys base simulation directory."
  echo
  echo "QUARTUS_INSTALL_DIR           -- Quartus installation directory."
  echo
  echo "USER_DEFINED_COMPILE_OPTIONS  -- User-defined compile options, added to com/dev_com aliases."
  echo
  echo "USER_DEFINED_ELAB_OPTIONS     -- User-defined elaboration options, added to elab/elab_debug aliases."
}
file_copy
h
