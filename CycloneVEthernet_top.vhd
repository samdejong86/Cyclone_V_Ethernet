library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Cyclone_V_Ethernet_top is
  port(
  
	clk_50 : in std_logic;
	clk_125 : in std_logic;
	
	cpu_resetn : in std_logic;
  
	phy_reset_n  : out std_logic;
	phy_mdc : out std_logic;
	phy_tx_en : out std_logic
  
   phy_tx_d : out std_logic_vector(3 downto 0);
   phy_rx_d : in std_logic_vector(3 downto 0);
  
	phy_tx_clk  : in std_logic;
	phy_rx_clk  : in std_logic;
	phy_rx_dv  : in std_logic;
	phy_rx_err  : in std_logic;
	phy_col  : in std_logic;
	phy_crs  : in std_logic;
  
	phy_mdio : inout std_logic;
	
	ddr2_top_memory_mem_ca : out   std_logic_vector(9 downto 0);                     -- mem_ca
	ddr2_top_memory_mem_ck : out   std_logic_vector(0 downto 0);                     -- mem_ck
	ddr2_top_memory_mem_ck_n : out   std_logic_vector(0 downto 0);                     -- mem_ck_n
	ddr2_top_memory_mem_cke : out   std_logic_vector(0 downto 0);                     -- mem_cke
	ddr2_top_memory_mem_cs_n : out   std_logic_vector(0 downto 0);                     -- mem_cs_n
	ddr2_top_memory_mem_dm : out   std_logic_vector(3 downto 0);                     -- mem_dm
	ddr2_top_memory_mem_dq : inout std_logic_vector(31 downto 0) := (others =>
	ddr2_top_memory_mem_dqs : inout std_logic_vector(3 downto 0)  := (others =>
	ddr2_top_memory_mem_dqs_n : inout std_logic_vector(3 downto 0)  := (others =>
	ddr2_top_oct_rzqin : in    std_logic                     := 'X';             -- rzqin
 
	
  

  );
end Cyclone_V_Ethernet_top;


architecture rtl of Cyclone_V_Ethernet_top is

	signal eth_mdc : std_logic;
	signal eth_mdio_in : std_logic
	signal eth_mdio_out : std_logic;
	signal eth_mdio_oen : std_logic;
	
	signal eth_tx_clk : std_logic;
	signal eth_m_tx_d : std_logic_vector(3 downto 0);
	signal eth_m_tx_en : std_logic;

	signal eth_rx_clk : std_logic;
	signal eth_m_rx_d : std_logic_vector(3 downto 0);
	signal eth_m_rx_en : std_logic;

	signal eth_m_rx_err : std_logic;
	signal eth_m_rx_col : std_logic;
	signal eth_m_rx_crs : std_logic;
	
	signal led_pio : std_logic_vector(7 downto 0);
	signal button_pio : std_logic_vector(2 downto 0);
	

    component eth_std_main_system is
        port (
            clk_50_clk_in_clk                           : in    std_logic                     := 'X';             -- clk
            clk_50_clk_in_reset_reset_n                 : in    std_logic                     := 'X';             -- reset_n
            enet_pll_reset_reset                        : in    std_logic                     := 'X';             -- reset
            enet_pll_clk125_clk                         : out   std_logic;                                        -- clk
            enet_pll_clk25_clk                          : out   std_logic;                                        -- clk
            enet_pll_locked_export                      : out   std_logic;                                        -- export
            enet_pll_clk2_5_clk                         : out   std_logic;                                        -- clk
            button_pio_external_connection_export       : in    std_logic_vector(2 downto 0)  := (others =>
            led_pio_external_connection_export          : out   std_logic_vector(7 downto 0);                     -- export
            emac_gmii_connection_gmii_rx_d              : in    std_logic_vector(7 downto 0)  := (others =>
            emac_gmii_connection_gmii_rx_dv             : in    std_logic                     := 'X';             -- gmii_rx_dv
            emac_gmii_connection_gmii_rx_err            : in    std_logic                     := 'X';             -- gmii_rx_err
            emac_gmii_connection_gmii_tx_d              : out   std_logic_vector(7 downto 0);                     -- gmii_tx_d
            emac_gmii_connection_gmii_tx_en             : out   std_logic;                                        -- gmii_tx_en
            emac_gmii_connection_gmii_tx_err            : out   std_logic;                                        -- gmii_tx_err
            emac_mdio_connection_mdc                    : out   std_logic;                                        -- mdc
            emac_mdio_connection_mdio_in                : in    std_logic                     := 'X';             -- mdio_in
            emac_mdio_connection_mdio_out               : out   std_logic;                                        -- mdio_out
            emac_mdio_connection_mdio_oen               : out   std_logic;                                        -- mdio_oen
            emac_mii_connection_mii_rx_d                : in    std_logic_vector(3 downto 0)  := (others =>
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
            ddr2_top_memory_mem_ca                      : out   std_logic_vector(9 downto 0);                     -- mem_ca
            ddr2_top_memory_mem_ck                      : out   std_logic_vector(0 downto 0);                     -- mem_ck
            ddr2_top_memory_mem_ck_n                    : out   std_logic_vector(0 downto 0);                     -- mem_ck_n
            ddr2_top_memory_mem_cke                     : out   std_logic_vector(0 downto 0);                     -- mem_cke
            ddr2_top_memory_mem_cs_n                    : out   std_logic_vector(0 downto 0);                     -- mem_cs_n
            ddr2_top_memory_mem_dm                      : out   std_logic_vector(3 downto 0);                     -- mem_dm
            ddr2_top_memory_mem_dq                      : inout std_logic_vector(31 downto 0) := (others =>
            ddr2_top_memory_mem_dqs                     : inout std_logic_vector(3 downto 0)  := (others =>
            ddr2_top_memory_mem_dqs_n                   : inout std_logic_vector(3 downto 0)  := (others =>
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



	--signal tx_clk_to_the_tse_mac : std_logic;
	signal enet_clk_2p5 : std_logic;

begin

	ddio_inst : ddio PORT MAP (
		aclr     => not cpu_resetn,
		datain_h         => '1',
		datain_l         => '0',
		outclock         => eth_tx_clk,
		dataout  => phy_tx_clk
	);

 eth_tx_clk	<= enet_clk_2p5;
	

 phy_mdc      <= eth_mdc;
 eth_mdio_in  <= phy_mdio; 
 phy_mdio <= eth_mdio_out when eth_mdio_oen = '0' else 'Z'; 
 
 --eth_tx_clk   <= phy_tx_clk;
 phy_tx_d   <= eth_m_tx_d;
 phy_tx_en  <= eth_m_tx_en;
 
 eth_rx_clk   <= phy_rx_clk;
 eth_m_rx_d   <= phy_rx_d;
 eth_m_rx_en  <= phy_rx_dv;
 
 eth_m_rx_err <= phy_rx_err;
 eth_m_rx_col <= phy_col;
 eth_m_rx_crs <= phy_crs;

 
     u0 : component eth_std_main_system
        port map (
            clk_50_clk_in_clk                           => clk_50,
            clk_50_clk_in_reset_reset_n                 => cpu_resetn
								
            clk_125_clk_in_clk                          => clk_125,
            clk_125_clk_in_reset_reset_n                => cpu_resetn
				
            enet_pll_reset_reset                        => not cpu_resetn,
            --enet_pll_clk125_clk                         =>
            --enet_pll_clk25_clk                          =>
            --enet_pll_locked_export                      =>
            enet_pll_clk2_5_clk                         => enet_clk_2p5,
				
            button_pio_external_connection_export       => button_pio,
            led_pio_external_connection_export          => led_pio,
				
            emac_gmii_connection_gmii_rx_d              => "00000000",
            emac_gmii_connection_gmii_rx_dv             => '0',
            emac_gmii_connection_gmii_rx_err            => '0',
            --emac_gmii_connection_gmii_tx_d              =>
            --emac_gmii_connection_gmii_tx_en             =>
            --emac_gmii_connection_gmii_tx_err            =>
				
            emac_mdio_connection_mdc                    => eth_mdc,
            emac_mdio_connection_mdio_in                => eth_mdio_in,
            emac_mdio_connection_mdio_out               => eth_mdio_out,
            emac_mdio_connection_mdio_oen               => eth_mdio_oen,
				
            emac_mii_connection_mii_rx_d                => eth_m_rx_d,
            emac_mii_connection_mii_rx_dv               => eth_m_rx_en,
            emac_mii_connection_mii_rx_err              => eth_m_rx_err,
            emac_mii_connection_mii_tx_d                => eth_m_tx_d,
            emac_mii_connection_mii_tx_en               => eth_m_tx_en,
            emac_mii_connection_mii_tx_err              =>
            emac_mii_connection_mii_crs                 => eth_m_rx_crs,
            emac_mii_connection_mii_col                 => eth_m_rx_col,
				
            emac_status_connection_set_10               => '0',
            emac_status_connection_set_1000             => '0',
            --emac_status_connection_eth_mode             =>				
            --emac_status_connection_ena_10               =>
				
            emac_misc_connection_xon_gen                => '0',
            emac_misc_connection_xoff_gen               => '0',
				
            --emac_misc_connection_ff_tx_crc_fwd          => 
            --emac_misc_connection_ff_tx_septy            =>
            --emac_misc_connection_tx_ff_uflow            =>
            --emac_misc_connection_ff_tx_a_full           =>
            --emac_misc_connection_ff_tx_a_empty          =>
            --emac_misc_connection_rx_err_stat            =>
            --emac_misc_connection_rx_frm_type            =>
            --emac_misc_connection_ff_rx_dsav             =>
            --emac_misc_connection_ff_rx_a_full           =>
            --emac_misc_connection_ff_rx_a_empty          =>
				
            emac_rx_clock_clk                           => phy_rx_clk,
            emac_tx_clock_clk                           => enet_clk_25,
								
            ddr2_top_memory_mem_ca                      => ddr2_top_memory_mem_ca,
            ddr2_top_memory_mem_ck                      => ddr2_top_memory_mem_ck,
            ddr2_top_memory_mem_ck_n                    => ddr2_top_memory_mem_ck_n,
            ddr2_top_memory_mem_cke                     => ddr2_top_memory_mem_cke,
            ddr2_top_memory_mem_cs_n                    => ddr2_top_memory_mem_cs_n,
            ddr2_top_memory_mem_dm                      => ddr2_top_memory_mem_dm,
            ddr2_top_memory_mem_dq                      => ddr2_top_memory_mem_dq,
            ddr2_top_memory_mem_dqs                     => ddr2_top_memory_mem_dqs,
            ddr2_top_memory_mem_dqs_n                   => ddr2_top_memory_mem_dqs_n,
            ddr2_top_oct_rzqin                          => ddr2_top_oct_rzqin
				
            --ddr2_top_status_local_init_done             =>
            --ddr2_top_status_local_cal_success           =>
            --ddr2_top_status_local_cal_fail              =>
				
            --sdram_pll_sharing_pll_mem_clk               =>
            --sdram_pll_sharing_pll_write_clk             =>
            --sdram_pll_sharing_pll_locked                =>
            --sdram_pll_sharing_pll_write_clk_pre_phy_clk =>
            --sdram_pll_sharing_pll_addr_cmd_clk          =>
            --sdram_pll_sharing_pll_avl_clk               =>
            --sdram_pll_sharing_pll_config_clk            =>
            --sdram_pll_sharing_pll_mem_phy_clk           =>
            --sdram_pll_sharing_afi_phy_clk               =>
            --sdram_pll_sharing_pll_avl_phy_clk           =>
        );

 

end rtl;

