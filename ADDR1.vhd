-- Angie Graci
-- Accumulator (unsigned)
--   1-bit Adder

Library ieee;   
use ieee.std_logic_1164.all;

Entity ADDR1 is
  PORT ( CIN:  IN  STD_LOGIC;
         X:    IN  STD_LOGIC;
         Y:    IN  STD_LOGIC;
         S:    OUT STD_LOGIC;
         COUT: OUT STD_LOGIC);
END ADDR1;

ARCHITECTURE Structure OF ADDR1 IS
BEGIN
  PROCESS(CIN, X, Y)
  BEGIN	
    IF     ( (X = '1') and (Y = '1') and (CIN = '1') ) THEN
      S    <= '1';
      COUT <= '1';
    ELSIF ( (X = '1') and (Y = '1') and (CIN = '0') ) THEN
      S    <= '0';
      COUT <= '1';
    ELSIF ( (X = '1') and (Y = '0') and (CIN = '1') ) THEN
      S    <= '0';
      COUT <= '1';
    ELSIF ( (X = '1') and (Y = '0') and (CIN = '0') ) THEN
      S    <= '1';
      COUT <= '0';
    ELSIF ( (X = '0') and (Y = '1') and (CIN = '1') ) THEN
      S    <= '0';
      COUT <= '1';
    ELSIF ( (X = '0') and (Y = '1') and (CIN = '0') ) THEN
      S    <= '1';
      COUT <= '0';
    ELSIF ( (X = '0') and (Y = '0') and (CIN = '1')) THEN
      S    <= '1';
      COUT <= '0';
    ELSE
      S    <= '0';
      COUT <= '0';
    END IF;
  END PROCESS;
END Structure;
