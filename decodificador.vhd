library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

ENTITY decodificador IS
	PORT(
		entrada_decod	:	in	std_logic_vector(3 downto 0);		-- Entrada do decodificador (4 bits)
		saida_decod		:	out	std_logic_vector(6 downto 0)	-- Saída do decodificador (7 bits)
	);
END decodificador;

ARCHITECTURE hex OF decodificador IS

-- Saída temporária
signal saida_temp	:	std_logic_vector(6 downto 0);

BEGIN

	PROCESS(entrada_decod)
	BEGIN
	
		CASE entrada_decod IS
			when "0000" => saida_temp <= "0111111"; -- Display -> 0
			when "0001" => saida_temp <= "0000110"; -- Display -> 1
			when "0010" => saida_temp <= "1011011"; -- Display -> 2
			when "0011" => saida_temp <= "1001111"; -- Display -> 3
			when "0100" => saida_temp <= "1100110"; -- Display -> 4
			when "0101" => saida_temp <= "1101101"; -- Display -> 5
			when "0110" => saida_temp <= "1111101"; -- Display -> 6
			when "0111" => saida_temp <= "0000111"; -- Display -> 7
			when "1000" => saida_temp <= "1111111"; -- Display -> 8
			when "1001" => saida_temp <= "1101111"; -- Display -> 9
			when "1010" => saida_temp <= "0001000"; -- Display -> traço
			when "1011" => saida_temp <= "1110011"; -- Display -> P
			when "1100" => saida_temp <= "0111101"; -- Display -> G
			when others => saida_temp <= "0001000";
		END CASE;
		
	END PROCESS;
	
	-- Atribuindo o valor à saída do decodificador
	saida_decod <= saida_temp;
END hex;