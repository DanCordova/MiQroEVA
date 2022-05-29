library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity mem_programa is
	port ( clk: in std_logic;
				address : in std_logic_vector(7 downto 0);
				data_out: out std_logic_vector(7 downto 0));
	
	end entity;
	
architecture rtl of mem_programa is
	
	
	-- Aritmeticas 0x00 -> 0x0F
	constant ADD      : std_logic_vector(7 downto 0) := x"10"; -- suma directa
	constant ADD_IM   : std_logic_vector(7 downto 0) := x"01"; -- suma inmediata 
	constant SUB      : std_logic_vector(7 downto 0) := x"02"; -- resta directa
	constant SUB_IM   : std_logic_vector(7 downto 0) := x"03"; -- resta inmediata
	constant MULT     : std_logic_vector(7 downto 0) := x"04"; -- division directa
	constant MULT_IM  : std_logic_vector(7 downto 0) := x"05"; -- division inmediata
	constant DIV      : std_logic_vector(7 downto 0) := x"06"; -- multiplicacion directa
	constant DIV_IM   : std_logic_vector(7 downto 0) := x"07"; -- multiplicacion inmediata

    -- Logicas 0x10 -> 0x1F
	--constant AND_DIR  : std_logic_vector(7 downto 0) := x"10";--and
	constant AND_IM   : std_logic_vector(7 downto 0) := x"11";--
	constant OR_DIR   : std_logic_vector(7 downto 0) := x"12";--or
	constant OR_IM    : std_logic_vector(7 downto 0) := x"13";--
	constant XOR_DIR  : std_logic_vector(7 downto 0) := x"14";--xor
	constant XOR_IM   : std_logic_vector(7 downto 0) := x"15";--
	constant NOT_DIR  : std_logic_vector(7 downto 0) := x"16";--not
	constant NOT_IM   : std_logic_vector(7 downto 0) := x"17";--
	constant COMP     : std_logic_vector(7 downto 0) := x"18";--compare, carga las banderas del ALU


    -- Transferencia 0x20 -> 0x3F

	constant MOV     : std_logic_vector(7 downto 0) := x"20";
	constant MOV_IM  : std_logic_vector(7 downto 0) := x"21";


    -- Saltos
	constant JMP    : std_logic_vector(7 downto 0) := x"22"; -- Salto incondicional a dirección
	constant JN     : std_logic_vector(7 downto 0) := x"23"; -- Salto a dirección si N=1
	constant JNN    : std_logic_vector(7 downto 0) := x"24"; -- Salto a dirección si N=0
	constant JZ     : std_logic_vector(7 downto 0) := x"25"; -- Salto a dirección si Z=1
	constant JNZ    : std_logic_vector(7 downto 0) := x"26"; -- Salto a dirección si Z=0
	constant JOV    : std_logic_vector(7 downto 0) := x"27"; -- Salto a dirección si V=1
	constant JNOV   : std_logic_vector(7 downto 0) := x"28"; -- Salto a dirección si V=0
	constant JC     : std_logic_vector(7 downto 0) := x"29"; -- Salto a dirección si C=1
	constant JNC    : std_logic_vector(7 downto 0) := x"2A"; -- Salto a dirección si C=0

        -- Branches
	constant BRA : std_logic_vector(7 downto 0) := x"2B"; -- Branch incondicional a direccion
	constant BMI : std_logic_vector(7 downto 0) := x"2C"; -- Branch a direccion si N=1
	constant BPL : std_logic_vector(7 downto 0) := x"2D"; -- Branch a direccion si N=0
	constant BEQ : std_logic_vector(7 downto 0) := x"2E"; -- Branch a direccion si Z=1
	constant BNE : std_logic_vector(7 downto 0) := x"2F"; -- Branch a direccion si Z=0
	constant BVS : std_logic_vector(7 downto 0) := x"30"; -- Branch a direccion si v=1
	constant BVC : std_logic_vector(7 downto 0) := x"31"; -- Branch a direccion si v=0
	constant BCS : std_logic_vector(7 downto 0) := x"32"; -- Branch a direccion si C=1
	constant BCC : std_logic_vector(7 downto 0) := x"33"; -- Branch a direccion si C=0

    
	
    -- Stack 0x40 -> 0x5F (push, pop, interrupcion)
	constant CALL  : std_logic_vector(7 downto 0) := x"40";
	constant RET   : std_logic_vector(7 downto 0) := x"41";
	constant RETIN : std_logic_vector(7 downto 0) := x"42"; 
    

    --Load, Stores 0x60 -> 7f
	-- constant LDA_INM : std_logic_vector(7 downto 0) := x"60"; -- Carga inmediata en A
	 constant LDA_DIR : std_logic_vector(7 downto 0) := x"61"; -- Carga direccion en A
    -- constant LDB_INM : std_logic_vector(7 downto 0) := x"62"; -- Carga inmediata en B
	-- constant LDB_DIR : std_logic_vector(7 downto 0) := x"63"; -- Carga direccion en B
    -- constant LDC_INM : std_logic_vector(7 downto 0) := x"64"; -- Carga inmediata en C
	-- constant LDC_DIR : std_logic_vector(7 downto 0) := x"65"; -- Carga direccion en C
    -- constant LDD_INM : std_logic_vector(7 downto 0) := x"66"; -- Carga inmediata en D
	-- constant LDD_DIR : std_logic_vector(7 downto 0) := x"67"; -- Carga direccion en D
    -- constant STORE_A : std_logic_vector(7 downto 0) := x"68"; -- Guarda A en direccion
	-- constant STORE_B : std_logic_vector(7 downto 0) := x"69"; -- Guarda B en direccion
    -- constant STORE_C : std_logic_vector(7 downto 0) := x"6A"; -- Guarda C en direccion
	-- constant STORE_D : std_logic_vector(7 downto 0) := x"6B"; -- Guarda D en direccion


    
	type instem is array (0 to 127) of std_logic_vector (7 downto 0);
	
    --WIRTE PROGRAM HERE
signal ROM: instem :=( 1		=> ADD ,
							  --1		=> x"00",
							  2		=> x"00",
							  3	   => x"00",
							  others => x"00");
	begin
	data_out <= ROM(conv_integer(unsigned(address)));
end rtl;