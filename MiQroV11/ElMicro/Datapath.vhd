library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Datapath is
	port(	
			);
end Datapath;


architecture arqDatapath of Datapath is
	component FFlop8b PORT(
			input 	:	in std_logic_vector(7 downto 0);
			N			:	in std_logic_vector(7 downto 0);
			load		:	in std_logic;
			reset		:	in	std_logic;
			clk		:	in	std_logic;
			add		:	in std_logic;
			output	:	out std_logic_vector(7 downto 0)
	);
	end component;
	component ALU PORT(
			A		 	:	in std_logic_vector(7 downto 0);
			B		 	:	in std_logic_vector(7 downto 0);
			sel		:  in std_logic;
			output	:	out std_logic_vector(7 downto 0)
	);
	end component;
	component Comparator PORT(
			A		 	:	in std_logic_vector(7 downto 0);
			B		 	:	in std_logic_vector(7 downto 0);
			AbB   	:	out std_logic;
			BbA		:	out std_logic;
			AeB		:  out std_logic
	);
	end component;
	component Mux2a1 PORT(	
			A		 	:	in std_logic_vector(7 downto 0);
			B		 	:	in std_logic_vector(7 downto 0);
			sel		:	in std_logic;
			output	:	out std_logic_vector(7 downto 0)
	);
	end component;
	
	signal OAx  	: std_logic_vector(7 downto 0);
	signal OBx  	: std_logic_vector(7 downto 0);
	signal OCx  	: std_logic_vector(7 downto 0);
	signal OMux2a1A: std_logic_vector(7 downto 0);
	signal OMux2a1B: std_logic_vector(7 downto 0);
	signal AbB  	: std_logic;
	signal BbA  	: std_logic;
	signal AeB  	: std_logic;
	signal OALU 	: std_logic_vector(7 downto 0);
	
	begin
	
	Mux2a1Ax	: Mux2a1 port map(N, OALU, selA, OMux2a1A);
	Ax 		: FFlop8b port map(OMux2a1A, "00000000" , loadA, rstA, clk, '0', OAx);
	Bx			: FFlop8b port map("00000001", "00000010" ,loadB, rstB, clk, incB, OBx);
	Cx			: FFlop8b port map("00000000", "00000001", loadC,rstC, clk, incC, OCx);
	Restador	: ALU		port map(OAx,OBx,'1',OALU);
	Compara	: Comparator port map(OAx, OBx, AbB, BbA, AeB);
	Ra <= OAx;
	Rb <= OBx;
	Rc <= OCx;
	Ans <= "00000000" when loadAns = '0' else
			 OCx;
	Ctrl <= not BbA;
	
end arqDatapath;