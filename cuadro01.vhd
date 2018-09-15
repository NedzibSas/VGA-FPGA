----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:40:21 05/16/2015 
-- Design Name: 
-- Module Name:    cuadro01 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity cuadro01 is
    Port ( clk,reset,blank : in  STD_LOGIC;
           count_H,count_V : in  STD_LOGIC_VECTOR (10 downto 0);
           OutRed,OutGreen : out  STD_LOGIC_VECTOR (2 downto 0);
           OutBlue : out  STD_LOGIC_VECTOR (1 downto 0));
end cuadro01;


architecture Behavioral of cuadro01 is
begin
process(clk,reset)
begin
if reset = '1' then 
	 OutRed  <= (others => '0');
	 OutGreen <= (others => '0');
	 OutBlue <= (others => '0');
elsif rising_edge(clk) then 
	if blank = '0' then 
			if (count_H > 270 and  count_H < 370) and 
			   (count_V > 190 and  count_V < 290) then 
				OutRed  <= "111";
				OutGreen <= (others => '0');
				OutBlue <= (others => '0');
			else 
			    OutRed  <= (others => '0');
				 OutGreen <= (others => '0');
				 OutBlue <= (others => '0');
			end if;	 
	
	end if;	
end if;
end process;
end Behavioral;

