
module peripheral_system (
	peripheral_subsys_clk_in_clk,
	peripheral_subsys_reset_in_reset_n,
	peripheral_bridge_s0_waitrequest,
	peripheral_bridge_s0_readdata,
	peripheral_bridge_s0_readdatavalid,
	peripheral_bridge_s0_burstcount,
	peripheral_bridge_s0_writedata,
	peripheral_bridge_s0_address,
	peripheral_bridge_s0_write,
	peripheral_bridge_s0_read,
	peripheral_bridge_s0_byteenable,
	peripheral_bridge_s0_debugaccess,
	sys_clk_timer_irq_irq,
	high_res_timer_irq_irq,
	button_pio_external_connection_export,
	button_pio_irq_irq,
	led_pio_external_connection_export,
	jtag_uart_irq_irq);	

	input		peripheral_subsys_clk_in_clk;
	input		peripheral_subsys_reset_in_reset_n;
	output		peripheral_bridge_s0_waitrequest;
	output	[31:0]	peripheral_bridge_s0_readdata;
	output		peripheral_bridge_s0_readdatavalid;
	input	[0:0]	peripheral_bridge_s0_burstcount;
	input	[31:0]	peripheral_bridge_s0_writedata;
	input	[7:0]	peripheral_bridge_s0_address;
	input		peripheral_bridge_s0_write;
	input		peripheral_bridge_s0_read;
	input	[3:0]	peripheral_bridge_s0_byteenable;
	input		peripheral_bridge_s0_debugaccess;
	output		sys_clk_timer_irq_irq;
	output		high_res_timer_irq_irq;
	input	[2:0]	button_pio_external_connection_export;
	output		button_pio_irq_irq;
	output	[7:0]	led_pio_external_connection_export;
	output		jtag_uart_irq_irq;
endmodule
