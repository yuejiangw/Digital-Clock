library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity minute_bcd_count is
port(clk_to_minute, reset, set_hour : in std_logic;
                                 co : out std_logic; --总的进位信号，为set_hour和co_en的结合
                             datout : out std_logic_vector(7 downto 0));
end minute_bcd_count;

architecture bhv of minute_bcd_count is
signal count_shi, count_ge : std_logic_vector(3 downto 0);
signal count_en : std_logic; --当分钟计数到60时产生的进位
begin 
   co <=  set_hour or count_en;
    process(clk_to_minute, set_hour, reset)     begin   
        if reset = '0' then count_shi <= "0000"; count_ge <= "0000"; -- 有复位信号，则清除计数
        elsif clk_to_minute'event and clk_to_minute = '1' then     
            if count_shi = "0101" and count_ge  = "1001" then   --59时候清零进位
                count_shi <= "0000"; count_ge <= "0000";  count_en <= '1';  -- 计数进位（信号量不是立即赋值，需等下一个时钟信号到来。）
            elsif count_ge < "1001"     then count_ge <= count_ge + 1; count_en <= '0';--个位是9的时候十位进1 
            else count_ge <= "0000";  -- 计数溢出则清零，并产生进位
                if count_shi < "1010"   then count_shi <= count_shi + 1;  --个位为9而且十位小于5的时候
                else count_shi <= "0000";  
                end if;
            end if;
        end if;
    end process;
    datout <= count_shi & count_ge;  -- 数据输出
end bhv;