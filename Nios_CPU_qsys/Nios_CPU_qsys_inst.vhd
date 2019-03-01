	component Nios_CPU_qsys is
		port (
			clk_clk                                                    : in    std_logic                     := 'X';             -- clk
			merged_resets_in_reset_reset_n                             : in    std_logic                     := 'X';             -- reset_n
			tse_mac_mac_gmii_connection_gmii_rx_d                      : in    std_logic_vector(7 downto 0)  := (others => 'X'); -- gmii_rx_d
			tse_mac_mac_gmii_connection_gmii_rx_dv                     : in    std_logic                     := 'X';             -- gmii_rx_dv
			tse_mac_mac_gmii_connection_gmii_rx_err                    : in    std_logic                     := 'X';             -- gmii_rx_err
			tse_mac_mac_gmii_connection_gmii_tx_d                      : out   std_logic_vector(7 downto 0);                     -- gmii_tx_d
			tse_mac_mac_gmii_connection_gmii_tx_en                     : out   std_logic;                                        -- gmii_tx_en
			tse_mac_mac_gmii_connection_gmii_tx_err                    : out   std_logic;                                        -- gmii_tx_err
			tse_mac_mac_mdio_connection_mdc                            : out   std_logic;                                        -- mdc
			tse_mac_mac_mdio_connection_mdio_in                        : in    std_logic                     := 'X';             -- mdio_in
			tse_mac_mac_mdio_connection_mdio_out                       : out   std_logic;                                        -- mdio_out
			tse_mac_mac_mdio_connection_mdio_oen                       : out   std_logic;                                        -- mdio_oen
			tse_mac_mac_mii_connection_mii_rx_d                        : in    std_logic_vector(3 downto 0)  := (others => 'X'); -- mii_rx_d
			tse_mac_mac_mii_connection_mii_rx_dv                       : in    std_logic                     := 'X';             -- mii_rx_dv
			tse_mac_mac_mii_connection_mii_rx_err                      : in    std_logic                     := 'X';             -- mii_rx_err
			tse_mac_mac_mii_connection_mii_tx_d                        : out   std_logic_vector(3 downto 0);                     -- mii_tx_d
			tse_mac_mac_mii_connection_mii_tx_en                       : out   std_logic;                                        -- mii_tx_en
			tse_mac_mac_mii_connection_mii_tx_err                      : out   std_logic;                                        -- mii_tx_err
			tse_mac_mac_mii_connection_mii_crs                         : in    std_logic                     := 'X';             -- mii_crs
			tse_mac_mac_mii_connection_mii_col                         : in    std_logic                     := 'X';             -- mii_col
			tse_mac_mac_misc_connection_xon_gen                        : in    std_logic                     := 'X';             -- xon_gen
			tse_mac_mac_misc_connection_xoff_gen                       : in    std_logic                     := 'X';             -- xoff_gen
			tse_mac_mac_misc_connection_ff_tx_crc_fwd                  : in    std_logic                     := 'X';             -- ff_tx_crc_fwd
			tse_mac_mac_misc_connection_ff_tx_septy                    : out   std_logic;                                        -- ff_tx_septy
			tse_mac_mac_misc_connection_tx_ff_uflow                    : out   std_logic;                                        -- tx_ff_uflow
			tse_mac_mac_misc_connection_ff_tx_a_full                   : out   std_logic;                                        -- ff_tx_a_full
			tse_mac_mac_misc_connection_ff_tx_a_empty                  : out   std_logic;                                        -- ff_tx_a_empty
			tse_mac_mac_misc_connection_rx_err_stat                    : out   std_logic_vector(17 downto 0);                    -- rx_err_stat
			tse_mac_mac_misc_connection_rx_frm_type                    : out   std_logic_vector(3 downto 0);                     -- rx_frm_type
			tse_mac_mac_misc_connection_ff_rx_dsav                     : out   std_logic;                                        -- ff_rx_dsav
			tse_mac_mac_misc_connection_ff_rx_a_full                   : out   std_logic;                                        -- ff_rx_a_full
			tse_mac_mac_misc_connection_ff_rx_a_empty                  : out   std_logic;                                        -- ff_rx_a_empty
			tse_mac_mac_status_connection_set_10                       : in    std_logic                     := 'X';             -- set_10
			tse_mac_mac_status_connection_set_1000                     : in    std_logic                     := 'X';             -- set_1000
			tse_mac_mac_status_connection_eth_mode                     : out   std_logic;                                        -- eth_mode
			tse_mac_mac_status_connection_ena_10                       : out   std_logic;                                        -- ena_10
			tse_mac_pcs_mac_rx_clock_connection_clk                    : in    std_logic                     := 'X';             -- clk
			tse_mac_pcs_mac_tx_clock_connection_clk                    : in    std_logic                     := 'X';             -- clk
			oct_rzqin                                                  : in    std_logic                     := 'X';             -- rzqin
			memory_mem_ca                                              : out   std_logic_vector(9 downto 0);                     -- mem_ca
			memory_mem_ck                                              : out   std_logic_vector(0 downto 0);                     -- mem_ck
			memory_mem_ck_n                                            : out   std_logic_vector(0 downto 0);                     -- mem_ck_n
			memory_mem_cke                                             : out   std_logic_vector(0 downto 0);                     -- mem_cke
			memory_mem_cs_n                                            : out   std_logic_vector(0 downto 0);                     -- mem_cs_n
			memory_mem_dm                                              : out   std_logic_vector(3 downto 0);                     -- mem_dm
			memory_mem_dq                                              : inout std_logic_vector(31 downto 0) := (others => 'X'); -- mem_dq
			memory_mem_dqs                                             : inout std_logic_vector(3 downto 0)  := (others => 'X'); -- mem_dqs
			memory_mem_dqs_n                                           : inout std_logic_vector(3 downto 0)  := (others => 'X'); -- mem_dqs_n
			mem_if_lpddr2_emif_0_pll_sharing_pll_mem_clk               : out   std_logic;                                        -- pll_mem_clk
			mem_if_lpddr2_emif_0_pll_sharing_pll_write_clk             : out   std_logic;                                        -- pll_write_clk
			mem_if_lpddr2_emif_0_pll_sharing_pll_locked                : out   std_logic;                                        -- pll_locked
			mem_if_lpddr2_emif_0_pll_sharing_pll_write_clk_pre_phy_clk : out   std_logic;                                        -- pll_write_clk_pre_phy_clk
			mem_if_lpddr2_emif_0_pll_sharing_pll_addr_cmd_clk          : out   std_logic;                                        -- pll_addr_cmd_clk
			mem_if_lpddr2_emif_0_pll_sharing_pll_avl_clk               : out   std_logic;                                        -- pll_avl_clk
			mem_if_lpddr2_emif_0_pll_sharing_pll_config_clk            : out   std_logic;                                        -- pll_config_clk
			mem_if_lpddr2_emif_0_pll_sharing_pll_mem_phy_clk           : out   std_logic;                                        -- pll_mem_phy_clk
			mem_if_lpddr2_emif_0_pll_sharing_afi_phy_clk               : out   std_logic;                                        -- afi_phy_clk
			mem_if_lpddr2_emif_0_pll_sharing_pll_avl_phy_clk           : out   std_logic;                                        -- pll_avl_phy_clk
			mem_if_lpddr2_emif_0_status_local_init_done                : out   std_logic;                                        -- local_init_done
			mem_if_lpddr2_emif_0_status_local_cal_success              : out   std_logic;                                        -- local_cal_success
			mem_if_lpddr2_emif_0_status_local_cal_fail                 : out   std_logic                                         -- local_cal_fail
		);
	end component Nios_CPU_qsys;

	u0 : component Nios_CPU_qsys
		port map (
			clk_clk                                                    => CONNECTED_TO_clk_clk,                                                    --                                 clk.clk
			merged_resets_in_reset_reset_n                             => CONNECTED_TO_merged_resets_in_reset_reset_n,                             --              merged_resets_in_reset.reset_n
			tse_mac_mac_gmii_connection_gmii_rx_d                      => CONNECTED_TO_tse_mac_mac_gmii_connection_gmii_rx_d,                      --         tse_mac_mac_gmii_connection.gmii_rx_d
			tse_mac_mac_gmii_connection_gmii_rx_dv                     => CONNECTED_TO_tse_mac_mac_gmii_connection_gmii_rx_dv,                     --                                    .gmii_rx_dv
			tse_mac_mac_gmii_connection_gmii_rx_err                    => CONNECTED_TO_tse_mac_mac_gmii_connection_gmii_rx_err,                    --                                    .gmii_rx_err
			tse_mac_mac_gmii_connection_gmii_tx_d                      => CONNECTED_TO_tse_mac_mac_gmii_connection_gmii_tx_d,                      --                                    .gmii_tx_d
			tse_mac_mac_gmii_connection_gmii_tx_en                     => CONNECTED_TO_tse_mac_mac_gmii_connection_gmii_tx_en,                     --                                    .gmii_tx_en
			tse_mac_mac_gmii_connection_gmii_tx_err                    => CONNECTED_TO_tse_mac_mac_gmii_connection_gmii_tx_err,                    --                                    .gmii_tx_err
			tse_mac_mac_mdio_connection_mdc                            => CONNECTED_TO_tse_mac_mac_mdio_connection_mdc,                            --         tse_mac_mac_mdio_connection.mdc
			tse_mac_mac_mdio_connection_mdio_in                        => CONNECTED_TO_tse_mac_mac_mdio_connection_mdio_in,                        --                                    .mdio_in
			tse_mac_mac_mdio_connection_mdio_out                       => CONNECTED_TO_tse_mac_mac_mdio_connection_mdio_out,                       --                                    .mdio_out
			tse_mac_mac_mdio_connection_mdio_oen                       => CONNECTED_TO_tse_mac_mac_mdio_connection_mdio_oen,                       --                                    .mdio_oen
			tse_mac_mac_mii_connection_mii_rx_d                        => CONNECTED_TO_tse_mac_mac_mii_connection_mii_rx_d,                        --          tse_mac_mac_mii_connection.mii_rx_d
			tse_mac_mac_mii_connection_mii_rx_dv                       => CONNECTED_TO_tse_mac_mac_mii_connection_mii_rx_dv,                       --                                    .mii_rx_dv
			tse_mac_mac_mii_connection_mii_rx_err                      => CONNECTED_TO_tse_mac_mac_mii_connection_mii_rx_err,                      --                                    .mii_rx_err
			tse_mac_mac_mii_connection_mii_tx_d                        => CONNECTED_TO_tse_mac_mac_mii_connection_mii_tx_d,                        --                                    .mii_tx_d
			tse_mac_mac_mii_connection_mii_tx_en                       => CONNECTED_TO_tse_mac_mac_mii_connection_mii_tx_en,                       --                                    .mii_tx_en
			tse_mac_mac_mii_connection_mii_tx_err                      => CONNECTED_TO_tse_mac_mac_mii_connection_mii_tx_err,                      --                                    .mii_tx_err
			tse_mac_mac_mii_connection_mii_crs                         => CONNECTED_TO_tse_mac_mac_mii_connection_mii_crs,                         --                                    .mii_crs
			tse_mac_mac_mii_connection_mii_col                         => CONNECTED_TO_tse_mac_mac_mii_connection_mii_col,                         --                                    .mii_col
			tse_mac_mac_misc_connection_xon_gen                        => CONNECTED_TO_tse_mac_mac_misc_connection_xon_gen,                        --         tse_mac_mac_misc_connection.xon_gen
			tse_mac_mac_misc_connection_xoff_gen                       => CONNECTED_TO_tse_mac_mac_misc_connection_xoff_gen,                       --                                    .xoff_gen
			tse_mac_mac_misc_connection_ff_tx_crc_fwd                  => CONNECTED_TO_tse_mac_mac_misc_connection_ff_tx_crc_fwd,                  --                                    .ff_tx_crc_fwd
			tse_mac_mac_misc_connection_ff_tx_septy                    => CONNECTED_TO_tse_mac_mac_misc_connection_ff_tx_septy,                    --                                    .ff_tx_septy
			tse_mac_mac_misc_connection_tx_ff_uflow                    => CONNECTED_TO_tse_mac_mac_misc_connection_tx_ff_uflow,                    --                                    .tx_ff_uflow
			tse_mac_mac_misc_connection_ff_tx_a_full                   => CONNECTED_TO_tse_mac_mac_misc_connection_ff_tx_a_full,                   --                                    .ff_tx_a_full
			tse_mac_mac_misc_connection_ff_tx_a_empty                  => CONNECTED_TO_tse_mac_mac_misc_connection_ff_tx_a_empty,                  --                                    .ff_tx_a_empty
			tse_mac_mac_misc_connection_rx_err_stat                    => CONNECTED_TO_tse_mac_mac_misc_connection_rx_err_stat,                    --                                    .rx_err_stat
			tse_mac_mac_misc_connection_rx_frm_type                    => CONNECTED_TO_tse_mac_mac_misc_connection_rx_frm_type,                    --                                    .rx_frm_type
			tse_mac_mac_misc_connection_ff_rx_dsav                     => CONNECTED_TO_tse_mac_mac_misc_connection_ff_rx_dsav,                     --                                    .ff_rx_dsav
			tse_mac_mac_misc_connection_ff_rx_a_full                   => CONNECTED_TO_tse_mac_mac_misc_connection_ff_rx_a_full,                   --                                    .ff_rx_a_full
			tse_mac_mac_misc_connection_ff_rx_a_empty                  => CONNECTED_TO_tse_mac_mac_misc_connection_ff_rx_a_empty,                  --                                    .ff_rx_a_empty
			tse_mac_mac_status_connection_set_10                       => CONNECTED_TO_tse_mac_mac_status_connection_set_10,                       --       tse_mac_mac_status_connection.set_10
			tse_mac_mac_status_connection_set_1000                     => CONNECTED_TO_tse_mac_mac_status_connection_set_1000,                     --                                    .set_1000
			tse_mac_mac_status_connection_eth_mode                     => CONNECTED_TO_tse_mac_mac_status_connection_eth_mode,                     --                                    .eth_mode
			tse_mac_mac_status_connection_ena_10                       => CONNECTED_TO_tse_mac_mac_status_connection_ena_10,                       --                                    .ena_10
			tse_mac_pcs_mac_rx_clock_connection_clk                    => CONNECTED_TO_tse_mac_pcs_mac_rx_clock_connection_clk,                    -- tse_mac_pcs_mac_rx_clock_connection.clk
			tse_mac_pcs_mac_tx_clock_connection_clk                    => CONNECTED_TO_tse_mac_pcs_mac_tx_clock_connection_clk,                    -- tse_mac_pcs_mac_tx_clock_connection.clk
			oct_rzqin                                                  => CONNECTED_TO_oct_rzqin,                                                  --                                 oct.rzqin
			memory_mem_ca                                              => CONNECTED_TO_memory_mem_ca,                                              --                              memory.mem_ca
			memory_mem_ck                                              => CONNECTED_TO_memory_mem_ck,                                              --                                    .mem_ck
			memory_mem_ck_n                                            => CONNECTED_TO_memory_mem_ck_n,                                            --                                    .mem_ck_n
			memory_mem_cke                                             => CONNECTED_TO_memory_mem_cke,                                             --                                    .mem_cke
			memory_mem_cs_n                                            => CONNECTED_TO_memory_mem_cs_n,                                            --                                    .mem_cs_n
			memory_mem_dm                                              => CONNECTED_TO_memory_mem_dm,                                              --                                    .mem_dm
			memory_mem_dq                                              => CONNECTED_TO_memory_mem_dq,                                              --                                    .mem_dq
			memory_mem_dqs                                             => CONNECTED_TO_memory_mem_dqs,                                             --                                    .mem_dqs
			memory_mem_dqs_n                                           => CONNECTED_TO_memory_mem_dqs_n,                                           --                                    .mem_dqs_n
			mem_if_lpddr2_emif_0_pll_sharing_pll_mem_clk               => CONNECTED_TO_mem_if_lpddr2_emif_0_pll_sharing_pll_mem_clk,               --    mem_if_lpddr2_emif_0_pll_sharing.pll_mem_clk
			mem_if_lpddr2_emif_0_pll_sharing_pll_write_clk             => CONNECTED_TO_mem_if_lpddr2_emif_0_pll_sharing_pll_write_clk,             --                                    .pll_write_clk
			mem_if_lpddr2_emif_0_pll_sharing_pll_locked                => CONNECTED_TO_mem_if_lpddr2_emif_0_pll_sharing_pll_locked,                --                                    .pll_locked
			mem_if_lpddr2_emif_0_pll_sharing_pll_write_clk_pre_phy_clk => CONNECTED_TO_mem_if_lpddr2_emif_0_pll_sharing_pll_write_clk_pre_phy_clk, --                                    .pll_write_clk_pre_phy_clk
			mem_if_lpddr2_emif_0_pll_sharing_pll_addr_cmd_clk          => CONNECTED_TO_mem_if_lpddr2_emif_0_pll_sharing_pll_addr_cmd_clk,          --                                    .pll_addr_cmd_clk
			mem_if_lpddr2_emif_0_pll_sharing_pll_avl_clk               => CONNECTED_TO_mem_if_lpddr2_emif_0_pll_sharing_pll_avl_clk,               --                                    .pll_avl_clk
			mem_if_lpddr2_emif_0_pll_sharing_pll_config_clk            => CONNECTED_TO_mem_if_lpddr2_emif_0_pll_sharing_pll_config_clk,            --                                    .pll_config_clk
			mem_if_lpddr2_emif_0_pll_sharing_pll_mem_phy_clk           => CONNECTED_TO_mem_if_lpddr2_emif_0_pll_sharing_pll_mem_phy_clk,           --                                    .pll_mem_phy_clk
			mem_if_lpddr2_emif_0_pll_sharing_afi_phy_clk               => CONNECTED_TO_mem_if_lpddr2_emif_0_pll_sharing_afi_phy_clk,               --                                    .afi_phy_clk
			mem_if_lpddr2_emif_0_pll_sharing_pll_avl_phy_clk           => CONNECTED_TO_mem_if_lpddr2_emif_0_pll_sharing_pll_avl_phy_clk,           --                                    .pll_avl_phy_clk
			mem_if_lpddr2_emif_0_status_local_init_done                => CONNECTED_TO_mem_if_lpddr2_emif_0_status_local_init_done,                --         mem_if_lpddr2_emif_0_status.local_init_done
			mem_if_lpddr2_emif_0_status_local_cal_success              => CONNECTED_TO_mem_if_lpddr2_emif_0_status_local_cal_success,              --                                    .local_cal_success
			mem_if_lpddr2_emif_0_status_local_cal_fail                 => CONNECTED_TO_mem_if_lpddr2_emif_0_status_local_cal_fail                  --                                    .local_cal_fail
		);

