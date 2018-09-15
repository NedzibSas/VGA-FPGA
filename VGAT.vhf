--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : VGAT.vhf
-- /___/   /\     Timestamp : 09/14/2018 23:17:08
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl /home/nedzib/Documentos/VHDL/VGA-FPGA/VGAT.vhf -w /home/nedzib/Documentos/VHDL/VGA-FPGA/VGAT.sch
--Design Name: VGAT
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity FTC_MXILINX_VGAT is
   generic( INIT : bit :=  '0');
   port ( C   : in    std_logic; 
          CLR : in    std_logic; 
          T   : in    std_logic; 
          Q   : out   std_logic);
end FTC_MXILINX_VGAT;

architecture BEHAVIORAL of FTC_MXILINX_VGAT is
   attribute BOX_TYPE   : string ;
   attribute RLOC       : string ;
   signal TQ      : std_logic;
   signal Q_DUMMY : std_logic;
   component XOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR2 : component is "BLACK_BOX";
   
   component FDC
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute BOX_TYPE of FDC : component is "BLACK_BOX";
   
   attribute RLOC of I_36_35 : label is "X0Y0";
begin
   Q <= Q_DUMMY;
   I_36_32 : XOR2
      port map (I0=>T,
                I1=>Q_DUMMY,
                O=>TQ);
   
   I_36_35 : FDC
   generic map( INIT => INIT)
      port map (C=>C,
                CLR=>CLR,
                D=>TQ,
                Q=>Q_DUMMY);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity VGAT is
   port ( bder   : in    std_logic; 
          bizq   : in    std_logic; 
          clk    : in    std_logic; 
          numero : in    std_logic_vector (3 downto 0); 
          reset  : in    std_logic; 
          B      : out   std_logic_vector (1 downto 0); 
          G      : out   std_logic_vector (2 downto 0); 
          HS     : out   std_logic; 
          R      : out   std_logic_vector (2 downto 0); 
          VS     : out   std_logic);
end VGAT;

architecture BEHAVIORAL of VGAT is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_3  : std_logic;
   signal XLXN_7  : std_logic;
   signal XLXN_11 : std_logic;
   signal XLXN_12 : std_logic_vector (10 downto 0);
   signal XLXN_13 : std_logic_vector (10 downto 0);
   component vga_controller_640_60
      port ( rst       : in    std_logic; 
             pixel_clk : in    std_logic; 
             HS        : out   std_logic; 
             VS        : out   std_logic; 
             blank     : out   std_logic; 
             hcount    : out   std_logic_vector (10 downto 0); 
             vcount    : out   std_logic_vector (10 downto 0));
   end component;
   
   component FTC_MXILINX_VGAT
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CLR : in    std_logic; 
             T   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component pintar
      port ( clk    : in    std_logic; 
             reset  : in    std_logic; 
             blank  : in    std_logic; 
             bder   : in    std_logic; 
             bizq   : in    std_logic; 
             numero : in    std_logic_vector (3 downto 0); 
             hcount : in    std_logic_vector (10 downto 0); 
             vcount : in    std_logic_vector (10 downto 0); 
             R      : out   std_logic_vector (2 downto 0); 
             G      : out   std_logic_vector (2 downto 0); 
             B      : out   std_logic_vector (1 downto 0));
   end component;
   
   attribute HU_SET of XLXI_5 : label is "XLXI_5_0";
begin
   XLXI_1 : vga_controller_640_60
      port map (pixel_clk=>XLXN_7,
                rst=>reset,
                blank=>XLXN_11,
                hcount(10 downto 0)=>XLXN_12(10 downto 0),
                HS=>HS,
                vcount(10 downto 0)=>XLXN_13(10 downto 0),
                VS=>VS);
   
   XLXI_5 : FTC_MXILINX_VGAT
      port map (C=>clk,
                CLR=>reset,
                T=>XLXN_3,
                Q=>XLXN_7);
   
   XLXI_6 : VCC
      port map (P=>XLXN_3);
   
   XLXI_7 : pintar
      port map (bder=>bder,
                bizq=>bizq,
                blank=>XLXN_11,
                clk=>clk,
                hcount(10 downto 0)=>XLXN_12(10 downto 0),
                numero(3 downto 0)=>numero(3 downto 0),
                reset=>reset,
                vcount(10 downto 0)=>XLXN_13(10 downto 0),
                B(1 downto 0)=>B(1 downto 0),
                G(2 downto 0)=>G(2 downto 0),
                R(2 downto 0)=>R(2 downto 0));
   
end BEHAVIORAL;


