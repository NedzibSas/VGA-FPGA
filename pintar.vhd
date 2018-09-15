----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:14:36 04/22/2015 
-- Design Name: 
-- Module Name:    pintar - Behavioral 
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
entity pintar is
    Port ( clk,reset,blank : in  STD_LOGIC;
			  numero : in STD_LOGIC_VECTOR (3 downto 0);
           R,G : out  STD_LOGIC_VECTOR (2 downto 0);
           B : out  STD_LOGIC_VECTOR (1 downto 0);
			  bder,bizq : in STD_LOGIC;
           hcount,vcount : in  STD_LOGIC_VECTOR (10 downto 0));
end pintar;

architecture Behavioral of pintar is
signal contador : STD_LOGIC_VECTOR (24 downto 0) :=B"0000000000000000000000000";
signal contador1 : STD_LOGIC_VECTOR (24 downto 0) :=B"0000000000000000000000000";
signal contador2 : STD_LOGIC_VECTOR (24 downto 0) :=B"0000000000000000000000000";
signal contador3 : STD_LOGIC_VECTOR (24 downto 0) :=B"0000000000000000000000000";
signal a:         STD_LOGIC_VECTOR (15 downto 0) :=B"0000000100101100";
signal be:         STD_LOGIC_VECTOR (15 downto 0) :=B"0000000101011110";
signal ce:         STD_LOGIC_VECTOR (15 downto 0) :=B"0000000101011110";
signal xe:         STD_LOGIC_VECTOR (15 downto 0) :=B"0000000101011110";
signal ye:         STD_LOGIC_VECTOR (15 downto 0) :=B"0000000101011110";
signal x2:         STD_LOGIC_VECTOR (15 downto 0) :=B"0000000101011110";
signal y2:         STD_LOGIC_VECTOR (15 downto 0) :=B"0000000101011110";
signal sin1 : STD_LOGIC:='1';
signal sin : STD_LOGIC;
signal sin3 : STD_LOGIC:='1';
signal sin2 : STD_LOGIC;
----Cuadros
signal cua1 : STD_LOGIC:='1';
signal cua2 : STD_LOGIC:='1';
signal cua3 : STD_LOGIC:='1';

begin
process(clk,reset)
begin 
if reset = '1' then 
	R <= (others => '0');
	G <= (others => '0');
	B <= (others => '0');
elsif rising_edge(clk) then 
		if blank = '0' then 
		contador <= contador+1;
            if contador<=x"1" then
					 --Marco
					if ((hcount > 10) and (hcount < 20)) or
					   ((vcount > 0) and (vcount < 20)) or
						((hcount > 620) and (hcount < 630)) or
						((vcount > 460) and (vcount < 480))
		         	then
							R <= "101";
							G <= "000";
							B <= "11";
							else
							R <= "000";
							G <= "000";
							B <= "00";
	          	end if; 
				 end if;	
				
           if contador>x"1" and contador<=x"2" then			
				--Pala
						if ((hcount > a) and (hcount < be))  and 
							((vcount > 440) and (vcount < 450)) then
							R <= "001";
							G <= "111";
							B <= "10";
						else
							R <= "000";
							G <= "000";
							B <= "00";
						end if;
				end if;
			   
			   if contador>x"2" and contador<=x"3" then
			   --Bola
				if ((hcount > xe) and (hcount < x2))  and 
							((vcount > ye) and (vcount < y2)) then
							R <= "111";
							G <= "111";
							B <= "11";
						else
							R <= "000";
							G <= "000";
							B <= "00";
						end if;
				end if;
			  
			   if contador>x"3" and contador<=x"4" then
			   --Cuadro
				if ((hcount > 300) and (hcount < 350))  and 
							((vcount > 50) and (vcount < 70)) and cua1='1' then
							R <= "000";
							G <= "111";
							B <= "00";
						else
							R <= "000";
							G <= "000";
							B <= "00";
						end if;
				end if;
			  ----
			  if contador>x"4" and contador<=x"5" then
			   --Cuadro2
				if ((hcount > 250) and (hcount < 300))  and 
							((vcount > 50) and (vcount < 70)) and cua2='1' then
							R <= "001";
							G <= "100";
							B <= "11";
						else
							R <= "000";
							G <= "000";
							B <= "00";
						end if;
				end if;
			  ----
			  if contador>x"5" and contador<=x"6" then
			   --Cuadro3
				if ((hcount > 350) and (hcount < 400))  and 
							((vcount > 50) and (vcount < 70)) and cua3='1' then
							R <= "111";
							G <= "111";
							B <= "00";
						else
							R <= "000";
							G <= "000";
							B <= "00";
						end if;
				end if;
			  ----
			  if(contador>=x"6")then
			  contador<="0000000000000000000000000";
			  end if;
		end if;
end if;
end process;

process (bder,bizq,clk)
begin
if (clk' event and clk = '1') then
contador1<=contador1+1;
if(contador1>x"F4240" and contador1<x"F4245")then
if(bizq='1')then
a<=a-1;
end if;
if(bder='1')then
a<=a+1;
end if;
end if;
be<=a+B"0000000000110010";
if(a<=x"13")then
a<=B"0000000000010101";
end if;
if(a>=x"239")then
a<=B"0000001000111000";
end if;
if(contador1>=x"124F80")then
contador1<="0000000000000000000000000";
end if;
end if;
end process;

process(clk)
begin
if (clk' event and clk = '1') then
contador2<=contador2+1;
if(contador2>x"F4240" and contador2<x"F4245")then

if(xe>x"13" and sin1='1')then
xe<=xe-1;
end if;
if(xe<x"262" and sin='1')then
xe<=xe+1;
end if;
x2<=xe+10;
end if;
if(xe=x"13")then
sin1<='0';
sin<='1';
end if;
if(xe=x"262")then
sin1<='1';
sin<='0';
end if;

if(contador2>=x"124F80")then
contador2<="0000000000000000000000000";
end if;

contador3<=contador3+1;
if(contador3>x"F4240" and contador3<x"F4245")then
if(ye>x"13" and sin2='1')then
ye<=ye-1;
end if;
if(ye<x"1C2" and sin3='1')then
ye<=ye+1;
end if;
y2<=ye+10;
end if;
if(ye=x"13")then
sin2<='0';
sin3<='1';
end if;
if(ye=x"1C2")then
sin2<='1';
sin3<='0';
end if;
if(ye=x"1AE" and xe<be and xe>a)then
sin2<='1';
sin3<='0';
end if;

if(ye=x"1C2")then
xe<="0000000101011110";
ye<="0000000101011110";
cua1<='1';
cua2<='1';
cua3<='1';
end if;

---Cuadro1
if(cua1='1') then
if((xe>x"122" and xe<x"168") and (ye>x"32" and ye<x"46"))then
cua1<='0';
sin<=not sin;
sin1<=not sin1;
sin2<=not sin2;
sin3<=not sin3;
end if;
end if;
---Cuadro2
if(cua2='1') then
if((xe>x"F0" and xe<x"136") and (ye>x"32" and ye<x"46"))then
cua2<='0';
sin<=not sin;
sin1<=not sin1;
sin2<=not sin2;
sin3<=not sin3;
end if;
end if;
---Cuadro3
if(cua3='1') then
if((xe>x"154" and xe<x"19A") and (ye>x"32" and ye<x"46"))then
cua3<='0';
sin<=not sin;
sin1<=not sin1;
sin2<=not sin2;
sin3<=not sin3;
end if;
end if;

if(contador3>=x"124F80")then
contador3<="0000000000000000000000000";
end if;
end if;
end process;

end Behavioral;

