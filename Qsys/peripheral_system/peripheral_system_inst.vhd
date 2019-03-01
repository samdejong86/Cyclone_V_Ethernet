	component peripheral_system is
		port (
			peripheral_subsys_clk_in_clk          : in  std_logic                     := 'X';             -- clk
			peripheral_subsys_reset_in_reset_n    : in  std_logic                     := 'X';             -- reset_n
			peripheral_bridge_s0_waitrequest      : out std_logic;                                        -- waitrequest
			peripheral_bridge_s0_readdata         : out std_logic_vector(31 downto 0);                    -- readdata
			peripheral_bridge_s0_readdatavalid    : out std_logic;                                        -- readdatavalid
			peripheral_bridge_s0_burstcount       : in  std_logic_vector(0 downto 0)  := (others => 'X'); -- burstcount
			peripheral_bridge_s0_writedata        : in  std_logic_vector(31 downto 0) := (others => 'X'); -- writedata
			peripheral_bridge_s0_address          : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- address
			peripheral_bridge_s0_write            : in  std_logic                     := 'X';             -- write
			peripheral_bridge_s0_read             : in  std_logic                     := 'X';             -- read
			peripheral_bridge_s0_byteenable       : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- byteenable
			peripheral_bridge_s0_debugaccess      : in  std_logic                     := 'X';             -- debugaccess
			sys_clk_timer_irq_irq                 : out std_logic;                                        -- irq
			high_res_timer_irq_irq                : out std_logic;                                        -- irq
			button_pio_external_connection_export : in  std_logic_vector(2 downto 0)  := (others => 'X'); -- export
			button_pio_irq_irq                    : out std_logic;                                        -- irq
			led_pio_external_connection_export    : out std_logic_vector(7 downto 0);                     -- export
			jtag_uart_irq_irq                     : out std_logic                                         -- irq
		);
	end component peripheral_system;

	u0 : component peripheral_system
		port map (
			peripheral_subsys_clk_in_clk          => CONNECTED_TO_peripheral_subsys_clk_in_clk,          --       peripheral_subsys_clk_in.clk
			peripheral_subsys_reset_in_reset_n    => CONNECTED_TO_peripheral_subsys_reset_in_reset_n,    --     peripheral_subsys_reset_in.reset_n
			peripheral_bridge_s0_waitrequest      => CONNECTED_TO_peripheral_bridge_s0_waitrequest,      --           peripheral_bridge_s0.waitrequest
			peripheral_bridge_s0_readdata         => CONNECTED_TO_peripheral_bridge_s0_readdata,         --                               .readdata
			peripheral_bridge_s0_readdatavalid    => CONNECTED_TO_peripheral_bridge_s0_readdatavalid,    --                               .readdatavalid
			peripheral_bridge_s0_burstcount       => CONNECTED_TO_peripheral_bridge_s0_burstcount,       --                               .burstcount
			peripheral_bridge_s0_writedata        => CONNECTED_TO_peripheral_bridge_s0_writedata,        --                               .writedata
			peripheral_bridge_s0_address          => CONNECTED_TO_peripheral_bridge_s0_address,          --                               .address
			peripheral_bridge_s0_write            => CONNECTED_TO_peripheral_bridge_s0_write,            --                               .write
			peripheral_bridge_s0_read             => CONNECTED_TO_peripheral_bridge_s0_read,             --                               .read
			peripheral_bridge_s0_byteenable       => CONNECTED_TO_peripheral_bridge_s0_byteenable,       --                               .byteenable
			peripheral_bridge_s0_debugaccess      => CONNECTED_TO_peripheral_bridge_s0_debugaccess,      --                               .debugaccess
			sys_clk_timer_irq_irq                 => CONNECTED_TO_sys_clk_timer_irq_irq,                 --              sys_clk_timer_irq.irq
			high_res_timer_irq_irq                => CONNECTED_TO_high_res_timer_irq_irq,                --             high_res_timer_irq.irq
			button_pio_external_connection_export => CONNECTED_TO_button_pio_external_connection_export, -- button_pio_external_connection.export
			button_pio_irq_irq                    => CONNECTED_TO_button_pio_irq_irq,                    --                 button_pio_irq.irq
			led_pio_external_connection_export    => CONNECTED_TO_led_pio_external_connection_export,    --    led_pio_external_connection.export
			jtag_uart_irq_irq                     => CONNECTED_TO_jtag_uart_irq_irq                      --                  jtag_uart_irq.irq
		);

