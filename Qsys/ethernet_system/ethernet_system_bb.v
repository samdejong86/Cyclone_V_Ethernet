
module ethernet_system (
	ethernet_subsys_clk_in_clk,
	ethernet_subsys_reset_in_reset_n,
	ethernet_bridge_s0_waitrequest,
	ethernet_bridge_s0_readdata,
	ethernet_bridge_s0_readdatavalid,
	ethernet_bridge_s0_burstcount,
	ethernet_bridge_s0_writedata,
	ethernet_bridge_s0_address,
	ethernet_bridge_s0_write,
	ethernet_bridge_s0_read,
	ethernet_bridge_s0_byteenable,
	ethernet_bridge_s0_debugaccess,
	sgdma_bridge_m0_waitrequest,
	sgdma_bridge_m0_readdata,
	sgdma_bridge_m0_readdatavalid,
	sgdma_bridge_m0_burstcount,
	sgdma_bridge_m0_writedata,
	sgdma_bridge_m0_address,
	sgdma_bridge_m0_write,
	sgdma_bridge_m0_read,
	sgdma_bridge_m0_byteenable,
	sgdma_bridge_m0_debugaccess,
	rx_clock_clk,
	tx_clock_clk,
	mac_status_connection_set_10,
	mac_status_connection_set_1000,
	mac_status_connection_eth_mode,
	mac_status_connection_ena_10,
	mac_gmii_connection_gmii_rx_d,
	mac_gmii_connection_gmii_rx_dv,
	mac_gmii_connection_gmii_rx_err,
	mac_gmii_connection_gmii_tx_d,
	mac_gmii_connection_gmii_tx_en,
	mac_gmii_connection_gmii_tx_err,
	mac_mdio_connection_mdc,
	mac_mdio_connection_mdio_in,
	mac_mdio_connection_mdio_out,
	mac_mdio_connection_mdio_oen,
	misc_connection_xon_gen,
	misc_connection_xoff_gen,
	misc_connection_ff_tx_crc_fwd,
	misc_connection_ff_tx_septy,
	misc_connection_tx_ff_uflow,
	misc_connection_ff_tx_a_full,
	misc_connection_ff_tx_a_empty,
	misc_connection_rx_err_stat,
	misc_connection_rx_frm_type,
	misc_connection_ff_rx_dsav,
	misc_connection_ff_rx_a_full,
	misc_connection_ff_rx_a_empty,
	mac_mii_connection_mii_rx_d,
	mac_mii_connection_mii_rx_dv,
	mac_mii_connection_mii_rx_err,
	mac_mii_connection_mii_tx_d,
	mac_mii_connection_mii_tx_en,
	mac_mii_connection_mii_tx_err,
	mac_mii_connection_mii_crs,
	mac_mii_connection_mii_col,
	sgdma_tx_csr_irq_irq,
	sgdma_rx_csr_irq_irq,
	descriptor_memory_s2_address,
	descriptor_memory_s2_chipselect,
	descriptor_memory_s2_clken,
	descriptor_memory_s2_write,
	descriptor_memory_s2_readdata,
	descriptor_memory_s2_writedata,
	descriptor_memory_s2_byteenable);	

	input		ethernet_subsys_clk_in_clk;
	input		ethernet_subsys_reset_in_reset_n;
	output		ethernet_bridge_s0_waitrequest;
	output	[31:0]	ethernet_bridge_s0_readdata;
	output		ethernet_bridge_s0_readdatavalid;
	input	[0:0]	ethernet_bridge_s0_burstcount;
	input	[31:0]	ethernet_bridge_s0_writedata;
	input	[10:0]	ethernet_bridge_s0_address;
	input		ethernet_bridge_s0_write;
	input		ethernet_bridge_s0_read;
	input	[3:0]	ethernet_bridge_s0_byteenable;
	input		ethernet_bridge_s0_debugaccess;
	input		sgdma_bridge_m0_waitrequest;
	input	[31:0]	sgdma_bridge_m0_readdata;
	input		sgdma_bridge_m0_readdatavalid;
	output	[0:0]	sgdma_bridge_m0_burstcount;
	output	[31:0]	sgdma_bridge_m0_writedata;
	output	[30:0]	sgdma_bridge_m0_address;
	output		sgdma_bridge_m0_write;
	output		sgdma_bridge_m0_read;
	output	[3:0]	sgdma_bridge_m0_byteenable;
	output		sgdma_bridge_m0_debugaccess;
	input		rx_clock_clk;
	input		tx_clock_clk;
	input		mac_status_connection_set_10;
	input		mac_status_connection_set_1000;
	output		mac_status_connection_eth_mode;
	output		mac_status_connection_ena_10;
	input	[7:0]	mac_gmii_connection_gmii_rx_d;
	input		mac_gmii_connection_gmii_rx_dv;
	input		mac_gmii_connection_gmii_rx_err;
	output	[7:0]	mac_gmii_connection_gmii_tx_d;
	output		mac_gmii_connection_gmii_tx_en;
	output		mac_gmii_connection_gmii_tx_err;
	output		mac_mdio_connection_mdc;
	input		mac_mdio_connection_mdio_in;
	output		mac_mdio_connection_mdio_out;
	output		mac_mdio_connection_mdio_oen;
	input		misc_connection_xon_gen;
	input		misc_connection_xoff_gen;
	input		misc_connection_ff_tx_crc_fwd;
	output		misc_connection_ff_tx_septy;
	output		misc_connection_tx_ff_uflow;
	output		misc_connection_ff_tx_a_full;
	output		misc_connection_ff_tx_a_empty;
	output	[17:0]	misc_connection_rx_err_stat;
	output	[3:0]	misc_connection_rx_frm_type;
	output		misc_connection_ff_rx_dsav;
	output		misc_connection_ff_rx_a_full;
	output		misc_connection_ff_rx_a_empty;
	input	[3:0]	mac_mii_connection_mii_rx_d;
	input		mac_mii_connection_mii_rx_dv;
	input		mac_mii_connection_mii_rx_err;
	output	[3:0]	mac_mii_connection_mii_tx_d;
	output		mac_mii_connection_mii_tx_en;
	output		mac_mii_connection_mii_tx_err;
	input		mac_mii_connection_mii_crs;
	input		mac_mii_connection_mii_col;
	output		sgdma_tx_csr_irq_irq;
	output		sgdma_rx_csr_irq_irq;
	input	[10:0]	descriptor_memory_s2_address;
	input		descriptor_memory_s2_chipselect;
	input		descriptor_memory_s2_clken;
	input		descriptor_memory_s2_write;
	output	[31:0]	descriptor_memory_s2_readdata;
	input	[31:0]	descriptor_memory_s2_writedata;
	input	[3:0]	descriptor_memory_s2_byteenable;
endmodule
