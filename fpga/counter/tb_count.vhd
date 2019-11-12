library ieee;
use ieee.std_logic_1164.all;

entity TBCOUNT is
end TBCOUNT;

architecture TESTBENCH of TBCOUNT is
    component COUNTER
        port (
            CLK     : in std_logic;
            RSTN    : in std_logic;
            STARTN  : in std_logic;
            STOPN   : in std_logic;
            LEDH    : out std_logic_vector(6 downto 0);
            LEDL    : out std_logic_vector(6 downto 0) );
    end component;
    
    signal TBCLK, TBRSTN, TBSTARTN, TBSTOPN : std_logic;
    signal TBLEDH, TBLEDL : std_logic_vector(6 downto 0);
begin
    U1 : COUNTER port map (
     CLK=>TBCLK, RSTN=>TBRSTN, STARTN=>TBSTARTN, STOPN=>TBSTOPN, LEDH=>TBLEDH, LEDL=>TBLEDL );

    process begin
        TBCLK <= '0'; wait for 50 ns;
        TBCLK <= '1'; wait for 50 ns;
    end process;

    process begin
        TBRSTN <= '0'; wait for 80 ns;
        TBRSTN <= '1'; wait;
    end process;

    process begin
        TBSTARTN <= '1'; TBSTOPN <= '1'; wait for 250 ns;
        TBSTARTN <= '0'; TBSTOPN <= '1'; wait for 500 ns;
        TBSTARTN <= '1'; TBSTOPN <= '1'; wait for 10000 ns;
        TBSTARTN <= '1'; TBSTOPN <= '0'; wait for 500 ns;
        TBSTARTN <= '1'; TBSTOPN <= '1'; wait;
    end process;
end TESTBENCH;
