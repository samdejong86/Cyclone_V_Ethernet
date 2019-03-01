
module Nios_CPU_qsys (
	clk_clk,
	merged_resets_in_reset_reset_n,
	tse_mac_mac_gmii_connection_gmii_rx_d,
	tse_mac_mac_gmii_connection_gmii_rx_dv,
	tse_mac_mac_gmii_connection_gmii_rx_err,
	tse_mac_mac_gmii_connection_gmii_tx_d,
	tse_mac_mac_gmii_connection_gmii_tx_en,
	tse_mac_mac_gmii_connection_gmii_tx_err,
	tse_mac_mac_mdio_connection_mdc,
	tse_mac_mac_mdio_connection_mdio_in,
	tse_mac_mac_mdio_connection_mdio_out,
	tse_mac_mac_mdio_connection_mdio_oen,
	tse_mac_mac_mii_connection_mii_rx_d,
	tse_mac_mac_mii_connection_mii_rx_dv,
	tse_mac_mac_mii_connection_mii_rx_err,
	tse_mac_mac_mii_connection_mii_tx_d,
	tse_mac_mac_mii_connection_mii_tx_en,
	tse_mac_mac_mii_connection_mii_tx_err,
	tse_mac_mac_mii_connection_mii_crs,
	tse_mac_mac_mii_connection_mii_col,
	tse_mac_mac_misc_connection_xon_gen,
	tse_mac_mac_misc_connection_xoff_gen,
	tse_mac_mac_misc_connection_ff_tx_crc_fwd,
	tse_mac_mac_misc_connection_ff_tx_septy,
	tse_mac_mac_misc_connection_tx_ff_uflow,
	tse_mac_mac_misc_connection_ff_tx_a_full,
	tse_mac_mac_misc_connection_ff_tx_a_empty,
	tse_mac_mac_misc_connection_rx_err_stat,
	tse_mac_mac_misc_connection_rx_frm_type,
	tse_mac_mac_misc_connection_ff_rx_dsav,
	tse_mac_mac_misc_connection_ff_rx_a_full,
	tse_mac_mac_misc_connection_ff_rx_a_empty,
	tse_mac_mac_status_connection_set_10,
	tse_mac_mac_status_connection_set_1000,
	tse_mac_mac_status_connection_eth_mode,
	tse_mac_mac_status_connection_ena_10,
	tse_mac_pcs_mac_rx_clock_connection_clk,
	tse_mac_pcs_mac_tx_clock_connection_clk,
	oct_rzqin,
	memory_mem_ca,
	memory_mem_ck,
	memory_mem_ck_n,
	memory_mem_cke,
	memory_mem_cs_n,
	memory_mem_dm,
	memory_mem_dq,
	memory_mem_dqs,
	memory_mem_dqs_n,
	mem_if_lpddr2_emif_0_pll_sharing_pll_mem_clk,
	mem_if_lpddr2_emif_0_pll_sharing_pll_write_clk,
	mem_if_lpddr2_emif_0_pll_sharing_pll_locked,
	mem_if_lpddr2_emif_0_pll_sharing_pll_write_clk_pre_phy_clk,
	mem_if_lpddr2_emif_0_pll_sharing_pll_addr_cmd_clk,
	mem_if_lpddr2_emif_0_pll_sharing_pll_avl_clk,
	mem_if_lpddr2_emif_0_pll_sharing_pll_config_clk,
	mem_if_lpddr2_emif_0_pll_sharing_pll_mem_phy_clk,
	mem_if_lpddr2_emif_0_pll_sharing_afi_phy_clk,
	mem_if_lpddr2_emif_0_pll_sharing_pll_avl_phy_clk,
	mem_if_lpddr2_emif_0_status_local_init_done,
	mem_if_lpddr2_emif_0_status_local_cal_success,
	mem_if_lpddr2_emif_0_status_local_cal_fail);	

	input		clk_clk;
	input		merged_resets_in_reset_reset_n;
	input	[7:0]	tse_mac_mac_gmii_connection_gmii_rx_d;
	input		tse_mac_mac_gmii_connection_gmii_rx_dv;
	input		tse_mac_mac_gmii_connection_gmii_rx_err;
	output	[7:0]	tse_mac_mac_gmii_connection_gmii_tx_d;
	output		tse_mac_mac_gmii_connection_gmii_tx_en;
	output		tse_mac_mac_gmii_connection_gmii_tx_err;
	output		tse_mac_mac_mdio_connection_mdc;
	input		tse_mac_mac_mdio_connection_mdio_in;
	output		tse_mac_mac_mdio_connection_mdio_out;
	output		tse_mac_mac_mdio_connection_mdio_oen;
	input	[3:0]	tse_mac_mac_mii_connection_mii_rx_d;
	input		tse_mac_mac_mii_connection_mii_rx_dv;
	input		tse_mac_mac_mii_connection_mii_rx_err;
	output	[3:0]	tse_mac_mac_mii_connection_mii_tx_d;
	output		tse_mac_mac_mii_connection_mii_tx_en;
	output		tse_mac_mac_mii_connection_mii_tx_err;
	input		tse_mac_mac_mii_connection_mii_crs;
	input		tse_mac_mac_mii_connection_mii_col;
	input		tse_mac_mac_misc_connection_xon_gen;
	input		tse_mac_mac_misc_connection_xoff_gen;
	input		tse_mac_mac_misc_connection_ff_tx_crc_fwd;
	output		tse_mac_mac_misc_connection_ff_tx_septy;
	output		tse_mac_mac_misc_connection_tx_ff_uflow;
	output		tse_mac_mac_misc_connection_ff_tx_a_full;
	output		tse_mac_mac_misc_connection_ff_tx_a_empty;
	output	[17:0]	tse_mac_mac_misc_connection_rx_err_stat;
	output	[3:0]	tse_mac_mac_misc_connection_rx_frm_type;
	output		tse_mac_mac_misc_connection_ff_rx_dsav;
	output		tse_mac_mac_misc_connection_ff_rx_a_full;
	output		tse_mac_mac_misc_connection_ff_rx_a_empty;
	input		tse_mac_mac_status_connection_set_10;
	input		tse_mac_mac_status_connection_set_1000;
	output		tse_mac_mac_status_connection_eth_mode;
	output		tse_mac_mac_status_connection_ena_10;
	input		tse_mac_pcs_mac_rx_clock_connection_clk;
	input		tse_mac_pcs_mac_tx_clock_connection_clk;
	input		oct_rzqin;
	output	[9:0]	memory_mem_ca;
	output	[0:0]	memory_mem_ck;
	output	[0:0]	memory_mem_ck_n;
	output	[0:0]	memory_mem_cke;
	output	[0:0]	memory_mem_cs_n;
	output	[3:0]	memory_mem_dm;
	inout	[31:0]	memory_mem_dq;
	inout	[3:0]	memory_mem_dqs;
	inout	[3:0]	memory_mem_dqs_n;
	output		mem_if_lpddr2_emif_0_pll_sharing_pll_mem_clk;
	output		mem_if_lpddr2_emif_0_pll_sharing_pll_write_clk;
	output		mem_if_lpddr2_emif_0_pll_sharing_pll_locked;
	output		mem_if_lpddr2_emif_0_pll_sharing_pll_write_clk_pre_phy_clk;
	output		mem_if_lpddr2_emif_0_pll_sharing_pll_addr_cmd_clk;
	output		mem_if_lpddr2_emif_0_pll_sharing_pll_avl_clk;
	output		mem_if_lpddr2_emif_0_pll_sharing_pll_config_clk;
	output		mem_if_lpddr2_emif_0_pll_sharing_pll_mem_phy_clk;
	output		mem_if_lpddr2_emif_0_pll_sharing_afi_phy_clk;
	output		mem_if_lpddr2_emif_0_pll_sharing_pll_avl_phy_clk;
	output		mem_if_lpddr2_emif_0_status_local_init_done;
	output		mem_if_lpddr2_emif_0_status_local_cal_success;
	output		mem_if_lpddr2_emif_0_status_local_cal_fail;
endmodule
