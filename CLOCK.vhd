library  ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity clock is
port(clk:in std_logic;  -- 1hz时钟信号输入
     c_scale_sel:in std_logic;  -- 时钟进制选择
     c_reset:in std_logic;  -- 时钟复位信号
	  c_set_min:in std_logic; --分钟调节
	  c_set_hour:in std_logic;  -- 小时调节
	  buzzer:out std_logic;  -- 蜂鸣器控制
     segment_sel:out std_logic_vector(5 downto 0);  -- 数码位选信号输出
     segment_seg:out std_logic_vector(7 downto 0);  -- 数码管短信信号输出
     flash_led:out std_logic_vector(3 downto 0));  -- 流水灯
end clock;

architecture bhv of clock is
   -- 调用秒钟计数模块声明
    component second_bcd_count  
    port(clk_to_second:in std_logic;
			reset:in std_logic;
			set_min : in std_logic;
         co : out std_logic;
         datout : out std_logic_vector(7 downto 0));
    end component;
    -- 调用分钟计数模块声明
    component minute_bcd_count  
    port(clk_to_minute: in std_logic;  --分时钟模块clk
			reset: in std_logic;  --复位
			set_hour : in std_logic; --设置数值
         co : out std_logic; --进位
         datout : out std_logic_vector(7 downto 0));  --输出
    end component;
    -- 调用小时计数模块声明
    component hour_bcd_count  
    port(clk_to_hour : in std_logic;
			      reset : in std_logic;
			  scale_sel : in std_logic;
              datout : out std_logic_vector(7 downto 0));
    end component;
    -- 调用译码显示模块声明
    component seltime  
    port(            scan_clk : in std_logic;  -- 扫描时钟输入 
         hour: in std_logic_vector(7 downto 0);  -- 时间数据输入
			minute: in std_logic_vector(7 downto 0);  -- 时间数据输入
			second : in std_logic_vector(7 downto 0);  -- 时间数据输入
         sel : out std_logic_vector(5 downto 0);  -- 位选信号输出                              
         seg : out std_logic_vector(7 downto 0));  -- 段选信号输出
    end component;
    -- 调用分频模块声明
    component dev  
    port(clk_50mhz : in std_logic;
         clk_1hz, clk_5hz, clk_250hz : out std_logic);
    end component;
    -- 整点报时模块
    component  alert  
    port(  clk : in std_logic;  -- 激励led变化
          m_in : in std_logic_vector(7 downto 0);  -- 输入分钟显示数据 
          s_in : in std_logic_vector(7 downto 0);  -- 输入秒钟显示数据 
       speaker : out std_logic;  -- 蜂鸣器控制
           led : out std_logic_vector(3 downto 0));  -- 流水灯
    end component;
    -- 按键延时消抖模块
    component key_delay  
    port(clk, key_in : in std_logic;  
             key_out : out std_logic);
    end component;
signal ad_hour, ad_min : std_logic;  -- 时钟调节信号
signal s_co, m_co : std_logic;  -- 计数进位
signal c_clk, scan_clk, flow_clk : std_logic;  -- 计数时钟，扫描时钟，流水灯驱动时钟
signal s_dat, m_dat, h_dat : std_logic_vector(7 downto 0);  -- 秒，分，时显示数据
    begin
        u1 : second_bcd_count port map(c_clk, c_reset, ad_min, s_co, s_dat);  -- 秒钟
        u2 : minute_bcd_count port map(s_co, c_reset, ad_hour, m_co, m_dat);  -- 分钟
        u3 : hour_bcd_count   port map(m_co, c_reset, c_scale_sel, h_dat);  -- 小时
        u4 : seltime          port map(scan_clk, h_dat, m_dat, s_dat, segment_sel, segment_seg);  -- 译码显示
        u5 : dev              port map(clk, c_clk, flow_clk , scan_clk);  -- 分频
        u6 : key_delay        port map(scan_clk, c_set_min, ad_min);  -- 分钟调整
        u7 : key_delay        port map(scan_clk, c_set_hour, ad_hour);  -- 小时调整
        u8 : alert            port map(flow_clk, m_dat,s_dat, buzzer, flash_led);  -- 整点报时
end bhv;        