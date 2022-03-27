--ron krakovsky
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity write_data is
generic(
	Data_Width : integer := 32;
	Address_Width : integer := 32;
	hps_address_base : std_logic_vector(31 downto 0) := "11111111111111110000000000000000"
);
port (
	-- clock interface
	csi_clock_clk : in std_logic;
	rsi_sink_reset_n : in std_logic;
	
	-- avalon striming input data 
	aso_source_writedata : out std_logic_vector(Data_Width+Address_Width-1 downto 0); -- MSB[address(Address_Width),data(Data_Width)]LSB
	aso_source_ready : in std_logic
	

);
end write_data;

architecture behave of write_data is
signal counter : integer range 0 to 16383;
signal address : std_logic_vector(Address_Width - 1 downto 0);
signal data : std_logic_vector(Data_Width -1 downto 0);
begin
-------------------------------------------------------------------------------	
	process (csi_clock_clk, rsi_sink_reset_n)
	begin
		if rsi_sink_reset_n = '0' then
			counter <= 0;
			data <= (others => '0');
			address <= (others => '0');
		elsif rising_edge (csi_clock_clk) then
				if counter = 0 then 
					address <= (others => '0');
					data <= (others => '0');
					counter <= counter + 1;
				elsif counter > 16383 then 
					address <= (others => '0');
					counter <= 0;
					data <= (others => '0');
				else 
					address <= address + 4;
					counter <= counter + 1;
					data <= data + 2;
				end if;
		end if;
	end process;

--aso_source_writedata <= (hps_address_base + address) & data;
aso_source_writedata <= address & data;
end behave;