library ieee;
use ieee.std_logic_1164.all;

entity LEDDEC is
    port (
        DATA : in std_logic_vector(3 downto 0);
        TAR  : in std_logic_vector(3 downto 0);
        LED_1: out std_logic_vector(6 downto 0) );
        LED_2: out std_logic_vector(6 downto 0) );
        LED_3: out std_logic_vector(6 downto 0) );
        LED_4: out std_logic_vector(6 downto 0) );
        LED_5: out std_logic_vector(6 downto 0) );
        LED_6: out std_logic_vector(6 downto 0) );
end LEDDEC;

architecture RTL of LEDDEC is

signal w1 : std_logic_vector(6 downto 0);
signal w2 : std_logic_vector(6 downto 0);
signal w3 : std_logic_vector(6 downto 0);
signal w4 : std_logic_vector(6 downto 0);
signal w5 : std_logic_vector(6 downto 0);
signal w6 : std_logic_vector(6 downto 0);

begin
    process ( DATA, TAR ) begin
        w1 <= "0000000";
        w2 <= "0000000";
        w3 <= "0000000";
        w4 <= "0000000";
        w5 <= "0000000";
        w6 <= "0000000";
        case DATA is            --6543210
            when "0000" => w1 <= "0100000"; --0
            when "0001" => w1 <= "0000001"; --1
            when "0010" => w2 <= "0000001"; --2
            when "0011" => w3 <= "0000001"; --3
            when "0100" => w4 <= "0000001"; --4
            when "0101" => w5 <= "0000001"; --5
            when "0110" => w6 <= "0000001"; --6
            when "0111" => w6 <= "0000010"; --7
            when "1000" => w6 <= "0000100"; --8
            when "1001" => w6 <= "0001000"; --9
            when "1010" => w5 <= "0001000"; --10
            when "1011" => w4 <= "0001000"; --11
            when "1100" => w3 <= "0001000"; --12
            when "1101" => w2 <= "0001000"; --13
            when "1110" => w1 <= "0001000"; --14
            when "1111" => w1 <= "0010000"; --15
            when others => w1, w2, w3, w4, w5, w6 <= "1000000"; --E
        end case;
        case TAR is            --6543210
            when "0000" => w1 <= "0100000"; --0
            when "0001" => w1 <= "0000001"; --1
            when "0010" => w2 <= "0000001"; --2
            when "0011" => w3 <= "0000001"; --3
            when "0100" => w4 <= "0000001"; --4
            when "0101" => w5 <= "0000001"; --5
            when "0110" => w6 <= "0000001"; --6
            when "0111" => w6 <= "0000010"; --7
            when "1000" => w6 <= "0000100"; --8
            when "1001" => w6 <= "0001000"; --9
            when "1010" => w5 <= "0001000"; --10
            when "1011" => w4 <= "0001000"; --11
            when "1100" => w3 <= "0001000"; --12
            when "1101" => w2 <= "0001000"; --13
            when "1110" => w1 <= "0001000"; --14
            when "1111" => w1 <= "0010000"; --15
            when others => w2, w3, w4, w5 <= "0110110"; --E
        end case;
    end process;

    LED_1 <= not(w1);
    LED_2 <= not(w2);
    LED_3 <= not(w3);
    LED_4 <= not(w4);
    LED_5 <= not(w5);
    LED_6 <= not(w6);
end RTL;
