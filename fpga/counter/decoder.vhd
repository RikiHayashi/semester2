library ieee;
use ieee.std_logic_1164.all;

entity DECODER is
    port (
        A : in std_logic_vector(3 downto 0);
        B : out std_logic_vector(6 downto 0) );
end DECODER;

architecture RTL of DECODER is

signal w0 : std_logic_vector(6 downto 0);

begin
    process(A) begin
        case A is
            when "0000" => w0 <= "0111111"; --0
            when "0001" => w0 <= "0000110"; --1
            when "0010" => w0 <= "1011011"; --2
            when "0011" => w0 <= "1001111"; --3
            when "0100" => w0 <= "1100110"; --4
            when "0101" => w0 <= "1101101"; --5
            when "0110" => w0 <= "1111101"; --6
            when "0111" => w0 <= "0100111"; --7
            when "1000" => w0 <= "1111111"; --8
            when "1001" => w0 <= "1101111"; --9
            when others => w0 <= "1111001"; --E
        end case;
    end process;

    B <= not(w0);
end RTL;


