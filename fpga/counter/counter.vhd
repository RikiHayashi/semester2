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
    signal TENABLE  : std_logic;
    signal TCOUNT   : std_logic_vector(7 downto 0);

    component CLKDOWN port (
        CLK     : in std_logic;
        RSTN    : in std_logic;
        STARTN  : in std_logic;
        STOPN   : in std_logic;
        ENABLE  : out std_logic );
    end component;

    component COUNT port (
        CLK : in std_logic;
        RSTN : in std_logic;
        ENABLE : in std_logic;
        LCOUNT : out std_logic_vector(3 downto 0);
        HCOUNT : out std_logic_vector(3 downto 0) );
    end component;

    component DECODER port (
        A : in std_logic_vector(3 downto 0);
        B : out std_logic_vector(6 downto 0) );
    end component;

    begin
        U1 : DECODER port map (
         A => HCOUNT, B =>LEDH);

        U2 : DECODER port map (
         A => LCOUNT, B =>LEDL);

        U3 : CLKDOWN port map (
         CLK => CLK, RSTN => RSTN, STARTN => STARTN, STOPN => STOPN, ENABLE => TENABLE);

        U4 : COUNT port map (
         CLK=>CLK, RSTN=>RSTN, ENABLE=>TENABLE, LCOUNT=>LCOUNT, HCOUNT=>HCOUNT);
end RTL;

end RTL;
