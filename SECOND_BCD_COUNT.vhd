library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity second_bcd_count is
port(clk_to_second, reset,set_min : in std_logic;
     co : out std_logic;  --进位
     datout : out std_logic_vector(7 downto 0));
end second_bcd_count;

architecture bhv of second_bcd_count is
signal count_shi, count_ge : std_logic_vector(3 downto 0);
signal count_en : std_logic;
begin 
   co <= set_min or count_en;
    process(clk_to_second, reset, set_min)      begin
   if reset = '0' then count_shi <= "0000"; count_ge <= "0000"; -- 有复位信号，则清除计数
    elsif clk_to_second'event and clk_to_second = '1'   then     
        if count_shi = "0101" and count_ge  = "1001"   then 
            count_shi <= "0000"; count_ge <= "0000";  count_en <= '1';  -- 计数进位（信号量不是立即赋值，需等下一个时钟信号到来。）
        elsif count_ge < "1001"     then count_ge <= count_ge + 1;  count_en <= '0';
        else count_ge <= "0000";  
            if count_shi < "1010"   then count_shi <= count_shi + 1;  
            else count_shi <= "0000";  
            end if;
        end if;
    end if;
    datout <= count_shi & count_ge;  -- 数据输出
    end process;
end bhv;