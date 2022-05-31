library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity UControl is
	port(	
			clk,rst	: in	std_logic;
			Flags		: in	std_logic_vector(6 downto 0);
			MDR 		: in	std_logic_vector(7 downto 0);
			Cache		: in	std_logic_vector(7 downto 0);
			MBusMux	: out	std_logic_vector(4 downto 0);
			RegEn		: out std_logic_vector(3 downto 0);
			RegVal	: out std_logic_vector(3 downto 0);
			MuxA		: out	std_logic;
			MuxB		: out	std_logic;
			MuxC		: out	std_logic;
			MuxMAR	: out std_logic;
			MuxMDR	: out std_logic;
			EnableDeco : out std_logic;
			MuxRAM	: out std_logic;
			WR_Ram 		: out std_logic;
			Destino	: out	std_logic_vector(7 downto 0);
			Fuente	: out	std_logic_vector(7 downto 0);
			UMemOut	: out	std_logic_vector(64 downto 0);
			ALU		: out	std_logic_vector(2 downto 0)
			--MuxDeco	: out std_logic;
			--MuxMBus	: out std_logic;
			--MuxDstFt	: out std_logic
			);
end UControl;

architecture archUControl	of UControl is
	signal address			: std_logic_vector(15 downto 0);
	signal nextAdd			: std_logic_vector(15 downto 0);
	signal DestinoI		: std_logic_vector(7 downto 0);	--valores del destino
	signal FuenteI			: std_logic_vector(7 downto 0);	--valores de la fuente
	signal NextAddUC		: std_logic_vector(15 downto 0);
	signal DstFntAux		: std_logic_vector(7 downto 0);
	
	--señales de la UMem
	signal UMEM				: std_logic_vector(64 downto 0);
	signal DirMbusUCode	: std_logic_vector(4 downto 0);	--valores del mbus sel en la micromemoría
	signal RegEnableUCode: std_logic_vector(3 downto 0);
	signal MuxABC			: std_logic_vector(2 downto 0);
	signal controlLines	: std_logic_vector(3 downto 0);
	signal MuxDeco			: std_logic;
	signal MuxMBus			: std_logic;
	signal MuxDstFt		: std_logic;
	signal MuxNxtAdd		: std_logic_vector(1 downto 0);
	signal nextAddUCIn	: std_logic_vector(15 downto 0);
	signal bifurcacion	: std_logic_vector(15 downto 0);
	signal selectedFlag	: std_logic;


begin
	--next address and bifurcation inside the conventional UC operations
	process(clk)
	begin
		if(rising_edge(clk)) then
			if(selectedFlag = '1') then
				nextAddUC <= Bifurcacion;
			else
				nextAddUC <= nextAddUCIN;
			end if;
		end if;
	end process;
	
	--next address based on the clock
	process(clk, controlLines)
	begin
		if(falling_edge(clk)) then
			address <= nextAdd;
		end if;
	end process;
	
	--separar señales de unidad de control internamente
	DirMbusUCode 	<= UMEM(64 downto 60);
	RegEnableUCode <= UMEM(59 downto 56);
	MuxA				<= UMEM(55);
	MuxB				<= UMEM(54);
	MuxC				<= UMEM(53);
	RegVal			<= UMEM(52 downto 49);
	ALU				<= UMEM(48 downto 46);
	MuxDeco			<= UMEM(45);
	MuxMBus			<= UMEM(44);
	MuxDstFt			<= UMEM(43);
	MuxNxtAdd		<= UMEM(42 downto 41);
	MuxMar			<= UMEM(40);
	MuxRAM			<= UMEM(39);
	MuxMDR			<= UMEM(38);
	WR_Ram			<= UMEM(37);
	EnableDeco		<= UMEM(36);
	controlLines   <= UMEM(35 downto 32);
	nextAddUCIN		<= UMEM(31 downto 16);
	bifurcacion		<= UMEM(15 downto 0);
	UMemOut			<= UMEM;
	Destino			<= DestinoI;
	Fuente 			<= FuenteI;
	
	--split and select the signal to be compared
	process(controlLines)
	begin
		case controlLines is
			when "0000" => selectedFlag <= flags(0);
			when "0001" => selectedFlag <= flags(1);
			when "0010" => selectedFlag <= flags(2);
			when "0011" => selectedFlag <= flags(3);
			when "0100" => selectedFlag <= flags(4);
			when "0101" => selectedFlag <= flags(5);
			when "0110" => selectedFlag <= flags(6); -- Equal
			when "0111" => selectedFlag <= '0';
			when others => selectedFlag <= '0';
		end case;
	end process;
	
	--Micromemoria
	process(address)
	begin
		case address is
		--								MBusSelect RegEnable MuxABC RegValue  ALU    Muxeslocos		ControlL  NextAdd   Bifurcacion
--			when X"0000"=>UMem<="00000" & "0000" & "000" & "0011" & "000" & "0000" & "0000" & X"0001" & X"0000";
--			when X"0001"=>UMem<="00000" & "0000" & "000" & "0011" & "000" & "0000" & "0000" & X"0002" & X"0000";
			when X"0000"=> UMem <="00000" & "0111" & "000" & "0000" & "000" & "0000010001" & "0000" & X"0001" & X"0001";
			when X"0001"=> UMem <="00000" & "0111" & "000" & "0001" & "000" & "0000010001" & "0000" & X"0002" & X"0002";
			when X"0002"=> UMem <="00000" & "0111" & "000" & "0000" & "000" & "0000000001" & "0000" & X"0003" & X"0003";
			when X"0003"=> UMem <="01000" & "1000" & "000" & "0000" & "000" & "0000000001" & "0000" & X"0004" & X"0004";
			when X"0004"=> UMem <="01000" & "1000" & "000" & "0001" & "000" & "0000000001" & "0000" & X"0005" & X"0005";
			when X"0005"=> UMem <="01000" & "1000" & "000" & "0000" & "000" & "0000000001" & "0000" & X"0006" & X"0006";
			when X"0006"=> UMem <="01000" & "1001" & "000" & "0001" & "000" & "0000000001" & "0000" & X"0007" & X"0007";
			when X"0007"=> UMem <="01000" & "1001" & "000" & "0000" & "000" & "0000000001" & "0000" & X"0008" & X"0008";
			when X"0008"=> UMem <="00000" & "1001" & "000" & "0000" & "000" & "0000000001" & "0000" & X"0009" & X"0009";
			when X"0009"=> UMem <="00000" & "0110" & "000" & "0010" & "000" & "0000000001" & "0000" & X"000A" & X"000A";
			when X"000A"=> UMem <="00000" & "0110" & "000" & "0000" & "000" & "0001000000" & "0000" & X"000B" & X"000B";
			when X"000B"=> UMem <="00000" & "0000" & "000" & "0000" & "000" & "0001000001" & "0000" & X"000C" & X"000C";
			when X"000C"=> UMem <="00000" & "0000" & "000" & "0000" & "000" & "0000000000" & "0000" & X"0000" & X"0000";
			
			-- Microprogramación de ADD Directo de Ax Input (Solo sirve en Ax, se tiene que implementar el de reg variable)
		   --						  MBusSelect RegEnable MuxABC RegValue   ALU    Muxeslocos		ControlL  NextAdd  Bifurcacion			
			when X"0100"=> UMem <="00000" & "0110" & "000" & "0000" & "000" & "0000000001" & "0000" & X"0101" & X"0101";
			when X"0101"=> UMem <="00000" & "0110" & "000" & "0010" & "000" & "0000000001" & "0000" & X"0102" & X"0102";
			when X"0102"=> UMem <="00000" & "0111" & "000" & "0000" & "000" & "0000010001" & "0000" & X"0103" & X"0103";
			when X"0103"=> UMem <="00000" & "0111" & "000" & "0001" & "000" & "0000010001" & "0000" & X"0104" & X"0104";
			when X"0104"=> UMem <="00000" & "1000" & "000" & "0000" & "000" & "0000000001" & "0000" & X"0105" & X"0105";
			when X"0105"=> UMem <="00000" & "1000" & "000" & "0001" & "000" & "0000000001" & "0000" & X"0106" & X"0106";
			when X"0106"=> UMem <="00000" & "0000" & "100" & "0000" & "000" & "0000000001" & "0000" & X"0107" & X"0107";
			when X"0107"=> UMem <="00000" & "0000" & "100" & "0001" & "000" & "0000000001" & "0000" & X"0108" & X"0108";
			when X"0108"=> UMem <="00000" & "1101" & "000" & "0000" & "000" & "0000000001" & "0000" & X"0109" & X"0109";
			when X"0109"=> UMem <="00000" & "1101" & "000" & "0001" & "000" & "0000000001" & "0000" & X"010A" & X"010A";
			when X"010A"=> UMem <="00000" & "0110" & "000" & "0000" & "000" & "0000000001" & "0000" & X"010B" & X"010B";
			when X"010B"=> UMem <="00000" & "0110" & "000" & "0010" & "000" & "0000000001" & "0000" & X"010C" & X"010C";
			when X"010C"=> UMem <="00000" & "0111" & "000" & "0000" & "000" & "0000010001" & "0000" & X"010D" & X"010D";
			when X"010D"=> UMem <="00000" & "0111" & "000" & "0001" & "000" & "0000010001" & "0000" & X"010E" & X"010E";
			when X"010E"=> UMem <="00000" & "1000" & "000" & "0000" & "000" & "0000000001" & "0000" & X"010F" & X"010F";
			when X"010F"=> UMem <="00000" & "1000" & "000" & "0001" & "000" & "0000000001" & "0000" & X"0110" & X"0110";
			when X"0110"=> UMem <="01000" & "1110" & "000" & "0000" & "000" & "0000000001" & "0000" & X"0111" & X"0111";
			when X"0111"=> UMem <="01000" & "1110" & "000" & "0001" & "000" & "0000000001" & "0000" & X"0112" & X"0112";
			when X"0112"=> UMem <="00000" & "1111" & "000" & "0000" & "000" & "0000000001" & "0000" & X"0113" & X"0113";
			when X"0113"=> UMem <="00000" & "1111" & "000" & "0001" & "000" & "0000000001" & "0000" & X"0114" & X"0114";
			when X"0114"=> UMem <="01101" & "0000" & "000" & "0000" & "000" & "0000000001" & "0000" & X"0115" & X"0115";
			when X"0115"=> UMem <="01101" & "0000" & "000" & "0001" & "000" & "0000000001" & "0000" & X"0000" & X"0000";
			
			
			
			--JMP 
		   --						  MBusSelect RegEnable MuxABC RegValue   ALU    Muxeslocos		ControlL  NextAdd  Bifurcacion
			when X"2200"=> UMem <="00000" & "0110" & "000" & "0010" & "000" & "0000000001" & "0000" & X"2201" & X"2201";
			when X"2201"=> UMem <="00000" & "0110" & "000" & "0000" & "000" & "0000000001" & "0000" & X"2202" & X"2202";
			when X"2202"=> UMem <="00000" & "0111" & "000" & "0001" & "000" & "0000010001" & "0000" & X"2203" & X"2203";
			when X"2203"=> UMem <="00000" & "0111" & "000" & "0000" & "000" & "0000010001" & "0000" & X"2204" & X"2204";
			when X"2204"=> UMem <="00000" & "0000" & "000" & "0000" & "000" & "0000000000" & "0000" & X"2205" & X"2205";
			when X"2205"=> UMem <="00000" & "0000" & "000" & "0000" & "000" & "0000000000" & "0000" & X"2206" & X"2206";
			when X"2206"=> UMem <="00000" & "0000" & "000" & "0000" & "000" & "0000000000" & "0000" & X"2207" & X"2207";
			when X"2207"=> UMem <="00000" & "0000" & "000" & "0000" & "000" & "0000000000" & "0000" & X"2208" & X"2208";
			when X"2208"=> UMem <="00000" & "1000" & "000" & "0001" & "000" & "0000000001" & "0000" & X"2209" & X"2209";
			when X"2209"=> UMem <="01000" & "1000" & "000" & "0000" & "000" & "0000000001" & "0000" & X"220A" & X"220A";
			when X"220A"=> UMem <="01000" & "0110" & "000" & "0001" & "000" & "0000000001" & "0000" & X"220B" & X"220B";
			when X"220B"=> UMem <="00000" & "0110" & "000" & "0000" & "000" & "0000000001" & "0000" & X"0000" & X"0000";
			--When others
			when others => UMem <="01101" & "0000" & "000" & "0001" & "000" & "0000000001" & "0000" & X"0000" & X"0000";
			
			
		end case;
	end process;
	
	
	--MuxMDR
	process(MuxDeco, MuxMBus, MuxDstFt)
	begin
		case MuxDeco is --mux decoder enable Rx
			when '0'	=> RegEn <= RegEnableUCode(3 downto 0);
			when '1' => RegEn <= FuenteI(3 downto 0);
		end case;
		
		case MuxMBus is --mux que es sel del MbusMux
			when '0'	=> MBusMux <= DirMbusUCode(4 downto 0);
			when '1' => MBusMux <= DestinoI(4 downto 0);
		end case;
		
		case MuxDstFt is --mux que controla si MDR escribe a Dst o Ft
			when '0'	=> DestinoI <= DstFntAux;
			when '1' => FuenteI <= DstFntAux;
		end case;
		
		case MuxNxtAdd is --mux que controla si nxtAdd se lee desde la unidad de control, el Destino o desde el cache (en ciclo de fetch) 
			when "00" => nextAdd <= nextAddUC;
			when "01" => nextAdd <= DestinoI & X"00";
			when "10" => nextAdd <= Cache & x"00";
			when "11" => DstFntAux <= MDR;
			when others =>nextAdd<= X"0000";
		end case;
		
	end process;
	
	
	
end architecture archUControl;