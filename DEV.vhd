library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity dev is
port(                 clk_50mhz : in std_logic;
    clk_1hz, clk_5hz, clk_250hz : out std_logic);
end;

architecture bhv of dev is
signal q1 : integer range 0 to 49999999;   --49999999
signal q2 : integer range 0 to 199999;     --199999
signal q3 : integer range 0 to 9999999;    --9999999
begin
    process(clk_50mhz) begin
        if clk_50mhz'event and clk_50mhz = '1' then
           -- 1hz
            if q1 < 25000000        then clk_1hz <= '0'; q1 <= q1 + 1; --25000000
            elsif q1 <49999999     then clk_1hz <= '1'; q1 <= q1 + 1;
            else q1 <= 0;
            end if;
            -- 250hz 
            if q2 < 100000     then clk_250hz <= '0'; q2 <= q2 + 1; --100000
            elsif q2 < 199999       then clk_250hz <= '1'; q2 <= q2 + 1;  --199999
            else q2 <= 0;
            end if;
            -- 5hz
            if q3 < 5000000 then clk_5hz <= '0'; q3 <= q3 + 1;  --5000000
            elsif q3 < 9999999  then clk_5hz <= '1'; q3 <= q3 + 1;  --9999999
            else q3 <= 0; 
            end if;
        end if;
    end process;
end;