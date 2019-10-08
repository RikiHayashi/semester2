library ieee;
use ieee.std_logic_1164.all;

entity HIGH3 is
    port (
        A : in std_logic_vector(2 downto 0);
        Y : out std_logic );
end HIGH3;

architecture RTL of HIGH3 is
begin
    process(A) begin
        if ( A = "000" )    then    Y <= '0';
        elsif( A = "001" )  then    Y <= '0';
        elsif( A = "010" )  then    Y <= '0';
        elsif( A = "011" )  then    Y <= '1';
        elsif( A = "100" )  then    Y <= '1';
        elsif( A = "101" )  then    Y <= '1';
        elsif( A = "110" )  then    Y <= '1';
        elsif( A = "111" )  then    Y <= '1';
        else	             Y <= 'X';
        end if;
    end process;
end RTL;
