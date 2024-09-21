LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY sseg2 IS
    PORT (negative : IN STD_LOGIC;
            bcd : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
            leds, negativeSign: OUT STD_LOGIC_VECTOR(0 TO 6));
END sseg2;

ARCHITECTURE Behavior OF sseg2 IS
BEGIN
    PROCESS (bcd)
    BEGIN
        if negative = '1' then
            negativeSign <= "0000001";
			else 
				negativeSign <="0000000";
				
             END IF;
        CASE bcd IS -- abcdefg
            WHEN "0000" => leds <= NOT"0000001";
            WHEN "0001" => leds <= NOT"1001111";
            WHEN "0010" => leds <= NOT"0010010";
            WHEN "0011" => leds <= NOT"0000110";
            WHEN "0100" => leds <= NOT"1001100";
            WHEN "0101" => leds <= NOT"0100100";
            WHEN "0110" => leds <= NOT"0100000";
            WHEN "0111" => leds <= NOT"0001111";
            WHEN "1000" => leds <= NOT"0000000";
            WHEN "1001" => leds <= NOT"0001100";
            WHEN "1010" => leds <= NOT"0001000";
            WHEN "1011" => leds <= NOT"1100000";
            WHEN "1100" => leds <= NOT"1110010";
            WHEN "1101" => leds <= NOT"1000010";
            WHEN "1110" => leds <= NOT"0110000";
            WHEN "1111" => leds <= NOT"0111000";
            WHEN OTHERS => leds <= "-------";
        END CASE;
    END PROCESS;
END Behavior;

