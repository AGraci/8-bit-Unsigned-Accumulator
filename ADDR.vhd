-- Angie Graci
-- Accumulator (unsigned)
--   8-bit Adder

Library ieee;
use ieee.std_logic_1164.all;

Entity ADDR is
  PORT ( AUGEND: IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
         ADDEND: IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
         SUM:    OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
         CARRY:  OUT STD_LOGIC);
END ADDR;       

ARCHITECTURE Structure OF ADDR IS
COMPONENT ADDR1
  PORT ( CIN: IN STD_LOGIC;
         X: IN  STD_LOGIC;
         Y: IN  STD_LOGIC;
         S: OUT STD_LOGIC;
         COUT: OUT STD_LOGIC);
END COMPONENT;

SIGNAL c0: STD_LOGIC;
SIGNAL c1: STD_LOGIC;
SIGNAL c2: STD_LOGIC;
SIGNAL c3: STD_LOGIC;
SIGNAL c4: STD_LOGIC;
SIGNAL c5: STD_LOGIC;
SIGNAL c6: STD_LOGIC;
SIGNAL c7: STD_LOGIC;
BEGIN
  c0 <= '0';
  A0: ADDR1 PORT MAP (c0, AUGEND(0), ADDEND(0), SUM(0), c1);
  A1: ADDR1 PORT MAP (c1, AUGEND(1), ADDEND(1), SUM(1), c2);
  A2: ADDR1 PORT MAP (c2, AUGEND(2), ADDEND(2), SUM(2), c3);
  A3: ADDR1 PORT MAP (c3, AUGEND(3), ADDEND(3), SUM(3), c4);
  A4: ADDR1 PORT MAP (c4, AUGEND(4), ADDEND(4), SUM(4), c5);
  A5: ADDR1 PORT MAP (c5, AUGEND(5), ADDEND(5), SUM(5), c6);
  A6: ADDR1 PORT MAP (c6, AUGEND(6), ADDEND(6), SUM(6), c7);
  A7: ADDR1 PORT MAP (c7, AUGEND(7), ADDEND(7), SUM(7), CARRY);
END Structure;
