----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:58:20 11/10/2022 
-- Design Name: 
-- Module Name:    alucode - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity alucode is
    Port ( inp1 : in  STD_LOGIC_VECTOR (23 downto 0);
           inp2 : in  STD_LOGIC_VECTOR (23 downto 0);
           ctr : in  STD_LOGIC_VECTOR (2 downto 0);
           zero : out  STD_LOGIC;
           result : out  STD_LOGIC_VECTOR (23 downto 0));
end alucode;
architecture Behavioral of alucode is
signal temp : STD_LOGIC_VECTOR (23 downto 0);

begin


with ctr select
temp <= inp1 + inp2 when "000",
			 inp1 - inp2 when "001",
			 inp1 and inp2 when "010",
			 inp1 or inp2 when "011",
			 inp1 nor inp2 when "100",
			 inp1 xor inp2 when "101",
			 inp1 + inp2 when others;
result <= temp;		 
with temp select
zero <= '1' when x"000000",-- for branch signal--
		  '0' when others; 
end Behavioral;

