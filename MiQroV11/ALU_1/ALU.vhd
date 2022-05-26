library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity ALU is 
	port( A,B: in std_logic_vector(7 downto 0);
	ALU_Sel: in std_logic_vector(2 downto 0);
	NZVC: out std_logic_vector(6 downto 0);
	Result:out std_logic_vector(7 downto 0));
	
	end entity;

architecture A of ALU is
	signal ALU_Result:std_logic_vector(7 downto 0);
	signal ALU_B:std_logic_vector(8 downto 0);
	signal C,Z,V,N,add_o,sub_o,Greater,Less,Equal: std_logic;
	
	
begin 

	process(A,B)
		begin
		if(A<B) then
				Greater<= '1';
		else
				Greater<= '0';
		end if;
		
		if(A>B) then 
				Less <= '1';
		else 
				Less <= '0';		
		end if;
		
		if(A=B) then
				Equal <= '1';
		else 
				Equal <= '0';
		end if;

		

			

	end process;
	
	
	process(ALU_Sel,A,B)
		begin
		
		ALU_B <= "000000000";
		case(ALU_Sel) is
		
			-- Casos de la ALU -- 
			
			when "000" => ALU_B <=('0' & A )+('0' & B ); -- SUMA
								ALU_Result <= A+B;
							  
			when "001" => ALU_Result <= B-A; -- RESTA
								ALU_B <=('0' & B )+('0' & A );
								
			when "010" => ALU_Result <= A and B; --AND
			when "011" => ALU_Result <= A or B;  --OR
			when "100" => ALU_Result <= A xor B;  --OR

			
			when others => ALU_Result <= A+B;
		end case; 
	end process;
	
	Result <= ALU_Result;
	
	
			N <=	 ALU_Result(7);
			Z <= '1' when ALU_Result = x"00" else '0';
			
			add_o <= (A(7) and B(7) and (not ALU_Result(7))) or ((not A(7))and (not B(7)) and ALU_Result(7));
			sub_o <= (A(7) and (not B(7)) and (not ALU_Result(7))) or ((not A(7))and  B(7) and ALU_Result(7));
			
	
			
			with ALU_Sel select 
				V <= add_o when "000",
				     sub_o when "001",
					  '0' when others;
					  
			with ALU_Sel select 
				C <= ALU_B(8) when "000",
					  ALU_B(8) when "001",
					  '0' when others;
					  
			NZVC <=  Equal & Less & Greater & C & Z & V & N;	
			

	end architecture;
					
					  					  
				
			
			
			
			
			
			
							  
							  
						