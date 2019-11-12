library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity COUNT is
    port (
        CLK : in std_logic;
        RSTN: in std_logic;
        ENABLE: in std_logic;
        LCOUNT : out std_logic_vector(3 downto 0);
        HCOUNT : out std_logic_vector(3 downto 0)
    );
end COUNT;

architecture RTL of COUNT is    
	 signal ONE  : std_logic_vector(3 downto 0);
    signal TEN  : std_logic_vector(3 downto 0);
begin
process (CLK, RSTN) begin
    if(RSTN = '0') then
        ONE <= "0000";
        TEN <= "0000";
    elsif(CLK' event and CLK = '1') then
        if(ENABLE = '1') then
            ONE <= ONE + 1;
            if(ONE = "1001") then
                ONE <= "0000";
                TEN <= TEN + 1;
                if(TEN = "0110") then
                    TEN <= "0000";
                end if;
            end if;
			elsif(ENABLE = '0') then
			    ONE <= ONE;
				 TEN <= TEN;
        end if;
    end if;
end process;

LCOUNT <= ONE;
HCOUNT <= TEN;

end RTL;

