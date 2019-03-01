	peripheral_system u0 (
		.peripheral_subsys_clk_in_clk          (<connected-to-peripheral_subsys_clk_in_clk>),          //       peripheral_subsys_clk_in.clk
		.peripheral_subsys_reset_in_reset_n    (<connected-to-peripheral_subsys_reset_in_reset_n>),    //     peripheral_subsys_reset_in.reset_n
		.peripheral_bridge_s0_waitrequest      (<connected-to-peripheral_bridge_s0_waitrequest>),      //           peripheral_bridge_s0.waitrequest
		.peripheral_bridge_s0_readdata         (<connected-to-peripheral_bridge_s0_readdata>),         //                               .readdata
		.peripheral_bridge_s0_readdatavalid    (<connected-to-peripheral_bridge_s0_readdatavalid>),    //                               .readdatavalid
		.peripheral_bridge_s0_burstcount       (<connected-to-peripheral_bridge_s0_burstcount>),       //                               .burstcount
		.peripheral_bridge_s0_writedata        (<connected-to-peripheral_bridge_s0_writedata>),        //                               .writedata
		.peripheral_bridge_s0_address          (<connected-to-peripheral_bridge_s0_address>),          //                               .address
		.peripheral_bridge_s0_write            (<connected-to-peripheral_bridge_s0_write>),            //                               .write
		.peripheral_bridge_s0_read             (<connected-to-peripheral_bridge_s0_read>),             //                               .read
		.peripheral_bridge_s0_byteenable       (<connected-to-peripheral_bridge_s0_byteenable>),       //                               .byteenable
		.peripheral_bridge_s0_debugaccess      (<connected-to-peripheral_bridge_s0_debugaccess>),      //                               .debugaccess
		.sys_clk_timer_irq_irq                 (<connected-to-sys_clk_timer_irq_irq>),                 //              sys_clk_timer_irq.irq
		.high_res_timer_irq_irq                (<connected-to-high_res_timer_irq_irq>),                //             high_res_timer_irq.irq
		.button_pio_external_connection_export (<connected-to-button_pio_external_connection_export>), // button_pio_external_connection.export
		.button_pio_irq_irq                    (<connected-to-button_pio_irq_irq>),                    //                 button_pio_irq.irq
		.led_pio_external_connection_export    (<connected-to-led_pio_external_connection_export>),    //    led_pio_external_connection.export
		.jtag_uart_irq_irq                     (<connected-to-jtag_uart_irq_irq>)                      //                  jtag_uart_irq.irq
	);

