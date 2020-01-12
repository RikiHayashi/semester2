library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity ROLE is
    port (
        CLK : in std_logic;
        RSTN: in std_logic;
        ENABLE: in std_logic;
        TAR : in std_logic_vector(3 downto 0);
        NUM : out std_logic_vector(3 downto 0);
    );
end ROLE;

architecture RTL of ROLE is
    signal COUNT : std_logic_vector(3 downto 0);
begin
process (CLK, RSTN, TAR) begin
    if(RSTN = '0') then
        COUNT <= "0000";
    elsif(CLK' event and CLK = '1') then
        if(ENABLE = '1') then
            if(COUNT = "1111") then
                COUNT <= "0000";
            end if;
            COUNT <= COUNT + 1;
        elsif(ENABLE = '0') then
            COUNT <= COUNT;
        end if;
    end if;
end process;

NUM <= COUNT;

end RTL;
