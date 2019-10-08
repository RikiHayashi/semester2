library ieee;
use ieee.std_logic_1164.all;

entity DECODER is
    port (
        A : in std_logic;
        B : out std_logic_vector(6 downto 0) );
end DECODER;

architecture RTL of DECODER is

signal w0 : std_logic_vector(6 downto 0);

begin
    process(A) begin
        case A is
            when '0' => w0 <= "0111000";
            when '1' => w0 <= "1110110";
            when others => w0 <= "1111001";
        end case;
    end process;

    B <= not(w0);
end RTL;


