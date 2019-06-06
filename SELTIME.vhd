library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity seltime is
port(            scan_clk : in std_logic;  -- 扫描时钟输入 
     hour, minute, second : in std_logic_vector(7 downto 0);  -- 时间数据输入
                      sel : out std_logic_vector(5 downto 0);  -- 位选信号输出
                      seg : out std_logic_vector(7 downto 0));  -- 段选信号输出
end seltime;

architecture bhv of seltime is
signal scan_count : std_logic_vector(2 downto 0);  -- 扫描计数 
signal dat : std_logic_vector(3 downto 0);  
begin   
   -- 位选扫描进程 
    scan : process(scan_clk) begin
        if scan_clk'event and scan_clk = '1'   then 
            if(scan_count > "101")  then scan_count <= "000";
            else scan_count <= scan_count + 1;
            end if;
        end if;
        case scan_count is
            when "000" => dat <= second(3 downto 0);
            when "001" => dat <= second(7 downto 4);
            when "011" => dat <= minute(7 downto 4);
            when "010" => dat <= minute(3 downto 0);
            when "100" => dat <= hour(3 downto 0);
            when "101" => dat <= hour(7 downto 4);
            when  others => null;
        end case;
    end process scan;
    -- 译码显示进程 共数码管编码
    decode :    process(scan_count) begin
        case dat is
            when "0000" => seg<="11000000"; 
            when "0001" => seg<="11111001"; 
            when "0010" => seg<="10100100"; 
            when "0011" => seg<="10110000"; 
            when "0100" => seg<="10011001"; 
            when "0101" => seg<="10010010"; 
            when "0110" => seg<="10000010"; 
            when "0111" => seg<="11111000"; 
            when "1000" => seg<="10000000"; 
            when "1001" => seg<="10010000"; 
            when others => seg<="11111111"; 
        end case;
    end process decode; 
    -- 3-8译码
    sel <=    "111110" when scan_count = "000" else 
              "111101" when scan_count = "001" else 
              "111011" when scan_count = "010" else 
              "110111" when scan_count = "011" else 
              "101111" when scan_count = "100" else 
              "011111" when scan_count = "101" else 
              "111111";
end bhv;