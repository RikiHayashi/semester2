library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity RAND is
    port (
        CLK     : in std_logic;
        SET    : in std_logic;
        TAR     : out std_logic_vector(3 downto 0) );
end RAND;

architecture RTL of RAND is
    signal NUM    : std_logic_vector(3 downto 0);
    constant MAXNUM : std_logic_Vector(3 downto 0)
                    := "1111";
    constant ZERONUM : std_logic_vector(3 downto 0)
                    := "0000";

begin
    process (CLK, SET) begin
        if(CLK' event and CLK = '1') then
            if(NUM = ZEROCOUNT) then
                NUM <= MAXCOUNT;
            else
                NUM <= NUM -1;
            end if;
            if(SET = '1') then
                TAR <= NUM;
            end if;
        end if;
    end process;
end RTL;
