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
			when "0000" => saida_temp <= "1000000"; -- Display -> 0
			when "0001" => saida_temp <= "1111001"; -- Display -> 1
			when "0010" => saida_temp <= "0100100"; -- Display -> 2
			when "0011" => saida_temp <= "0110000"; -- Display -> 3
			when "0100" => saida_temp <= "0011001"; -- Display -> 4
			when "0101" => saida_temp <= "0010010"; -- Display -> 5
			when "0110" => saida_temp <= "0000010"; -- Display -> 6
			when "0111" => saida_temp <= "1111000"; -- Display -> 7
			when "1000" => saida_temp <= "0000000"; -- Display -> 8
			when "1001" => saida_temp <= "0010000"; -- Display -> 9
			when "1010" => saida_temp <= "1110111"; -- Display -> traço
			when "1011" => saida_temp <= "0001100"; -- Display -> P
			when "1100" => saida_temp <= "1000010"; -- Display -> G
			when others => saida_temp <= "1110111";
		END CASE;
		
	END PROCESS;
	
	-- Atribuindo o valor à saída do decodificador
	saida_decod <= saida_temp;
END hex;
