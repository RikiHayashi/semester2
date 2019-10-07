library ieee;
use ieee.std_logic_1164.all;

entity KADAI1 is
    port (
        SWITCH : in std_logic_vector(2 downto 0 );
        LEDDSP : out std_logic_vector(6 downto 0 ) );
end KADAI1;

architecture RTL of KADAI1 is
    component HIGH3
        port (
            A : in std_logic_vector(2 downto 0);
            Y : out std_logic );
    end component;

    component DECODER
        port (
            A : in std_logic;
            B : out std_logic_vector(6 downto 0) );
    end component;

signal a, w0: std_logic;

begin
    a <= not(SWITCH);
    i0: HIGH3   port map (
            A=>a, Y=>w0 );

    d0: DECODER port map (
            A=>w0, B=>LEDDSP );
end RTL;



