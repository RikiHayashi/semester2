library ieee;
use ieee.std_logic_1164.all;

entity ROU is
    port (
        CLK     : in std_logic;
        RSTN    : in std_logic;
        STARTN  : in std_logic;
        STOPN   : in std_logic;
        LED_1   : out std_logic_vector(6 downto 0);
        LED_2   : out std_logic_vector(6 downto 0);
        LED_3   : out std_logic_vector(6 downto 0);
        LED_4   : out std_logic_vector(6 downto 0);
        LED_5   : out std_logic_vector(6 downto 0);
        LED_6   : out std_logic_vector(6 downto 0) );
end ROU;

architecture RTL of ROU is
    component CLKDOWN port (
        CLK     : in std_logic;
        RSTN    : in std_logic;
        STARTN  : in std_logic;
        STOPN   : in std_logic;
        STATE   : in std_logic_vector(1 downto 0);
        ENABLE  : out std_logic
        );
    end component;

    component RAND port (
        CLK     : in std_logic;
        SET     : in std_logic;
        TAR     : out std_logic_vector(3 downto 0)
        );
    end component;

    component RES port (
        TAR     : in std_logic_vector(3 downto 0);
        NUM     : in std_logic_vector(3 downto 0);
        STOPN   : in std_logic;
        STATE   : out std_logic_vector(1 downto 0)
        );
    end component;

    component ROLE port (
        CLK     : in std_logic;
        RSTN    : in std_logic;
        ENABLE  : in std_logic;
        TAR     : in std_logic_vector(3 downto 0);
        NUM     : out std_logic_vector(3 downto 0)
        );
    end component;

    component LEDDEC port (
        DATA : in std_logic_vector(3 downto 0);
        TAR  : in std_logic_vector(3 downto 0);
        LED_1: out std_logic_vector(6 downto 0);
        LED_2: out std_logic_vector(6 downto 0);
        LED_3: out std_logic_vector(6 downto 0);
        LED_4: out std_logic_vector(6 downto 0);
        LED_5: out std_logic_vector(6 downto 0);
        LED_6: out std_logic_vector(6 downto 0)
        );
    end component;

    begin
        U1 : LEDDEC port map (
            DATA => NUM,
            TAR => TAR,
            LED_1 => LED_1,
            LED_2 => LED_2,
            LED_3 => LED_3,
            LED_4 => LED_4,
            LED_5 => LED_5,
            LED_6 => LED_6 );
end RTL;
