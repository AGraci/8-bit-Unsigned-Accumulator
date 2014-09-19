-- Angie Graci
-- Accumulator (unsigned)
--   1-bit FF

Library ieee;
use ieee.std_logic_1164.all;

Entity FF1 is
  PORT ( D:   IN  STD_LOGIC;
         CLK: IN  STD_LOGIC;
         RST: IN  STD_LOGIC;
         Q:   OUT STD_LOGIC );
END FF1;

ARCHITECTURE Structure OF FF1 IS
BEGIN
  PROCESS(CLK)
  BEGIN	
    If  RST = '0' THEN
      Q <= '0';
    ELSIF CLK'event and CLK = '1' THEN
      Q <= D;
    END IF;
  END PROCESS;
END Structure;
