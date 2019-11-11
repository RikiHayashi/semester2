library ieee;
use ieee.std_logic_1164.all;

entity COUNTER is
    port (
        CLK     : in std_logic;
        RSTN    : in std_logic;
        STARTN  : in std_logic;
        STOPN   : in std_logic;
        LEDH    : out std_logic_vector(6 downto 0);
        LEDL    : out std_logic_vector(6 downto 0) );
end COUNTER;

architecture RTL COUNTER is
    signal TCOUNT   : std_logic_vector(7 downto 0);

    component CLKDOWN port (
        CLK : in std_logic;
        RSTN: in std_logic;
        ENABLE: out std_logic;
    end component;

end RTL;
