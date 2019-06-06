library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity alert is
port(  clk : in std_logic;  -- 激励led变化
      m_in : in std_logic_vector(7 downto 0);  -- 输入分钟显示数据 
      s_in : in std_logic_vector(7 downto 0);  -- 输入秒钟显示数据 
      speaker : out std_logic;  -- 蜂鸣器控制
      led : out std_logic_vector(3 downto 0));  -- 流水灯
end alert;

architecture bhv of alert is
signal sel : std_logic_vector(1 downto 0);
signal count : std_logic_vector(2 downto 0);
begin  
    reg : process(clk) begin
        if clk'event and clk = '1' then 
            if count < "111" then count <= count + 1;
            else count <= "000"; 
            end if;
        end if;
    end process reg;
    flow : process(count, m_in, s_in) begin
        if m_in = "00000000"    and s_in < "00001001"   then  -- 闪烁9个节拍
            case count is
                when "000" => led <="1000";  
                when "001" => led <="0100";  
                when "010" => led <="0010";  
                when "011" => led <="0001";
                when "111" => led <="1111"; 
                when "101" => led <="0000";
                when "110" => led <="1111";
                when others => led <="0000";
            end case;
        else    led <= "0000";
        end if;
    end process flow;
    beep : process( m_in, s_in) begin
        if m_in = "00000000"    and s_in < "00000010"    then  -- 蜂鸣器响铃时间持续2个节拍
          speaker <= '0';
        else speaker <= '1';
        end if;
    end process beep;
end bhv;    