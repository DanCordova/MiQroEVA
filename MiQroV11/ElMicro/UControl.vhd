library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity UControl is
	port(	
			clk,rst	: in	std_logic;
			Flags		: in	std_logic_vector(15 downto 0);
			MDR 		: in	std_logic_vector(7 downto 0);
			Cache		: in	std_logic_vector(15 downto 0);
			MBusMux	: out	std_logic_vector(4 downto 0);
			RegEn		: out std_logic_vector(3 downto 0);
			RegVal	: out std_logic_vector(3 downto 0);
			MuxA		: out	std_logic;
			MuxB		: out	std_logic;
			MuxC		: out	std_logic;
			MuxMAR	: out std_logic;
			EnableDeco : out std_logic;
			MuxRAM	: out std_logic;
			Destino	: out	std_logic_vector(7 downto 0);
			Fuente	: out	std_logic_vector(7 downto 0);
			UMemOut	: out	std_logic_vector(62 downto 0);
			ALU		: out	std_logic_vector(2 downto 0)
			--MuxDeco	: out std_logic;
			--MuxMBus	: out std_logic;
			--MuxDstFt	: out std_logic
			);
end UControl;

architecture archUControl	of UControl is
	signal address			: std_logic_vector(15 downto 0);
	signal nextAdd			: std_logic_vector(15 downto 0);
	signal DestinoI			: std_logic_vector(7 downto 0);	--valores del destino
	signal FuenteI			: std_logic_vector(7 downto 0);	--valores de la fuente
	signal NextAddUC		: std_logic_vector(15 downto 0);
	
	--señales de la UMem
	signal UMEM				: std_logic_vector(62 downto 0);
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
		if(rising_edge(clk)) then
			address <= nextAdd;
		end if;
	end process;
	
	--separar señales de unidad de control internamente
	DirMbusUCode 	<= UMEM(62 downto 58);
	RegEnableUCode <= UMEM(57 downto 54);
	MuxA				<= UMEM(53);
	MuxB				<= UMEM(52);
	MuxC				<= UMEM(51);
	RegVal			<= UMEM(50 downto 47);
	ALU				<= UMEM(46 downto 44);
	MuxDeco			<= UMEM(43);
	MuxMBus			<= UMEM(42);
	MuxDstFt			<= UMEM(41);
	MuxNxtAdd		<= UMEM(40 downto 39);
	MuxMar			<= UMEM(38);
	MuxRAM			<= UMEM(37);
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
			when "0110" => selectedFlag <= flags(6);
			when "0111" => selectedFlag <= flags(7);
			when others => selectedFlag <= '0';
		end case;
	end process;
	
	--Micromemoria
	process(address)
	begin
		case address is
		--								MBus     RegEnable MuxABC RegValue ALU    Sen. Int  ControlL 
--			when X"0000"=>UMem<="00000" & "0000" & "000" & "0011" & "000" & "0000" & "0000" & X"0001" & X"0000";
--			when X"0001"=>UMem<="00000" & "0000" & "000" & "0011" & "000" & "0000" & "0000" & X"0002" & X"0000";
			when X"0000"=>UMem<="00001" & "0001" & "001" & "0001" & "001" & "00000000" & "0001" & X"0001" & X"0001";
			when X"0001"=>UMem<="00010" & "0010" & "010" & "0010" & "010" & "00000000" & "0010" & X"0002" & X"0002";
			when others =>UMem<="00000" & "0000" & "000" & "0000" & "000" & "00000000" & "0000" & X"0000" & X"0000";
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
			when '0'	=> DestinoI <= MDR;
			when '1' => FuenteI <= MDR;
		end case;
		
		case MuxNxtAdd is --mux que controla si nxtAdd se lee desde la unidad de control, el Destino o desde el cache (en ciclo de fetch) 
			when "00" => nextAdd <= nextAddUC;
			when "01" => nextAdd <= DestinoI & X"00";
			when "10" => nextAdd <= Cache;
			when others =>nextAdd<= X"0000";
		end case;
		
	end process;
	
	
	
end architecture archUControl;