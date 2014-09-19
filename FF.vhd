-- Angie Graci
-- Accumulator (unsigned)
--   3-bit FF

Library ieee;
use ieee.std_logic_1164.all;

Entity FF is
  PORT (  D:   IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
          CLK: IN  STD_LOGIC;
          RST: IN  STD_LOGIC;
          Q:   OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END FF;

ARCHITECTURE Structure OF FF IS
BEGIN
  PROCESS(CLK, RST)
  BEGIN	
    If  RST = '0' THEN
      Q <= "00000000";
    ELSIF CLK'event and CLK = '1' THEN
      Q <= D;
    END IF;
  END PROCESS;
END Structure;
