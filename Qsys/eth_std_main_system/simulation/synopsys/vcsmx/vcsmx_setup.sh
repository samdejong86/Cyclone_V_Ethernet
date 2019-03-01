
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
# vcsmx - auto-generated simulation script

# ----------------------------------------
# This script provides commands to simulate the following IP detected in
# your Quartus project:
#     eth_std_main_system
# 
# Altera recommends that you source this Quartus-generated IP simulation
# script from your own customized top-level script, and avoid editing this
# generated script.
# 
# To write a top-level shell script that compiles Altera simulation libraries 
# and the Quartus-generated IP in your project, along with your design and
# testbench files, copy the text from the TOP-LEVEL TEMPLATE section below
# into a new file, e.g. named "vcsmx_sim.sh", and modify text as directed.
# 
# You can also modify the simulation flow to suit your needs. Set the
# following variables to 1 to disable their corresponding processes:
# - SKIP_FILE_COPY: skip copying ROM/RAM initialization files
# - SKIP_DEV_COM: skip compiling the Quartus EDA simulation library
# - SKIP_COM: skip compiling Quartus-generated IP simulation files
# - SKIP_ELAB and SKIP_SIM: skip elaboration and simulation
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
# # the simulator. In this case, you must also copy the generated library
# # setup "synopsys_sim.setup" into the location from which you launch the
# # simulator, or incorporate into any existing library setup.
# #
# # Run Quartus-generated IP simulation script once to compile Quartus EDA
# # simulation libraries and Quartus-generated IP simulation files, and copy
# # any ROM/RAM initialization files to the simulation directory.
# #
# # - If necessary, specify USER_DEFINED_COMPILE_OPTIONS.
# source <script generation output directory>/synopsys/vcsmx/vcsmx_setup.sh \
# SKIP_ELAB=1 \
# SKIP_SIM=1 \
# USER_DEFINED_COMPILE_OPTIONS=<compilation options for your design> \
# QSYS_SIMDIR=<script generation output directory>
# #
# # Compile all design files and testbench files, including the top level.
# # (These are all the files required for simulation other than the files
# # compiled by the IP script)
# #
# vlogan <compilation options> <design and testbench files>
# #
# # TOP_LEVEL_NAME is used in this script to set the top-level simulation or
# # testbench module/entity name.
# #
# # Run the IP script again to elaborate and simulate the top level:
# # - Specify TOP_LEVEL_NAME and USER_DEFINED_ELAB_OPTIONS.
# # - Override the default USER_DEFINED_SIM_OPTIONS. For example, to run
# #   until $finish(), set to an empty string: USER_DEFINED_SIM_OPTIONS="".
# #
# source <script generation output directory>/synopsys/vcsmx/vcsmx_setup.sh \
# SKIP_FILE_COPY=1 \
# SKIP_DEV_COM=1 \
# SKIP_COM=1 \
# TOP_LEVEL_NAME="'-top <simulation top>'" \
# QSYS_SIMDIR=<script generation output directory> \
# USER_DEFINED_ELAB_OPTIONS=<elaboration options for your design> \
# USER_DEFINED_SIM_OPTIONS=<simulation options for your design>
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
# ACDS 16.1 196 linux 2019.01.18.13:06:10
# ----------------------------------------
# initialize variables
TOP_LEVEL_NAME="eth_std_main_system"
QSYS_SIMDIR="./../../"
QUARTUS_INSTALL_DIR="/home/srdejong/intelFPGA/16.1/quartus/"
SKIP_FILE_COPY=0
SKIP_DEV_COM=0
SKIP_COM=0
SKIP_ELAB=0
SKIP_SIM=0
USER_DEFINED_ELAB_OPTIONS=""
USER_DEFINED_SIM_OPTIONS="+vcs+finish+100"

# ----------------------------------------
# overwrite variables - DO NOT MODIFY!
# This block evaluates each command line argument, typically used for 
# overwriting variables. An example usage:
#   sh <simulator>_setup.sh SKIP_SIM=1
for expression in "$@"; do
  eval $expression
  if [ $? -ne 0 ]; then
    echo "Error: This command line argument, \"$expression\", is/has an invalid expression." >&2
    exit $?
  fi
done

# ----------------------------------------
# initialize simulation properties - DO NOT MODIFY!
ELAB_OPTIONS=""
SIM_OPTIONS=""
if [[ `vcs -platform` != *"amd64"* ]]; then
  :
else
  :
fi

# ----------------------------------------
# create compilation libraries
mkdir -p ./libraries/work/
mkdir -p ./libraries/error_adapter_0/
mkdir -p ./libraries/p2b_adapter/
mkdir -p ./libraries/b2p_adapter/
mkdir -p ./libraries/transacto/
mkdir -p ./libraries/p2b/
mkdir -p ./libraries/b2p/
mkdir -p ./libraries/timing_adt/
mkdir -p ./libraries/jtag_phy_embedded_in_jtag_master/
mkdir -p ./libraries/rsp_mux/
mkdir -p ./libraries/rsp_demux/
mkdir -p ./libraries/cmd_mux/
mkdir -p ./libraries/cmd_demux/
mkdir -p ./libraries/router_001/
mkdir -p ./libraries/router/
mkdir -p ./libraries/timing_adapter_0/
mkdir -p ./libraries/router_002/
mkdir -p ./libraries/router_004/
mkdir -p ./libraries/i_tse_mac/
mkdir -p ./libraries/avalon_st_adapter/
mkdir -p ./libraries/crosser/
mkdir -p ./libraries/rsp_mux_002/
mkdir -p ./libraries/rsp_mux_001/
mkdir -p ./libraries/rsp_demux_002/
mkdir -p ./libraries/cmd_mux_002/
mkdir -p ./libraries/cmd_mux_001/
mkdir -p ./libraries/cmd_demux_002/
mkdir -p ./libraries/cmd_demux_001/
mkdir -p ./libraries/cpu_data_master_limiter/
mkdir -p ./libraries/router_005/
mkdir -p ./libraries/router_003/
mkdir -p ./libraries/sdram_avl_0_agent_rsp_fifo/
mkdir -p ./libraries/sdram_avl_0_agent/
mkdir -p ./libraries/cpu_data_master_agent/
mkdir -p ./libraries/sdram_avl_0_translator/
mkdir -p ./libraries/cpu_data_master_translator/
mkdir -p ./libraries/mm_interconnect_1/
mkdir -p ./libraries/dll0/
mkdir -p ./libraries/oct0/
mkdir -p ./libraries/c0/
mkdir -p ./libraries/dmaster/
mkdir -p ./libraries/s0/
mkdir -p ./libraries/p0/
mkdir -p ./libraries/pll0/
mkdir -p ./libraries/mm_interconnect_0/
mkdir -p ./libraries/sys_clk_timer/
mkdir -p ./libraries/performance_counter/
mkdir -p ./libraries/led_pio/
mkdir -p ./libraries/jtag_uart/
mkdir -p ./libraries/high_res_timer/
mkdir -p ./libraries/button_pio/
mkdir -p ./libraries/mm_interconnect_2/
mkdir -p ./libraries/tse_mac/
mkdir -p ./libraries/sgdma_tx/
mkdir -p ./libraries/sgdma_rx/
mkdir -p ./libraries/ethernet_bridge/
mkdir -p ./libraries/descriptor_memory/
mkdir -p ./libraries/cpu/
mkdir -p ./libraries/rst_controller/
mkdir -p ./libraries/irq_mapper/
mkdir -p ./libraries/sysid/
mkdir -p ./libraries/sdram/
mkdir -p ./libraries/peripheral_subsystem/
mkdir -p ./libraries/ethernet_subsystem/
mkdir -p ./libraries/enet_pll/
mkdir -p ./libraries/altera_ver/
mkdir -p ./libraries/lpm_ver/
mkdir -p ./libraries/sgate_ver/
mkdir -p ./libraries/altera_mf_ver/
mkdir -p ./libraries/altera_lnsim_ver/
mkdir -p ./libraries/cyclonev_ver/
mkdir -p ./libraries/cyclonev_hssi_ver/
mkdir -p ./libraries/cyclonev_pcie_hip_ver/
mkdir -p ./libraries/altera/
mkdir -p ./libraries/lpm/
mkdir -p ./libraries/sgate/
mkdir -p ./libraries/altera_mf/
mkdir -p ./libraries/altera_lnsim/
mkdir -p ./libraries/cyclonev/

# ----------------------------------------
# copy RAM/ROM files to simulation directory
if [ $SKIP_FILE_COPY -eq 0 ]; then
  cp -f $QSYS_SIMDIR/submodules/eth_std_main_system_sdram_s0_AC_ROM.hex ./
  cp -f $QSYS_SIMDIR/submodules/eth_std_main_system_sdram_s0_inst_ROM.hex ./
  cp -f $QSYS_SIMDIR/submodules/eth_std_main_system_sdram_s0_sequencer_mem.hex ./
  cp -f $QSYS_SIMDIR/submodules/eth_std_main_system_ethernet_subsystem_descriptor_memory.hex ./
  cp -f $QSYS_SIMDIR/submodules/eth_std_main_system_cpu_cpu_ic_tag_ram.dat ./
  cp -f $QSYS_SIMDIR/submodules/eth_std_main_system_cpu_cpu_ociram_default_contents.mif ./
  cp -f $QSYS_SIMDIR/submodules/eth_std_main_system_cpu_cpu_dc_tag_ram.dat ./
  cp -f $QSYS_SIMDIR/submodules/eth_std_main_system_cpu_cpu_bht_ram.hex ./
  cp -f $QSYS_SIMDIR/submodules/eth_std_main_system_cpu_cpu_ic_tag_ram.mif ./
  cp -f $QSYS_SIMDIR/submodules/eth_std_main_system_cpu_cpu_dc_tag_ram.hex ./
  cp -f $QSYS_SIMDIR/submodules/eth_std_main_system_cpu_cpu_rf_ram_a.dat ./
  cp -f $QSYS_SIMDIR/submodules/eth_std_main_system_cpu_cpu_bht_ram.mif ./
  cp -f $QSYS_SIMDIR/submodules/eth_std_main_system_cpu_cpu_rf_ram_b.hex ./
  cp -f $QSYS_SIMDIR/submodules/eth_std_main_system_cpu_cpu_ic_tag_ram.hex ./
  cp -f $QSYS_SIMDIR/submodules/eth_std_main_system_cpu_cpu_rf_ram_a.mif ./
  cp -f $QSYS_SIMDIR/submodules/eth_std_main_system_cpu_cpu_ociram_default_contents.dat ./
  cp -f $QSYS_SIMDIR/submodules/eth_std_main_system_cpu_cpu_rf_ram_b.mif ./
  cp -f $QSYS_SIMDIR/submodules/eth_std_main_system_cpu_cpu_rf_ram_a.hex ./
  cp -f $QSYS_SIMDIR/submodules/eth_std_main_system_cpu_cpu_ociram_default_contents.hex ./
  cp -f $QSYS_SIMDIR/submodules/eth_std_main_system_cpu_cpu_rf_ram_b.dat ./
  cp -f $QSYS_SIMDIR/submodules/eth_std_main_system_cpu_cpu_dc_tag_ram.mif ./
  cp -f $QSYS_SIMDIR/submodules/eth_std_main_system_cpu_cpu_bht_ram.dat ./
fi

# ----------------------------------------
# compile device library files
if [ $SKIP_DEV_COM -eq 0 ]; then
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v"                       -work altera_ver           
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"                                -work lpm_ver              
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"                                   -work sgate_ver            
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"                               -work altera_mf_ver        
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"                           -work altera_lnsim_ver     
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/cyclonev_atoms_ncrypt.v"          -work cyclonev_ver         
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/cyclonev_hmi_atoms_ncrypt.v"      -work cyclonev_ver         
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_atoms.v"                          -work cyclonev_ver         
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/cyclonev_hssi_atoms_ncrypt.v"     -work cyclonev_hssi_ver    
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_hssi_atoms.v"                     -work cyclonev_hssi_ver    
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/cyclonev_pcie_hip_atoms_ncrypt.v" -work cyclonev_pcie_hip_ver
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_pcie_hip_atoms.v"                 -work cyclonev_pcie_hip_ver
  vhdlan $USER_DEFINED_COMPILE_OPTIONS                "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_syn_attributes.vhd"                 -work altera               
  vhdlan $USER_DEFINED_COMPILE_OPTIONS                "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_standard_functions.vhd"             -work altera               
  vhdlan $USER_DEFINED_COMPILE_OPTIONS                "$QUARTUS_INSTALL_DIR/eda/sim_lib/alt_dspbuilder_package.vhd"                -work altera               
  vhdlan $USER_DEFINED_COMPILE_OPTIONS                "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_europa_support_lib.vhd"             -work altera               
  vhdlan $USER_DEFINED_COMPILE_OPTIONS                "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives_components.vhd"          -work altera               
  vhdlan $USER_DEFINED_COMPILE_OPTIONS                "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.vhd"                     -work altera               
  vhdlan $USER_DEFINED_COMPILE_OPTIONS                "$QUARTUS_INSTALL_DIR/eda/sim_lib/220pack.vhd"                               -work lpm                  
  vhdlan $USER_DEFINED_COMPILE_OPTIONS                "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.vhd"                              -work lpm                  
  vhdlan $USER_DEFINED_COMPILE_OPTIONS                "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate_pack.vhd"                            -work sgate                
  vhdlan $USER_DEFINED_COMPILE_OPTIONS                "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.vhd"                                 -work sgate                
  vhdlan $USER_DEFINED_COMPILE_OPTIONS                "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf_components.vhd"                  -work altera_mf            
  vhdlan $USER_DEFINED_COMPILE_OPTIONS                "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.vhd"                             -work altera_mf            
  vhdlan $USER_DEFINED_COMPILE_OPTIONS                "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim_components.vhd"               -work altera_lnsim         
  vhdlan $USER_DEFINED_COMPILE_OPTIONS                "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_atoms.vhd"                        -work cyclonev             
  vhdlan $USER_DEFINED_COMPILE_OPTIONS                "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_components.vhd"                   -work cyclonev             
fi

# ----------------------------------------
# compile design files in correct order
if [ $SKIP_COM -eq 0 ]; then
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_mm_interconnect_0_avalon_st_adapter_error_adapter_0.sv"          -work error_adapter_0                 
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_dmaster_p2b_adapter.sv"                                    -work p2b_adapter                     
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_dmaster_b2p_adapter.sv"                                    -work b2p_adapter                     
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/altera_avalon_packets_to_master.v"                                                   -work transacto                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/altera_avalon_st_packets_to_bytes.v"                                                 -work p2b                             
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/altera_avalon_st_bytes_to_packets.v"                                                 -work b2p                             
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_dmaster_timing_adt.sv"                                     -work timing_adt                      
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/altera_avalon_st_jtag_interface.v"                                                   -work jtag_phy_embedded_in_jtag_master
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/altera_jtag_dc_streaming.v"                                                          -work jtag_phy_embedded_in_jtag_master
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/altera_jtag_sld_node.v"                                                              -work jtag_phy_embedded_in_jtag_master
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/altera_jtag_streaming.v"                                                             -work jtag_phy_embedded_in_jtag_master
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/altera_avalon_st_clock_crosser.v"                                                    -work jtag_phy_embedded_in_jtag_master
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/altera_std_synchronizer_nocut.v"                                                     -work jtag_phy_embedded_in_jtag_master
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_base.v"                                                    -work jtag_phy_embedded_in_jtag_master
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/altera_avalon_st_idle_remover.v"                                                     -work jtag_phy_embedded_in_jtag_master
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/altera_avalon_st_idle_inserter.v"                                                    -work jtag_phy_embedded_in_jtag_master
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_stage.sv"                                                  -work jtag_phy_embedded_in_jtag_master
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_peripheral_subsystem_mm_interconnect_0_rsp_mux.sv"               -work rsp_mux                         
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                                         -work rsp_mux                         
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_peripheral_subsystem_mm_interconnect_0_rsp_demux.sv"             -work rsp_demux                       
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_peripheral_subsystem_mm_interconnect_0_cmd_mux.sv"               -work cmd_mux                         
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                                         -work cmd_mux                         
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_peripheral_subsystem_mm_interconnect_0_cmd_demux.sv"             -work cmd_demux                       
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_peripheral_subsystem_mm_interconnect_0_router_001.sv"            -work router_001                      
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_peripheral_subsystem_mm_interconnect_0_router.sv"                -work router                          
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_ethernet_subsystem_avalon_st_adapter_timing_adapter_0.sv"        -work timing_adapter_0                
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_ethernet_subsystem_avalon_st_adapter_timing_adapter_0_fifo.sv"   -work timing_adapter_0                
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_ethernet_subsystem_mm_interconnect_2_rsp_mux.sv"                 -work rsp_mux                         
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                                         -work rsp_mux                         
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_ethernet_subsystem_mm_interconnect_2_rsp_demux.sv"               -work rsp_demux                       
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_ethernet_subsystem_mm_interconnect_2_cmd_mux.sv"                 -work cmd_mux                         
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                                         -work cmd_mux                         
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_ethernet_subsystem_mm_interconnect_2_cmd_demux.sv"               -work cmd_demux                       
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_ethernet_subsystem_mm_interconnect_2_router_002.sv"              -work router_002                      
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_ethernet_subsystem_mm_interconnect_2_router.sv"                  -work router                          
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_ethernet_subsystem_mm_interconnect_1_rsp_mux.sv"                 -work rsp_mux                         
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                                         -work rsp_mux                         
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_ethernet_subsystem_mm_interconnect_1_rsp_demux.sv"               -work rsp_demux                       
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_ethernet_subsystem_mm_interconnect_1_cmd_mux.sv"                 -work cmd_mux                         
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                                         -work cmd_mux                         
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_ethernet_subsystem_mm_interconnect_1_cmd_demux.sv"               -work cmd_demux                       
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_ethernet_subsystem_mm_interconnect_1_router_001.sv"              -work router_001                      
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_ethernet_subsystem_mm_interconnect_1_router.sv"                  -work router                          
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_ethernet_subsystem_mm_interconnect_0_rsp_mux.sv"                 -work rsp_mux                         
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                                         -work rsp_mux                         
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_ethernet_subsystem_mm_interconnect_0_rsp_demux.sv"               -work rsp_demux                       
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_ethernet_subsystem_mm_interconnect_0_cmd_mux.sv"                 -work cmd_mux                         
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                                         -work cmd_mux                         
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_ethernet_subsystem_mm_interconnect_0_cmd_demux.sv"               -work cmd_demux                       
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_ethernet_subsystem_mm_interconnect_0_router_004.sv"              -work router_004                      
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_ethernet_subsystem_mm_interconnect_0_router.sv"                  -work router                          
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_eth_tse_mac.v"                                                       -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_clk_cntl.v"                                                      -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_crc328checker.v"                                                 -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_crc328generator.v"                                               -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_crc32ctl8.v"                                                     -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_crc32galois8.v"                                                  -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_gmii_io.v"                                                       -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_lb_read_cntl.v"                                                  -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_lb_wrt_cntl.v"                                                   -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_hashing.v"                                                       -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_host_control.v"                                                  -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_host_control_small.v"                                            -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_mac_control.v"                                                   -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_register_map.v"                                                  -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_register_map_small.v"                                            -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_rx_counter_cntl.v"                                               -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_shared_mac_control.v"                                            -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_shared_register_map.v"                                           -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_tx_counter_cntl.v"                                               -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_lfsr_10.v"                                                       -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_loopback_ff.v"                                                   -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_altshifttaps.v"                                                  -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_fifoless_mac_rx.v"                                               -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_mac_rx.v"                                                        -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_fifoless_mac_tx.v"                                               -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_mac_tx.v"                                                        -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_magic_detection.v"                                               -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_mdio.v"                                                          -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_mdio_clk_gen.v"                                                  -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_mdio_cntl.v"                                                     -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_top_mdio.v"                                                      -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_mii_rx_if.v"                                                     -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_mii_tx_if.v"                                                     -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_pipeline_base.v"                                                 -work i_tse_mac                       
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/synopsys/altera_tse_pipeline_stage.sv"                                               -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_dpram_16x32.v"                                                   -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_dpram_8x32.v"                                                    -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_dpram_ecc_16x32.v"                                               -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_fifoless_retransmit_cntl.v"                                      -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_retransmit_cntl.v"                                               -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_rgmii_in1.v"                                                     -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_rgmii_in4.v"                                                     -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_nf_rgmii_module.v"                                               -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_rgmii_module.v"                                                  -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_rgmii_out1.v"                                                    -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_rgmii_out4.v"                                                    -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_rx_ff.v"                                                         -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_rx_min_ff.v"                                                     -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_rx_ff_cntrl.v"                                                   -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_rx_ff_cntrl_32.v"                                                -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_rx_ff_cntrl_32_shift16.v"                                        -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_rx_ff_length.v"                                                  -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_rx_stat_extract.v"                                               -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_timing_adapter32.v"                                              -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_timing_adapter8.v"                                               -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_timing_adapter_fifo32.v"                                         -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_timing_adapter_fifo8.v"                                          -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_top_1geth.v"                                                     -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_top_fifoless_1geth.v"                                            -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_top_w_fifo.v"                                                    -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_top_w_fifo_10_100_1000.v"                                        -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_top_wo_fifo.v"                                                   -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_top_wo_fifo_10_100_1000.v"                                       -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_top_gen_host.v"                                                  -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_tx_ff.v"                                                         -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_tx_min_ff.v"                                                     -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_tx_ff_cntrl.v"                                                   -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_tx_ff_cntrl_32.v"                                                -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_tx_ff_cntrl_32_shift16.v"                                        -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_tx_ff_length.v"                                                  -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_tx_ff_read_cntl.v"                                               -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_tx_stat_extract.v"                                               -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_eth_tse_std_synchronizer.v"                                          -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_eth_tse_std_synchronizer_bundle.v"                                   -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_eth_tse_ptp_std_synchronizer.v"                                      -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_false_path_marker.v"                                             -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_reset_synchronizer.v"                                            -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_clock_crosser.v"                                                 -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_a_fifo_13.v"                                                     -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_a_fifo_24.v"                                                     -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_a_fifo_34.v"                                                     -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_a_fifo_opt_1246.v"                                               -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_a_fifo_opt_14_44.v"                                              -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_a_fifo_opt_36_10.v"                                              -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_gray_cnt.v"                                                      -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_sdpm_altsyncram.v"                                               -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_altsyncram_dpm_fifo.v"                                           -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_bin_cnt.v"                                                       -work i_tse_mac                       
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/synopsys/altera_tse_ph_calculator.sv"                                                -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_sdpm_gen.v"                                                      -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_ecc_dec_x10.v"                                                   -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_ecc_enc_x10.v"                                                   -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_ecc_enc_x10_wrapper.v"                                           -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_ecc_dec_x14.v"                                                   -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_ecc_enc_x14.v"                                                   -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_ecc_enc_x14_wrapper.v"                                           -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_ecc_dec_x2.v"                                                    -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_ecc_enc_x2.v"                                                    -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_ecc_enc_x2_wrapper.v"                                            -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_ecc_dec_x23.v"                                                   -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_ecc_enc_x23.v"                                                   -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_ecc_enc_x23_wrapper.v"                                           -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_ecc_dec_x36.v"                                                   -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_ecc_enc_x36.v"                                                   -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_ecc_enc_x36_wrapper.v"                                           -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_ecc_dec_x40.v"                                                   -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_ecc_enc_x40.v"                                                   -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_ecc_enc_x40_wrapper.v"                                           -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_ecc_dec_x30.v"                                                   -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_ecc_enc_x30.v"                                                   -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_ecc_enc_x30_wrapper.v"                                           -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/synopsys/altera_tse_ecc_status_crosser.v"                                            -work i_tse_mac                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/altera_std_synchronizer_nocut.v"                                                     -work i_tse_mac                       
  vhdlan -xlrm $USER_DEFINED_COMPILE_OPTIONS          "$QSYS_SIMDIR/submodules/eth_std_main_system_mm_interconnect_0_avalon_st_adapter.vhd"                         -work avalon_st_adapter               
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_st_handshake_clock_crosser.v"                                          -work crosser                         
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_st_clock_crosser.v"                                                    -work crosser                         
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_base.v"                                                    -work crosser                         
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_std_synchronizer_nocut.v"                                                     -work crosser                         
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_mm_interconnect_0_rsp_mux_002.sv"                                -work rsp_mux_002                     
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                                         -work rsp_mux_002                     
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_mm_interconnect_0_rsp_mux_001.sv"                                -work rsp_mux_001                     
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                                         -work rsp_mux_001                     
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_mm_interconnect_0_rsp_mux.sv"                                    -work rsp_mux                         
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                                         -work rsp_mux                         
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_mm_interconnect_0_rsp_demux_002.sv"                              -work rsp_demux_002                   
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_mm_interconnect_0_rsp_demux.sv"                                  -work rsp_demux                       
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_mm_interconnect_0_cmd_mux_002.sv"                                -work cmd_mux_002                     
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                                         -work cmd_mux_002                     
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_mm_interconnect_0_cmd_mux_001.sv"                                -work cmd_mux_001                     
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                                         -work cmd_mux_001                     
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_mm_interconnect_0_cmd_mux.sv"                                    -work cmd_mux                         
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                                         -work cmd_mux                         
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_mm_interconnect_0_cmd_demux_002.sv"                              -work cmd_demux_002                   
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_mm_interconnect_0_cmd_demux_001.sv"                              -work cmd_demux_001                   
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_mm_interconnect_0_cmd_demux.sv"                                  -work cmd_demux                       
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_traffic_limiter.sv"                                                    -work cpu_data_master_limiter         
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_reorder_memory.sv"                                                     -work cpu_data_master_limiter         
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_sc_fifo.v"                                                             -work cpu_data_master_limiter         
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_base.v"                                                    -work cpu_data_master_limiter         
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_mm_interconnect_0_router_005.sv"                                 -work router_005                      
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_mm_interconnect_0_router_004.sv"                                 -work router_004                      
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_mm_interconnect_0_router_003.sv"                                 -work router_003                      
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_mm_interconnect_0_router_002.sv"                                 -work router_002                      
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_mm_interconnect_0_router_001.sv"                                 -work router_001                      
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_mm_interconnect_0_router.sv"                                     -work router                          
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/altera_avalon_sc_fifo.v"                                                             -work sdram_avl_0_agent_rsp_fifo      
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_slave_agent.sv"                                                        -work sdram_avl_0_agent               
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_burst_uncompressor.sv"                                                 -work sdram_avl_0_agent               
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_master_agent.sv"                                                       -work cpu_data_master_agent           
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_slave_translator.sv"                                                   -work sdram_avl_0_translator          
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_master_translator.sv"                                                  -work cpu_data_master_translator      
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_mm_interconnect_1.v"                                       -work mm_interconnect_1               
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_mem_if_dll_cyclonev.sv"                                                       -work dll0                            
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_mem_if_oct_cyclonev.sv"                                                       -work oct0                            
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_mem_if_hard_memory_controller_top_cyclonev.sv"                                -work c0                              
  vhdlan -xlrm $USER_DEFINED_COMPILE_OPTIONS          "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_dmaster.vhd"                                               -work dmaster                         
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_s0.v"                                                      -work s0                              
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_s0_mm_interconnect_0_router_007.sv"                        -work s0                              
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_s0_mm_interconnect_0_cmd_demux_002.sv"                     -work s0                              
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/sequencer_scc_siii_wrapper.sv"                                                       -work s0                              
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/altera_avalon_mm_bridge.v"                                                           -work s0                              
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_s0_mm_interconnect_0.v"                                    -work s0                              
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_master_agent.sv"                                                       -work s0                              
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_s0_irq_mapper.sv"                                          -work s0                              
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_s0_mm_interconnect_0_cmd_demux_001.sv"                     -work s0                              
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/sequencer_reg_file.sv"                                                               -work s0                              
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_s0_mm_interconnect_0_router_002.sv"                        -work s0                              
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/sequencer_scc_mgr.sv"                                                                -work s0                              
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_mem_if_sequencer_rst.sv"                                                      -work s0                              
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_s0_mm_interconnect_0_router_010.sv"                        -work s0                              
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_reorder_memory.sv"                                                     -work s0                              
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_s0_mm_interconnect_0_router_009.sv"                        -work s0                              
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_s0_mm_interconnect_0_router.sv"                            -work s0                              
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_s0_mm_interconnect_0_avalon_st_adapter_error_adapter_0.sv" -work s0                              
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_s0_mm_interconnect_0_router_003.sv"                        -work s0                              
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_s0_mm_interconnect_0_cmd_mux_003.sv"                       -work s0                              
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/sequencer_trk_mgr.sv"                                                                -work s0                              
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_s0_mm_interconnect_0_cmd_demux_003.sv"                     -work s0                              
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/altera_mem_if_sequencer_cpu_cv_sim_cpu_inst_test_bench.v"                            -work s0                              
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/altera_mem_if_sequencer_cpu_cv_sim_cpu_inst.v"                                       -work s0                              
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_s0_mm_interconnect_0_rsp_mux_001.sv"                       -work s0                              
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_mem_if_sequencer_mem_no_ifdef_params.sv"                                      -work s0                              
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_burst_uncompressor.sv"                                                 -work s0                              
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/sequencer_scc_acv_wrapper.sv"                                                        -work s0                              
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_mem_if_simple_avalon_mm_bridge.sv"                                            -work s0                              
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/sequencer_scc_acv_phase_decode.v"                                                    -work s0                              
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_s0_mm_interconnect_0_avalon_st_adapter.v"                  -work s0                              
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/sequencer_scc_sv_phase_decode.v"                                                     -work s0                              
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_s0_mm_interconnect_0_rsp_demux_002.sv"                     -work s0                              
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                                         -work s0                              
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_s0_mm_interconnect_0_cmd_demux.sv"                         -work s0                              
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/sequencer_scc_reg_file.v"                                                            -work s0                              
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_s0_mm_interconnect_0_cmd_mux_002.sv"                       -work s0                              
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_s0_mm_interconnect_0_router_001.sv"                        -work s0                              
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_s0_mm_interconnect_0_rsp_mux.sv"                           -work s0                              
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/sequencer_scc_sv_wrapper.sv"                                                         -work s0                              
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_s0_mm_interconnect_0_router_005.sv"                        -work s0                              
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_s0_mm_interconnect_0_router_008.sv"                        -work s0                              
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_slave_agent.sv"                                                        -work s0                              
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/sequencer_scc_siii_phase_decode.v"                                                   -work s0                              
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_s0_mm_interconnect_0_cmd_mux.sv"                           -work s0                              
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_s0_mm_interconnect_0_rsp_mux_002.sv"                       -work s0                              
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_traffic_limiter.sv"                                                    -work s0                              
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_s0_mm_interconnect_0_router_004.sv"                        -work s0                              
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_p0_clock_pair_generator.v"                                 -work p0                              
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_p0_acv_hard_addr_cmd_pads.v"                               -work p0                              
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_p0_acv_hard_memphy.v"                                      -work p0                              
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_p0_acv_ldc.v"                                              -work p0                              
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_p0_acv_hard_io_pads.v"                                     -work p0                              
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_p0_generic_ddio.v"                                         -work p0                              
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_p0_reset.v"                                                -work p0                              
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_p0_reset_sync.v"                                           -work p0                              
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_p0_phy_csr.sv"                                             -work p0                              
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_p0_iss_probe.v"                                            -work p0                              
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_p0.sv"                                                     -work p0                              
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_p0_altdqdqs.v"                                             -work p0                              
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altdq_dqs2_acv_connect_to_hard_phy_cyclonev_lpddr2.sv"                               -work p0                              
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram_pll0.sv"                                                   -work pll0                            
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/eth_std_main_system_peripheral_subsystem_mm_interconnect_0.v"                        -work mm_interconnect_0               
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/eth_std_main_system_peripheral_subsystem_sys_clk_timer.v"                            -work sys_clk_timer                   
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/eth_std_main_system_peripheral_subsystem_performance_counter.v"                      -work performance_counter             
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/eth_std_main_system_peripheral_subsystem_led_pio.v"                                  -work led_pio                         
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/eth_std_main_system_peripheral_subsystem_jtag_uart.v"                                -work jtag_uart                       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/eth_std_main_system_peripheral_subsystem_high_res_timer.v"                           -work high_res_timer                  
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/eth_std_main_system_peripheral_subsystem_button_pio.v"                               -work button_pio                      
  vhdlan -xlrm $USER_DEFINED_COMPILE_OPTIONS          "$QSYS_SIMDIR/submodules/eth_std_main_system_ethernet_subsystem_avalon_st_adapter.vhd"                        -work avalon_st_adapter               
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/eth_std_main_system_ethernet_subsystem_mm_interconnect_2.v"                          -work mm_interconnect_2               
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/eth_std_main_system_ethernet_subsystem_mm_interconnect_1.v"                          -work mm_interconnect_1               
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/eth_std_main_system_ethernet_subsystem_mm_interconnect_0.v"                          -work mm_interconnect_0               
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/eth_std_main_system_ethernet_subsystem_tse_mac.v"                                    -work tse_mac                         
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/eth_std_main_system_ethernet_subsystem_sgdma_tx.v"                                   -work sgdma_tx                        
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/eth_std_main_system_ethernet_subsystem_sgdma_rx.v"                                   -work sgdma_rx                        
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/altera_avalon_mm_bridge.v"                                                           -work ethernet_bridge                 
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/eth_std_main_system_ethernet_subsystem_descriptor_memory.v"                          -work descriptor_memory               
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/eth_std_main_system_cpu_cpu_debug_slave_sysclk.v"                                    -work cpu                             
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/eth_std_main_system_cpu_cpu_mult_cell.v"                                             -work cpu                             
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/eth_std_main_system_cpu_cpu_debug_slave_wrapper.v"                                   -work cpu                             
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/eth_std_main_system_cpu_cpu.vo"                                                      -work cpu                             
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/eth_std_main_system_cpu_cpu_debug_slave_tck.v"                                       -work cpu                             
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/eth_std_main_system_cpu_cpu_test_bench.v"                                            -work cpu                             
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/altera_reset_controller.v"                                                           -work rst_controller                  
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/altera_reset_synchronizer.v"                                                         -work rst_controller                  
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/eth_std_main_system_irq_mapper.sv"                                                   -work irq_mapper                      
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/eth_std_main_system_mm_interconnect_0.v"                                             -work mm_interconnect_0               
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/eth_std_main_system_sysid.v"                                                         -work sysid                           
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/eth_std_main_system_sdram.v"                                                         -work sdram                           
  vhdlan -xlrm $USER_DEFINED_COMPILE_OPTIONS          "$QSYS_SIMDIR/submodules/eth_std_main_system_peripheral_subsystem.vhd"                                        -work peripheral_subsystem            
  vhdlan -xlrm $USER_DEFINED_COMPILE_OPTIONS          "$QSYS_SIMDIR/submodules/eth_std_main_system_ethernet_subsystem.vhd"                                          -work ethernet_subsystem              
  vhdlan -xlrm $USER_DEFINED_COMPILE_OPTIONS          "$QSYS_SIMDIR/submodules/eth_std_main_system_ethernet_subsystem_ethernet_bridge.vhd"                          -work ethernet_subsystem              
  vhdlan -xlrm $USER_DEFINED_COMPILE_OPTIONS          "$QSYS_SIMDIR/submodules/eth_std_main_system_ethernet_subsystem_sgdma_bridge.vhd"                             -work ethernet_subsystem              
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/eth_std_main_system_enet_pll.vo"                                                     -work enet_pll                        
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/submodules/eth_std_main_system_cpu.v"                                                           -work cpu                             
  vhdlan -xlrm $USER_DEFINED_COMPILE_OPTIONS          "$QSYS_SIMDIR/eth_std_main_system.vhd"                                                                                                              
  vhdlan -xlrm $USER_DEFINED_COMPILE_OPTIONS          "$QSYS_SIMDIR/eth_std_main_system_rst_controller.vhd"                                                                                               
  vhdlan -xlrm $USER_DEFINED_COMPILE_OPTIONS          "$QSYS_SIMDIR/eth_std_main_system_rst_controller_001.vhd"                                                                                           
  vhdlan -xlrm $USER_DEFINED_COMPILE_OPTIONS          "$QSYS_SIMDIR/eth_std_main_system_rst_controller_006.vhd"                                                                                           
fi

# ----------------------------------------
# elaborate top level design
if [ $SKIP_ELAB -eq 0 ]; then
  vcs -lca -t ps $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS $TOP_LEVEL_NAME
fi

# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  ./simv $SIM_OPTIONS $USER_DEFINED_SIM_OPTIONS
fi
