library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity hour_bcd_count is
port(clk_to_hour, reset, scale_sel : in std_logic;
                            datout : out std_logic_vector(7 downto 0));
end hour_bcd_count;

architecture bhv of hour_bcd_count is
signal count_shi, count_ge : std_logic_vector(3 downto 0);
begin 
    process(clk_to_hour, reset) begin
        if reset = '0' then count_shi <= "0000"; count_ge <= "0000"; -- 有复位信号，则清除计数。
        elsif clk_to_hour'event and clk_to_hour = '1' then
           if scale_sel = '1' then  -- 24进制
                if count_shi = "0010" and count_ge = "0011"     then count_shi <= "0000"; count_ge <= "0000";  -- 24进制溢出清零
                elsif count_ge < "1001"     then count_ge <= count_ge + 1; --个位满十进一
                else count_ge <= "0000"; count_shi <= count_shi + 1;
                end if;
            else  -- 12进制
               if count_shi = "0001" and count_ge = "0001" then count_shi <= "0000"; count_ge <= "0000";  -- 12进制溢出清零
               elsif count_ge < "1001" then count_ge <= count_ge + 1;--个位满十进一
               else count_ge <= "0000"; count_shi <= count_shi + 1;
               end if;
            end if;
        end if;
    datout <= count_shi & count_ge;  -- 数据输出
    end process;
end bhv;