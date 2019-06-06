library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
--抖动的时间一般为5-10ms，所以在检测出按键闭合后执行一段延时程序，
--5-10ms的延时，让前沿抖动消失后再一次检测按键状态。如果仍保持
--闭合状态电平，则认为真正有按键按下。当检测到按键释放后，也要
--给5-10ms的延时，待后沿抖动消失后才能转入该键的处理程序。
entity key_delay is
port(clk, key_in : in std_logic;  
         key_out : out std_logic);
end key_delay;

architecture bhv of key_delay is
begin
process(clk, key_in) 
variable count : integer range 0 to 10;
begin
    if clk'event and clk = '1' then
        if key_in = '0' then --按键输入低有效
            if count < 10    then count := count + 1;
            else count := count;  -- 赋予变量的值是即刻生效的。
            end if;
            if count = 9    then key_out <= '1';     --count经历9个上升沿后就输出一个高电平
            else key_out <= '0';    
            end if;
        else count := 0;    
        end if;
    end if;
end process;
end bhv;