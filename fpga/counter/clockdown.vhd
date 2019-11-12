library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_usigned.all;

entity CLKDOWN is
    port (
        CLK     : in std_logic;
        RSTN    : in std_logic;
        STARTN  : in std_logic;
        STOPN   : in std_logic;
        ENABLE  : out std_logic;
end CLKDOWN;

architecture RTL of CLKDOWN is
    signal COUNT    : std_logic_vector(25 downto 0);
    constant MAXCOUNT : std_logic_vector(25 downto 0)
                    := "10111110101111000010000000"; -- for 50MHz
--                    := "00000000000000000000000010"; -- for simulation
    constant ZEROCOUNT : std_logic_vector(25 downto 0)
                    := "00000000000000000000000000";
    signal FLAG     : std_logic;

begin 
    process (CLK, RSTN, STARTN, STOPN) begin
        if(STARTN='1') then FLAG <= '1';
        elsif(STOPN='1') then FLAG <= '0';
        else        FLAG <= '0';
        end if;

        if (RSTN='0') then
            COUNT <= MAXCOUNT;
            ENABLE <= '0';
            FLAG <= '0';
        elsif (CLK' event and CLK='1') then
            if (COUNT = ZEROCOUNT) then
                COUNT <= MAXCOUNT;
                ENABLE <= '1';
            else
                if(FLAG = '1') then
                    COUNT <= COUNT -1;
                end if;
                ENABLE <= '0';
            end if;
        end if;
    end process;
end RTL;

