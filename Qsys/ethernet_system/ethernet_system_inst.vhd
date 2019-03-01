	component ethernet_system is
		port (
			ethernet_subsys_clk_in_clk       : in  std_logic                     := 'X';             -- clk
			ethernet_subsys_reset_in_reset_n : in  std_logic                     := 'X';             -- reset_n
			ethernet_bridge_s0_waitrequest   : out std_logic;                                        -- waitrequest
			ethernet_bridge_s0_readdata      : out std_logic_vector(31 downto 0);                    -- readdata
			ethernet_bridge_s0_readdatavalid : out std_logic;                                        -- readdatavalid
			ethernet_bridge_s0_burstcount    : in  std_logic_vector(0 downto 0)  := (others => 'X'); -- burstcount
			ethernet_bridge_s0_writedata     : in  std_logic_vector(31 downto 0) := (others => 'X'); -- writedata
			ethernet_bridge_s0_address       : in  std_logic_vector(10 downto 0) := (others => 'X'); -- address
			ethernet_bridge_s0_write         : in  std_logic                     := 'X';             -- write
			ethernet_bridge_s0_read          : in  std_logic                     := 'X';             -- read
			ethernet_bridge_s0_byteenable    : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- byteenable
			ethernet_bridge_s0_debugaccess   : in  std_logic                     := 'X';             -- debugaccess
			sgdma_bridge_m0_waitrequest      : in  std_logic                     := 'X';             -- waitrequest
			sgdma_bridge_m0_readdata         : in  std_logic_vector(31 downto 0) := (others => 'X'); -- readdata
			sgdma_bridge_m0_readdatavalid    : in  std_logic                     := 'X';             -- readdatavalid
			sgdma_bridge_m0_burstcount       : out std_logic_vector(0 downto 0);                     -- burstcount
			sgdma_bridge_m0_writedata        : out std_logic_vector(31 downto 0);                    -- writedata
			sgdma_bridge_m0_address          : out std_logic_vector(30 downto 0);                    -- address
			sgdma_bridge_m0_write            : out std_logic;                                        -- write
			sgdma_bridge_m0_read             : out std_logic;                                        -- read
			sgdma_bridge_m0_byteenable       : out std_logic_vector(3 downto 0);                     -- byteenable
			sgdma_bridge_m0_debugaccess      : out std_logic;                                        -- debugaccess
			rx_clock_clk                     : in  std_logic                     := 'X';             -- clk
			tx_clock_clk                     : in  std_logic                     := 'X';             -- clk
			mac_status_connection_set_10     : in  std_logic                     := 'X';             -- set_10
			mac_status_connection_set_1000   : in  std_logic                     := 'X';             -- set_1000
			mac_status_connection_eth_mode   : out std_logic;                                        -- eth_mode
			mac_status_connection_ena_10     : out std_logic;                                        -- ena_10
			mac_gmii_connection_gmii_rx_d    : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- gmii_rx_d
			mac_gmii_connection_gmii_rx_dv   : in  std_logic                     := 'X';             -- gmii_rx_dv
			mac_gmii_connection_gmii_rx_err  : in  std_logic                     := 'X';             -- gmii_rx_err
			mac_gmii_connection_gmii_tx_d    : out std_logic_vector(7 downto 0);                     -- gmii_tx_d
			mac_gmii_connection_gmii_tx_en   : out std_logic;                                        -- gmii_tx_en
			mac_gmii_connection_gmii_tx_err  : out std_logic;                                        -- gmii_tx_err
			mac_mdio_connection_mdc          : out std_logic;                                        -- mdc
			mac_mdio_connection_mdio_in      : in  std_logic                     := 'X';             -- mdio_in
			mac_mdio_connection_mdio_out     : out std_logic;                                        -- mdio_out
			mac_mdio_connection_mdio_oen     : out std_logic;                                        -- mdio_oen
			misc_connection_xon_gen          : in  std_logic                     := 'X';             -- xon_gen
			misc_connection_xoff_gen         : in  std_logic                     := 'X';             -- xoff_gen
			misc_connection_ff_tx_crc_fwd    : in  std_logic                     := 'X';             -- ff_tx_crc_fwd
			misc_connection_ff_tx_septy      : out std_logic;                                        -- ff_tx_septy
			misc_connection_tx_ff_uflow      : out std_logic;                                        -- tx_ff_uflow
			misc_connection_ff_tx_a_full     : out std_logic;                                        -- ff_tx_a_full
			misc_connection_ff_tx_a_empty    : out std_logic;                                        -- ff_tx_a_empty
			misc_connection_rx_err_stat      : out std_logic_vector(17 downto 0);                    -- rx_err_stat
			misc_connection_rx_frm_type      : out std_logic_vector(3 downto 0);                     -- rx_frm_type
			misc_connection_ff_rx_dsav       : out std_logic;                                        -- ff_rx_dsav
			misc_connection_ff_rx_a_full     : out std_logic;                                        -- ff_rx_a_full
			misc_connection_ff_rx_a_empty    : out std_logic;                                        -- ff_rx_a_empty
			mac_mii_connection_mii_rx_d      : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- mii_rx_d
			mac_mii_connection_mii_rx_dv     : in  std_logic                     := 'X';             -- mii_rx_dv
			mac_mii_connection_mii_rx_err    : in  std_logic                     := 'X';             -- mii_rx_err
			mac_mii_connection_mii_tx_d      : out std_logic_vector(3 downto 0);                     -- mii_tx_d
			mac_mii_connection_mii_tx_en     : out std_logic;                                        -- mii_tx_en
			mac_mii_connection_mii_tx_err    : out std_logic;                                        -- mii_tx_err
			mac_mii_connection_mii_crs       : in  std_logic                     := 'X';             -- mii_crs
			mac_mii_connection_mii_col       : in  std_logic                     := 'X';             -- mii_col
			sgdma_tx_csr_irq_irq             : out std_logic;                                        -- irq
			sgdma_rx_csr_irq_irq             : out std_logic;                                        -- irq
			descriptor_memory_s2_address     : in  std_logic_vector(10 downto 0) := (others => 'X'); -- address
			descriptor_memory_s2_chipselect  : in  std_logic                     := 'X';             -- chipselect
			descriptor_memory_s2_clken       : in  std_logic                     := 'X';             -- clken
			descriptor_memory_s2_write       : in  std_logic                     := 'X';             -- write
			descriptor_memory_s2_readdata    : out std_logic_vector(31 downto 0);                    -- readdata
			descriptor_memory_s2_writedata   : in  std_logic_vector(31 downto 0) := (others => 'X'); -- writedata
			descriptor_memory_s2_byteenable  : in  std_logic_vector(3 downto 0)  := (others => 'X')  -- byteenable
		);
	end component ethernet_system;

	u0 : component ethernet_system
		port map (
			ethernet_subsys_clk_in_clk       => CONNECTED_TO_ethernet_subsys_clk_in_clk,       --   ethernet_subsys_clk_in.clk
			ethernet_subsys_reset_in_reset_n => CONNECTED_TO_ethernet_subsys_reset_in_reset_n, -- ethernet_subsys_reset_in.reset_n
			ethernet_bridge_s0_waitrequest   => CONNECTED_TO_ethernet_bridge_s0_waitrequest,   --       ethernet_bridge_s0.waitrequest
			ethernet_bridge_s0_readdata      => CONNECTED_TO_ethernet_bridge_s0_readdata,      --                         .readdata
			ethernet_bridge_s0_readdatavalid => CONNECTED_TO_ethernet_bridge_s0_readdatavalid, --                         .readdatavalid
			ethernet_bridge_s0_burstcount    => CONNECTED_TO_ethernet_bridge_s0_burstcount,    --                         .burstcount
			ethernet_bridge_s0_writedata     => CONNECTED_TO_ethernet_bridge_s0_writedata,     --                         .writedata
			ethernet_bridge_s0_address       => CONNECTED_TO_ethernet_bridge_s0_address,       --                         .address
			ethernet_bridge_s0_write         => CONNECTED_TO_ethernet_bridge_s0_write,         --                         .write
			ethernet_bridge_s0_read          => CONNECTED_TO_ethernet_bridge_s0_read,          --                         .read
			ethernet_bridge_s0_byteenable    => CONNECTED_TO_ethernet_bridge_s0_byteenable,    --                         .byteenable
			ethernet_bridge_s0_debugaccess   => CONNECTED_TO_ethernet_bridge_s0_debugaccess,   --                         .debugaccess
			sgdma_bridge_m0_waitrequest      => CONNECTED_TO_sgdma_bridge_m0_waitrequest,      --          sgdma_bridge_m0.waitrequest
			sgdma_bridge_m0_readdata         => CONNECTED_TO_sgdma_bridge_m0_readdata,         --                         .readdata
			sgdma_bridge_m0_readdatavalid    => CONNECTED_TO_sgdma_bridge_m0_readdatavalid,    --                         .readdatavalid
			sgdma_bridge_m0_burstcount       => CONNECTED_TO_sgdma_bridge_m0_burstcount,       --                         .burstcount
			sgdma_bridge_m0_writedata        => CONNECTED_TO_sgdma_bridge_m0_writedata,        --                         .writedata
			sgdma_bridge_m0_address          => CONNECTED_TO_sgdma_bridge_m0_address,          --                         .address
			sgdma_bridge_m0_write            => CONNECTED_TO_sgdma_bridge_m0_write,            --                         .write
			sgdma_bridge_m0_read             => CONNECTED_TO_sgdma_bridge_m0_read,             --                         .read
			sgdma_bridge_m0_byteenable       => CONNECTED_TO_sgdma_bridge_m0_byteenable,       --                         .byteenable
			sgdma_bridge_m0_debugaccess      => CONNECTED_TO_sgdma_bridge_m0_debugaccess,      --                         .debugaccess
			rx_clock_clk                     => CONNECTED_TO_rx_clock_clk,                     --                 rx_clock.clk
			tx_clock_clk                     => CONNECTED_TO_tx_clock_clk,                     --                 tx_clock.clk
			mac_status_connection_set_10     => CONNECTED_TO_mac_status_connection_set_10,     --    mac_status_connection.set_10
			mac_status_connection_set_1000   => CONNECTED_TO_mac_status_connection_set_1000,   --                         .set_1000
			mac_status_connection_eth_mode   => CONNECTED_TO_mac_status_connection_eth_mode,   --                         .eth_mode
			mac_status_connection_ena_10     => CONNECTED_TO_mac_status_connection_ena_10,     --                         .ena_10
			mac_gmii_connection_gmii_rx_d    => CONNECTED_TO_mac_gmii_connection_gmii_rx_d,    --      mac_gmii_connection.gmii_rx_d
			mac_gmii_connection_gmii_rx_dv   => CONNECTED_TO_mac_gmii_connection_gmii_rx_dv,   --                         .gmii_rx_dv
			mac_gmii_connection_gmii_rx_err  => CONNECTED_TO_mac_gmii_connection_gmii_rx_err,  --                         .gmii_rx_err
			mac_gmii_connection_gmii_tx_d    => CONNECTED_TO_mac_gmii_connection_gmii_tx_d,    --                         .gmii_tx_d
			mac_gmii_connection_gmii_tx_en   => CONNECTED_TO_mac_gmii_connection_gmii_tx_en,   --                         .gmii_tx_en
			mac_gmii_connection_gmii_tx_err  => CONNECTED_TO_mac_gmii_connection_gmii_tx_err,  --                         .gmii_tx_err
			mac_mdio_connection_mdc          => CONNECTED_TO_mac_mdio_connection_mdc,          --      mac_mdio_connection.mdc
			mac_mdio_connection_mdio_in      => CONNECTED_TO_mac_mdio_connection_mdio_in,      --                         .mdio_in
			mac_mdio_connection_mdio_out     => CONNECTED_TO_mac_mdio_connection_mdio_out,     --                         .mdio_out
			mac_mdio_connection_mdio_oen     => CONNECTED_TO_mac_mdio_connection_mdio_oen,     --                         .mdio_oen
			misc_connection_xon_gen          => CONNECTED_TO_misc_connection_xon_gen,          --          misc_connection.xon_gen
			misc_connection_xoff_gen         => CONNECTED_TO_misc_connection_xoff_gen,         --                         .xoff_gen
			misc_connection_ff_tx_crc_fwd    => CONNECTED_TO_misc_connection_ff_tx_crc_fwd,    --                         .ff_tx_crc_fwd
			misc_connection_ff_tx_septy      => CONNECTED_TO_misc_connection_ff_tx_septy,      --                         .ff_tx_septy
			misc_connection_tx_ff_uflow      => CONNECTED_TO_misc_connection_tx_ff_uflow,      --                         .tx_ff_uflow
			misc_connection_ff_tx_a_full     => CONNECTED_TO_misc_connection_ff_tx_a_full,     --                         .ff_tx_a_full
			misc_connection_ff_tx_a_empty    => CONNECTED_TO_misc_connection_ff_tx_a_empty,    --                         .ff_tx_a_empty
			misc_connection_rx_err_stat      => CONNECTED_TO_misc_connection_rx_err_stat,      --                         .rx_err_stat
			misc_connection_rx_frm_type      => CONNECTED_TO_misc_connection_rx_frm_type,      --                         .rx_frm_type
			misc_connection_ff_rx_dsav       => CONNECTED_TO_misc_connection_ff_rx_dsav,       --                         .ff_rx_dsav
			misc_connection_ff_rx_a_full     => CONNECTED_TO_misc_connection_ff_rx_a_full,     --                         .ff_rx_a_full
			misc_connection_ff_rx_a_empty    => CONNECTED_TO_misc_connection_ff_rx_a_empty,    --                         .ff_rx_a_empty
			mac_mii_connection_mii_rx_d      => CONNECTED_TO_mac_mii_connection_mii_rx_d,      --       mac_mii_connection.mii_rx_d
			mac_mii_connection_mii_rx_dv     => CONNECTED_TO_mac_mii_connection_mii_rx_dv,     --                         .mii_rx_dv
			mac_mii_connection_mii_rx_err    => CONNECTED_TO_mac_mii_connection_mii_rx_err,    --                         .mii_rx_err
			mac_mii_connection_mii_tx_d      => CONNECTED_TO_mac_mii_connection_mii_tx_d,      --                         .mii_tx_d
			mac_mii_connection_mii_tx_en     => CONNECTED_TO_mac_mii_connection_mii_tx_en,     --                         .mii_tx_en
			mac_mii_connection_mii_tx_err    => CONNECTED_TO_mac_mii_connection_mii_tx_err,    --                         .mii_tx_err
			mac_mii_connection_mii_crs       => CONNECTED_TO_mac_mii_connection_mii_crs,       --                         .mii_crs
			mac_mii_connection_mii_col       => CONNECTED_TO_mac_mii_connection_mii_col,       --                         .mii_col
			sgdma_tx_csr_irq_irq             => CONNECTED_TO_sgdma_tx_csr_irq_irq,             --         sgdma_tx_csr_irq.irq
			sgdma_rx_csr_irq_irq             => CONNECTED_TO_sgdma_rx_csr_irq_irq,             --         sgdma_rx_csr_irq.irq
			descriptor_memory_s2_address     => CONNECTED_TO_descriptor_memory_s2_address,     --     descriptor_memory_s2.address
			descriptor_memory_s2_chipselect  => CONNECTED_TO_descriptor_memory_s2_chipselect,  --                         .chipselect
			descriptor_memory_s2_clken       => CONNECTED_TO_descriptor_memory_s2_clken,       --                         .clken
			descriptor_memory_s2_write       => CONNECTED_TO_descriptor_memory_s2_write,       --                         .write
			descriptor_memory_s2_readdata    => CONNECTED_TO_descriptor_memory_s2_readdata,    --                         .readdata
			descriptor_memory_s2_writedata   => CONNECTED_TO_descriptor_memory_s2_writedata,   --                         .writedata
			descriptor_memory_s2_byteenable  => CONNECTED_TO_descriptor_memory_s2_byteenable   --                         .byteenable
		);

