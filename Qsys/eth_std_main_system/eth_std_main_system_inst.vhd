	component eth_std_main_system is
		port (
			clk_50_clk_in_clk                           : in    std_logic                     := 'X';             -- clk
			clk_50_clk_in_reset_reset_n                 : in    std_logic                     := 'X';             -- reset_n
			ddr2_top_memory_mem_ca                      : out   std_logic_vector(9 downto 0);                     -- mem_ca
			ddr2_top_memory_mem_ck                      : out   std_logic_vector(0 downto 0);                     -- mem_ck
			ddr2_top_memory_mem_ck_n                    : out   std_logic_vector(0 downto 0);                     -- mem_ck_n
			ddr2_top_memory_mem_cke                     : out   std_logic_vector(0 downto 0);                     -- mem_cke
			ddr2_top_memory_mem_cs_n                    : out   std_logic_vector(0 downto 0);                     -- mem_cs_n
			ddr2_top_memory_mem_dm                      : out   std_logic_vector(3 downto 0);                     -- mem_dm
			ddr2_top_memory_mem_dq                      : inout std_logic_vector(31 downto 0) := (others => 'X'); -- mem_dq
			ddr2_top_memory_mem_dqs                     : inout std_logic_vector(3 downto 0)  := (others => 'X'); -- mem_dqs
			ddr2_top_memory_mem_dqs_n                   : inout std_logic_vector(3 downto 0)  := (others => 'X'); -- mem_dqs_n
			enet_pll_reset_reset                        : in    std_logic                     := 'X';             -- reset
			enet_pll_clk125_clk                         : out   std_logic;                                        -- clk
			enet_pll_clk25_clk                          : out   std_logic;                                        -- clk
			enet_pll_locked_export                      : out   std_logic;                                        -- export
			enet_pll_clk2_5_clk                         : out   std_logic;                                        -- clk
			button_pio_external_connection_export       : in    std_logic_vector(2 downto 0)  := (others => 'X'); -- export
			led_pio_external_connection_export          : out   std_logic_vector(7 downto 0);                     -- export
			emac_gmii_connection_gmii_rx_d              : in    std_logic_vector(7 downto 0)  := (others => 'X'); -- gmii_rx_d
			emac_gmii_connection_gmii_rx_dv             : in    std_logic                     := 'X';             -- gmii_rx_dv
			emac_gmii_connection_gmii_rx_err            : in    std_logic                     := 'X';             -- gmii_rx_err
			emac_gmii_connection_gmii_tx_d              : out   std_logic_vector(7 downto 0);                     -- gmii_tx_d
			emac_gmii_connection_gmii_tx_en             : out   std_logic;                                        -- gmii_tx_en
			emac_gmii_connection_gmii_tx_err            : out   std_logic;                                        -- gmii_tx_err
			emac_mdio_connection_mdc                    : out   std_logic;                                        -- mdc
			emac_mdio_connection_mdio_in                : in    std_logic                     := 'X';             -- mdio_in
			emac_mdio_connection_mdio_out               : out   std_logic;                                        -- mdio_out
			emac_mdio_connection_mdio_oen               : out   std_logic;                                        -- mdio_oen
			emac_mii_connection_mii_rx_d                : in    std_logic_vector(3 downto 0)  := (others => 'X'); -- mii_rx_d
			emac_mii_connection_mii_rx_dv               : in    std_logic                     := 'X';             -- mii_rx_dv
			emac_mii_connection_mii_rx_err              : in    std_logic                     := 'X';             -- mii_rx_err
			emac_mii_connection_mii_tx_d                : out   std_logic_vector(3 downto 0);                     -- mii_tx_d
			emac_mii_connection_mii_tx_en               : out   std_logic;                                        -- mii_tx_en
			emac_mii_connection_mii_tx_err              : out   std_logic;                                        -- mii_tx_err
			emac_mii_connection_mii_crs                 : in    std_logic                     := 'X';             -- mii_crs
			emac_mii_connection_mii_col                 : in    std_logic                     := 'X';             -- mii_col
			emac_status_connection_set_10               : in    std_logic                     := 'X';             -- set_10
			emac_status_connection_set_1000             : in    std_logic                     := 'X';             -- set_1000
			emac_status_connection_eth_mode             : out   std_logic;                                        -- eth_mode
			emac_status_connection_ena_10               : out   std_logic;                                        -- ena_10
			emac_misc_connection_xon_gen                : in    std_logic                     := 'X';             -- xon_gen
			emac_misc_connection_xoff_gen               : in    std_logic                     := 'X';             -- xoff_gen
			emac_misc_connection_ff_tx_crc_fwd          : in    std_logic                     := 'X';             -- ff_tx_crc_fwd
			emac_misc_connection_ff_tx_septy            : out   std_logic;                                        -- ff_tx_septy
			emac_misc_connection_tx_ff_uflow            : out   std_logic;                                        -- tx_ff_uflow
			emac_misc_connection_ff_tx_a_full           : out   std_logic;                                        -- ff_tx_a_full
			emac_misc_connection_ff_tx_a_empty          : out   std_logic;                                        -- ff_tx_a_empty
			emac_misc_connection_rx_err_stat            : out   std_logic_vector(17 downto 0);                    -- rx_err_stat
			emac_misc_connection_rx_frm_type            : out   std_logic_vector(3 downto 0);                     -- rx_frm_type
			emac_misc_connection_ff_rx_dsav             : out   std_logic;                                        -- ff_rx_dsav
			emac_misc_connection_ff_rx_a_full           : out   std_logic;                                        -- ff_rx_a_full
			emac_misc_connection_ff_rx_a_empty          : out   std_logic;                                        -- ff_rx_a_empty
			emac_rx_clock_clk                           : in    std_logic                     := 'X';             -- clk
			emac_tx_clock_clk                           : in    std_logic                     := 'X';             -- clk
			clk_125_clk_in_clk                          : in    std_logic                     := 'X';             -- clk
			clk_125_clk_in_reset_reset_n                : in    std_logic                     := 'X';             -- reset_n
			ddr2_top_oct_rzqin                          : in    std_logic                     := 'X';             -- rzqin
			ddr2_top_status_local_init_done             : out   std_logic;                                        -- local_init_done
			ddr2_top_status_local_cal_success           : out   std_logic;                                        -- local_cal_success
			ddr2_top_status_local_cal_fail              : out   std_logic;                                        -- local_cal_fail
			sdram_pll_sharing_pll_mem_clk               : out   std_logic;                                        -- pll_mem_clk
			sdram_pll_sharing_pll_write_clk             : out   std_logic;                                        -- pll_write_clk
			sdram_pll_sharing_pll_locked                : out   std_logic;                                        -- pll_locked
			sdram_pll_sharing_pll_write_clk_pre_phy_clk : out   std_logic;                                        -- pll_write_clk_pre_phy_clk
			sdram_pll_sharing_pll_addr_cmd_clk          : out   std_logic;                                        -- pll_addr_cmd_clk
			sdram_pll_sharing_pll_avl_clk               : out   std_logic;                                        -- pll_avl_clk
			sdram_pll_sharing_pll_config_clk            : out   std_logic;                                        -- pll_config_clk
			sdram_pll_sharing_pll_mem_phy_clk           : out   std_logic;                                        -- pll_mem_phy_clk
			sdram_pll_sharing_afi_phy_clk               : out   std_logic;                                        -- afi_phy_clk
			sdram_pll_sharing_pll_avl_phy_clk           : out   std_logic                                         -- pll_avl_phy_clk
		);
	end component eth_std_main_system;

	u0 : component eth_std_main_system
		port map (
			clk_50_clk_in_clk                           => CONNECTED_TO_clk_50_clk_in_clk,                           --                  clk_50_clk_in.clk
			clk_50_clk_in_reset_reset_n                 => CONNECTED_TO_clk_50_clk_in_reset_reset_n,                 --            clk_50_clk_in_reset.reset_n
			ddr2_top_memory_mem_ca                      => CONNECTED_TO_ddr2_top_memory_mem_ca,                      --                ddr2_top_memory.mem_ca
			ddr2_top_memory_mem_ck                      => CONNECTED_TO_ddr2_top_memory_mem_ck,                      --                               .mem_ck
			ddr2_top_memory_mem_ck_n                    => CONNECTED_TO_ddr2_top_memory_mem_ck_n,                    --                               .mem_ck_n
			ddr2_top_memory_mem_cke                     => CONNECTED_TO_ddr2_top_memory_mem_cke,                     --                               .mem_cke
			ddr2_top_memory_mem_cs_n                    => CONNECTED_TO_ddr2_top_memory_mem_cs_n,                    --                               .mem_cs_n
			ddr2_top_memory_mem_dm                      => CONNECTED_TO_ddr2_top_memory_mem_dm,                      --                               .mem_dm
			ddr2_top_memory_mem_dq                      => CONNECTED_TO_ddr2_top_memory_mem_dq,                      --                               .mem_dq
			ddr2_top_memory_mem_dqs                     => CONNECTED_TO_ddr2_top_memory_mem_dqs,                     --                               .mem_dqs
			ddr2_top_memory_mem_dqs_n                   => CONNECTED_TO_ddr2_top_memory_mem_dqs_n,                   --                               .mem_dqs_n
			enet_pll_reset_reset                        => CONNECTED_TO_enet_pll_reset_reset,                        --                 enet_pll_reset.reset
			enet_pll_clk125_clk                         => CONNECTED_TO_enet_pll_clk125_clk,                         --                enet_pll_clk125.clk
			enet_pll_clk25_clk                          => CONNECTED_TO_enet_pll_clk25_clk,                          --                 enet_pll_clk25.clk
			enet_pll_locked_export                      => CONNECTED_TO_enet_pll_locked_export,                      --                enet_pll_locked.export
			enet_pll_clk2_5_clk                         => CONNECTED_TO_enet_pll_clk2_5_clk,                         --                enet_pll_clk2_5.clk
			button_pio_external_connection_export       => CONNECTED_TO_button_pio_external_connection_export,       -- button_pio_external_connection.export
			led_pio_external_connection_export          => CONNECTED_TO_led_pio_external_connection_export,          --    led_pio_external_connection.export
			emac_gmii_connection_gmii_rx_d              => CONNECTED_TO_emac_gmii_connection_gmii_rx_d,              --           emac_gmii_connection.gmii_rx_d
			emac_gmii_connection_gmii_rx_dv             => CONNECTED_TO_emac_gmii_connection_gmii_rx_dv,             --                               .gmii_rx_dv
			emac_gmii_connection_gmii_rx_err            => CONNECTED_TO_emac_gmii_connection_gmii_rx_err,            --                               .gmii_rx_err
			emac_gmii_connection_gmii_tx_d              => CONNECTED_TO_emac_gmii_connection_gmii_tx_d,              --                               .gmii_tx_d
			emac_gmii_connection_gmii_tx_en             => CONNECTED_TO_emac_gmii_connection_gmii_tx_en,             --                               .gmii_tx_en
			emac_gmii_connection_gmii_tx_err            => CONNECTED_TO_emac_gmii_connection_gmii_tx_err,            --                               .gmii_tx_err
			emac_mdio_connection_mdc                    => CONNECTED_TO_emac_mdio_connection_mdc,                    --           emac_mdio_connection.mdc
			emac_mdio_connection_mdio_in                => CONNECTED_TO_emac_mdio_connection_mdio_in,                --                               .mdio_in
			emac_mdio_connection_mdio_out               => CONNECTED_TO_emac_mdio_connection_mdio_out,               --                               .mdio_out
			emac_mdio_connection_mdio_oen               => CONNECTED_TO_emac_mdio_connection_mdio_oen,               --                               .mdio_oen
			emac_mii_connection_mii_rx_d                => CONNECTED_TO_emac_mii_connection_mii_rx_d,                --            emac_mii_connection.mii_rx_d
			emac_mii_connection_mii_rx_dv               => CONNECTED_TO_emac_mii_connection_mii_rx_dv,               --                               .mii_rx_dv
			emac_mii_connection_mii_rx_err              => CONNECTED_TO_emac_mii_connection_mii_rx_err,              --                               .mii_rx_err
			emac_mii_connection_mii_tx_d                => CONNECTED_TO_emac_mii_connection_mii_tx_d,                --                               .mii_tx_d
			emac_mii_connection_mii_tx_en               => CONNECTED_TO_emac_mii_connection_mii_tx_en,               --                               .mii_tx_en
			emac_mii_connection_mii_tx_err              => CONNECTED_TO_emac_mii_connection_mii_tx_err,              --                               .mii_tx_err
			emac_mii_connection_mii_crs                 => CONNECTED_TO_emac_mii_connection_mii_crs,                 --                               .mii_crs
			emac_mii_connection_mii_col                 => CONNECTED_TO_emac_mii_connection_mii_col,                 --                               .mii_col
			emac_status_connection_set_10               => CONNECTED_TO_emac_status_connection_set_10,               --         emac_status_connection.set_10
			emac_status_connection_set_1000             => CONNECTED_TO_emac_status_connection_set_1000,             --                               .set_1000
			emac_status_connection_eth_mode             => CONNECTED_TO_emac_status_connection_eth_mode,             --                               .eth_mode
			emac_status_connection_ena_10               => CONNECTED_TO_emac_status_connection_ena_10,               --                               .ena_10
			emac_misc_connection_xon_gen                => CONNECTED_TO_emac_misc_connection_xon_gen,                --           emac_misc_connection.xon_gen
			emac_misc_connection_xoff_gen               => CONNECTED_TO_emac_misc_connection_xoff_gen,               --                               .xoff_gen
			emac_misc_connection_ff_tx_crc_fwd          => CONNECTED_TO_emac_misc_connection_ff_tx_crc_fwd,          --                               .ff_tx_crc_fwd
			emac_misc_connection_ff_tx_septy            => CONNECTED_TO_emac_misc_connection_ff_tx_septy,            --                               .ff_tx_septy
			emac_misc_connection_tx_ff_uflow            => CONNECTED_TO_emac_misc_connection_tx_ff_uflow,            --                               .tx_ff_uflow
			emac_misc_connection_ff_tx_a_full           => CONNECTED_TO_emac_misc_connection_ff_tx_a_full,           --                               .ff_tx_a_full
			emac_misc_connection_ff_tx_a_empty          => CONNECTED_TO_emac_misc_connection_ff_tx_a_empty,          --                               .ff_tx_a_empty
			emac_misc_connection_rx_err_stat            => CONNECTED_TO_emac_misc_connection_rx_err_stat,            --                               .rx_err_stat
			emac_misc_connection_rx_frm_type            => CONNECTED_TO_emac_misc_connection_rx_frm_type,            --                               .rx_frm_type
			emac_misc_connection_ff_rx_dsav             => CONNECTED_TO_emac_misc_connection_ff_rx_dsav,             --                               .ff_rx_dsav
			emac_misc_connection_ff_rx_a_full           => CONNECTED_TO_emac_misc_connection_ff_rx_a_full,           --                               .ff_rx_a_full
			emac_misc_connection_ff_rx_a_empty          => CONNECTED_TO_emac_misc_connection_ff_rx_a_empty,          --                               .ff_rx_a_empty
			emac_rx_clock_clk                           => CONNECTED_TO_emac_rx_clock_clk,                           --                  emac_rx_clock.clk
			emac_tx_clock_clk                           => CONNECTED_TO_emac_tx_clock_clk,                           --                  emac_tx_clock.clk
			clk_125_clk_in_clk                          => CONNECTED_TO_clk_125_clk_in_clk,                          --                 clk_125_clk_in.clk
			clk_125_clk_in_reset_reset_n                => CONNECTED_TO_clk_125_clk_in_reset_reset_n,                --           clk_125_clk_in_reset.reset_n
			ddr2_top_oct_rzqin                          => CONNECTED_TO_ddr2_top_oct_rzqin,                          --                   ddr2_top_oct.rzqin
			ddr2_top_status_local_init_done             => CONNECTED_TO_ddr2_top_status_local_init_done,             --                ddr2_top_status.local_init_done
			ddr2_top_status_local_cal_success           => CONNECTED_TO_ddr2_top_status_local_cal_success,           --                               .local_cal_success
			ddr2_top_status_local_cal_fail              => CONNECTED_TO_ddr2_top_status_local_cal_fail,              --                               .local_cal_fail
			sdram_pll_sharing_pll_mem_clk               => CONNECTED_TO_sdram_pll_sharing_pll_mem_clk,               --              sdram_pll_sharing.pll_mem_clk
			sdram_pll_sharing_pll_write_clk             => CONNECTED_TO_sdram_pll_sharing_pll_write_clk,             --                               .pll_write_clk
			sdram_pll_sharing_pll_locked                => CONNECTED_TO_sdram_pll_sharing_pll_locked,                --                               .pll_locked
			sdram_pll_sharing_pll_write_clk_pre_phy_clk => CONNECTED_TO_sdram_pll_sharing_pll_write_clk_pre_phy_clk, --                               .pll_write_clk_pre_phy_clk
			sdram_pll_sharing_pll_addr_cmd_clk          => CONNECTED_TO_sdram_pll_sharing_pll_addr_cmd_clk,          --                               .pll_addr_cmd_clk
			sdram_pll_sharing_pll_avl_clk               => CONNECTED_TO_sdram_pll_sharing_pll_avl_clk,               --                               .pll_avl_clk
			sdram_pll_sharing_pll_config_clk            => CONNECTED_TO_sdram_pll_sharing_pll_config_clk,            --                               .pll_config_clk
			sdram_pll_sharing_pll_mem_phy_clk           => CONNECTED_TO_sdram_pll_sharing_pll_mem_phy_clk,           --                               .pll_mem_phy_clk
			sdram_pll_sharing_afi_phy_clk               => CONNECTED_TO_sdram_pll_sharing_afi_phy_clk,               --                               .afi_phy_clk
			sdram_pll_sharing_pll_avl_phy_clk           => CONNECTED_TO_sdram_pll_sharing_pll_avl_phy_clk            --                               .pll_avl_phy_clk
		);

