
module eth_std_main_system (
	clk_50_clk_in_clk,
	clk_50_clk_in_reset_reset_n,
	ddr2_top_memory_mem_ca,
	ddr2_top_memory_mem_ck,
	ddr2_top_memory_mem_ck_n,
	ddr2_top_memory_mem_cke,
	ddr2_top_memory_mem_cs_n,
	ddr2_top_memory_mem_dm,
	ddr2_top_memory_mem_dq,
	ddr2_top_memory_mem_dqs,
	ddr2_top_memory_mem_dqs_n,
	enet_pll_reset_reset,
	enet_pll_clk125_clk,
	enet_pll_clk25_clk,
	enet_pll_locked_export,
	enet_pll_clk2_5_clk,
	button_pio_external_connection_export,
	led_pio_external_connection_export,
	emac_gmii_connection_gmii_rx_d,
	emac_gmii_connection_gmii_rx_dv,
	emac_gmii_connection_gmii_rx_err,
	emac_gmii_connection_gmii_tx_d,
	emac_gmii_connection_gmii_tx_en,
	emac_gmii_connection_gmii_tx_err,
	emac_mdio_connection_mdc,
	emac_mdio_connection_mdio_in,
	emac_mdio_connection_mdio_out,
	emac_mdio_connection_mdio_oen,
	emac_mii_connection_mii_rx_d,
	emac_mii_connection_mii_rx_dv,
	emac_mii_connection_mii_rx_err,
	emac_mii_connection_mii_tx_d,
	emac_mii_connection_mii_tx_en,
	emac_mii_connection_mii_tx_err,
	emac_mii_connection_mii_crs,
	emac_mii_connection_mii_col,
	emac_status_connection_set_10,
	emac_status_connection_set_1000,
	emac_status_connection_eth_mode,
	emac_status_connection_ena_10,
	emac_misc_connection_xon_gen,
	emac_misc_connection_xoff_gen,
	emac_misc_connection_ff_tx_crc_fwd,
	emac_misc_connection_ff_tx_septy,
	emac_misc_connection_tx_ff_uflow,
	emac_misc_connection_ff_tx_a_full,
	emac_misc_connection_ff_tx_a_empty,
	emac_misc_connection_rx_err_stat,
	emac_misc_connection_rx_frm_type,
	emac_misc_connection_ff_rx_dsav,
	emac_misc_connection_ff_rx_a_full,
	emac_misc_connection_ff_rx_a_empty,
	emac_rx_clock_clk,
	emac_tx_clock_clk,
	clk_125_clk_in_clk,
	clk_125_clk_in_reset_reset_n,
	ddr2_top_oct_rzqin,
	ddr2_top_status_local_init_done,
	ddr2_top_status_local_cal_success,
	ddr2_top_status_local_cal_fail,
	sdram_pll_sharing_pll_mem_clk,
	sdram_pll_sharing_pll_write_clk,
	sdram_pll_sharing_pll_locked,
	sdram_pll_sharing_pll_write_clk_pre_phy_clk,
	sdram_pll_sharing_pll_addr_cmd_clk,
	sdram_pll_sharing_pll_avl_clk,
	sdram_pll_sharing_pll_config_clk,
	sdram_pll_sharing_pll_mem_phy_clk,
	sdram_pll_sharing_afi_phy_clk,
	sdram_pll_sharing_pll_avl_phy_clk);	

	input		clk_50_clk_in_clk;
	input		clk_50_clk_in_reset_reset_n;
	output	[9:0]	ddr2_top_memory_mem_ca;
	output	[0:0]	ddr2_top_memory_mem_ck;
	output	[0:0]	ddr2_top_memory_mem_ck_n;
	output	[0:0]	ddr2_top_memory_mem_cke;
	output	[0:0]	ddr2_top_memory_mem_cs_n;
	output	[3:0]	ddr2_top_memory_mem_dm;
	inout	[31:0]	ddr2_top_memory_mem_dq;
	inout	[3:0]	ddr2_top_memory_mem_dqs;
	inout	[3:0]	ddr2_top_memory_mem_dqs_n;
	input		enet_pll_reset_reset;
	output		enet_pll_clk125_clk;
	output		enet_pll_clk25_clk;
	output		enet_pll_locked_export;
	output		enet_pll_clk2_5_clk;
	input	[2:0]	button_pio_external_connection_export;
	output	[7:0]	led_pio_external_connection_export;
	input	[7:0]	emac_gmii_connection_gmii_rx_d;
	input		emac_gmii_connection_gmii_rx_dv;
	input		emac_gmii_connection_gmii_rx_err;
	output	[7:0]	emac_gmii_connection_gmii_tx_d;
	output		emac_gmii_connection_gmii_tx_en;
	output		emac_gmii_connection_gmii_tx_err;
	output		emac_mdio_connection_mdc;
	input		emac_mdio_connection_mdio_in;
	output		emac_mdio_connection_mdio_out;
	output		emac_mdio_connection_mdio_oen;
	input	[3:0]	emac_mii_connection_mii_rx_d;
	input		emac_mii_connection_mii_rx_dv;
	input		emac_mii_connection_mii_rx_err;
	output	[3:0]	emac_mii_connection_mii_tx_d;
	output		emac_mii_connection_mii_tx_en;
	output		emac_mii_connection_mii_tx_err;
	input		emac_mii_connection_mii_crs;
	input		emac_mii_connection_mii_col;
	input		emac_status_connection_set_10;
	input		emac_status_connection_set_1000;
	output		emac_status_connection_eth_mode;
	output		emac_status_connection_ena_10;
	input		emac_misc_connection_xon_gen;
	input		emac_misc_connection_xoff_gen;
	input		emac_misc_connection_ff_tx_crc_fwd;
	output		emac_misc_connection_ff_tx_septy;
	output		emac_misc_connection_tx_ff_uflow;
	output		emac_misc_connection_ff_tx_a_full;
	output		emac_misc_connection_ff_tx_a_empty;
	output	[17:0]	emac_misc_connection_rx_err_stat;
	output	[3:0]	emac_misc_connection_rx_frm_type;
	output		emac_misc_connection_ff_rx_dsav;
	output		emac_misc_connection_ff_rx_a_full;
	output		emac_misc_connection_ff_rx_a_empty;
	input		emac_rx_clock_clk;
	input		emac_tx_clock_clk;
	input		clk_125_clk_in_clk;
	input		clk_125_clk_in_reset_reset_n;
	input		ddr2_top_oct_rzqin;
	output		ddr2_top_status_local_init_done;
	output		ddr2_top_status_local_cal_success;
	output		ddr2_top_status_local_cal_fail;
	output		sdram_pll_sharing_pll_mem_clk;
	output		sdram_pll_sharing_pll_write_clk;
	output		sdram_pll_sharing_pll_locked;
	output		sdram_pll_sharing_pll_write_clk_pre_phy_clk;
	output		sdram_pll_sharing_pll_addr_cmd_clk;
	output		sdram_pll_sharing_pll_avl_clk;
	output		sdram_pll_sharing_pll_config_clk;
	output		sdram_pll_sharing_pll_mem_phy_clk;
	output		sdram_pll_sharing_afi_phy_clk;
	output		sdram_pll_sharing_pll_avl_phy_clk;
endmodule
