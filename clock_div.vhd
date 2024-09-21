library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
entity clock_div is
port (
   clk_in: in std_logic; -- clock input on FPGA
   clk_out: out std_logic -- clock output
  );
end clock_div;

architecture Behavioral of clock_div is
signal divisor: std_logic_vector(27 downto 0):=(others =>'0');
begin
 process(clk_in)
 begin
 if(rising_edge(clk_in)) then
 divisor <= divisor + x"2FAF07F";

 if(divisor=x"17D7840") then
 clk_out <= '1';
 else
 clk_out <= '0';
 end if;
 end if;
 end process;
end Behavioral;
