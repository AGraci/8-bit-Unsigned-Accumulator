-- Angie Graci
-- Accumulator (unsigned)

Library ieee;
use ieee.std_logic_1164.all;

Entity Lab2Part1 is
	PORT ( SW:      IN STD_LOGIC_VECTOR(7 DOWNTO 0);
               KEY:	IN STD_LOGIC_VECTOR(1 DOWNTO 0);
               LEDR:    OUT STD_LOGIC_VECTOR(8 DOWNTO 0));
END Lab2Part1;

ARCHITECTURE Structure OF Lab2Part1 IS

-- flip flop component (8 bits) --
COMPONENT FF
  port ( D:   IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
         CLK: IN  STD_LOGIC;
         RST: IN  STD_LOGIC;
         Q:   OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
end component;

-- flip flop component (1 bit) --
COMPONENT FF1
  port ( D:   IN  STD_LOGIC;
         CLK: IN  STD_LOGIC;
         RST: IN  STD_LOGIC;
         Q:   OUT STD_LOGIC);
end component;

-- async adder component --
COMPONENT ADDR
  PORT ( AUGEND: IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
         ADDEND: IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
         SUM:    OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
         CARRY:  OUT STD_LOGIC);
END COMPONENT;

-- signals --
signal clock: std_logic;
signal reset: std_logic;
signal tmp0, tmp1, tmp2: std_LOGIC_VECTOR(7 downto 0); 
signal tmp3, tmp4: std_logic;

BEGIN
  clock <= (KEY(0));
  reset <= (KEY(1));

  C1: FF   PORT MAP (SW, clock, reset, tmp0);
  C2: ADDR PORT MAP (tmp0, tmp2, tmp1, tmp3);
  C3: FF   PORT MAP (tmp1, clock, reset, tmp2);
  C4: FF1  PORT MAP (tmp3, clock, reset, tmp4);
	
  LEDR <= (tmp4, tmp2(7), tmp2(6), tmp2(5), tmp2(4), tmp2(3), tmp2(2), tmp2(1), tmp2(0));
END Structure;
