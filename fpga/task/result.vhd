library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity RES is
    port (
        TAR : in std_logic_vector(3 downto 0);
        NUM : in std_logic_vector(3 downto 0);
        STOPN: in std_logic;
        STATE : out std_logic_vector(1 downto 0)
        );
end RES;

architecture RTL of RES is
    signal STATEN : std_logic_vector(3 downto 0)
                    :="00";
begin
    process (TAR, NUM) begin
        if(STATEN = "11") then
            STATEN <= "00";
        end if;
        if(STOPN = '1') then
            if(TAR = NUM) then
                STATEN <= STATEN +1;
            else
                STATEN <= "00";
            end if;
        end if;
    end process;
    STATE <= STATEN;
end RTL;

