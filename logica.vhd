library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

ENTITY logica IS
	PORT(
		entrada	:	in std_logic_vector(10 downto 0);		-- Switches na placa FPGA
		digito_1	:	out	std_logic_vector(3 downto 0);
		digito_2	:	out	std_logic_vector(3 downto 0);
		digito_3	:	out	std_logic_vector(3 downto 0);
		digito_4	:	out	std_logic_vector(3 downto 0);
		digito_5	:	out	std_logic_vector(3 downto 0);
		digito_6	:	out	std_logic_vector(3 downto 0);		

		vidas		:	out	std_logic_vector(2 downto 0)
	);
END logica;

ARCHITECTURE hardware OF logica IS

BEGIN

	PROCESS(entrada)
	
		-- Variáveis temporárias para as saídas e para o contador de vidas
		variable output_1	:	std_logic_vector(3 downto 0);	
		variable output_2	:	std_logic_vector(3 downto 0);
		variable output_3	:	std_logic_vector(3 downto 0);
		variable output_4	:	std_logic_vector(3 downto 0);
		variable output_5:	std_logic_vector(3 downto 0);
		variable output_6	:	std_logic_vector(3 downto 0);

		variable contador_vidas		:	integer range 0 to 3;
		variable contador_acertos	:	integer range 0 to 6;

		
	BEGIN
		-- Estado inicial das saídas no display
		output_1 := "1010";			
		output_2 := "1010";
		output_3 := "1010";
		output_4 := "1010";
		output_5 := "1010";
		output_6 := "1010";
		
		contador_vidas := 3;
		contador_acertos := 0;

		
		-- Senha = 379025
		
		if (entrada(3) = '1') then		-- Ativa display do número 3
			output_1 := "0011";
			contador_acertos := contador_acertos + 1;
		END if;

		if (entrada(7) = '1') then		-- Ativa o display do número 7
			output_2 := "0111";
			contador_acertos := contador_acertos + 1;
		END if;
		
		if (entrada(9) = '1') then		-- Ativa o display do número 9
			output_3 := "1001";
			contador_acertos := contador_acertos + 1;

		END if;
		
		if (entrada(0) = '1') then		-- Ativa o display do número 0
			output_4 := "0000";
			contador_acertos := contador_acertos + 1;
		END if;
		
		if (entrada(2) = '1') then		-- Ativa o display do número 2
			output_5 := "0010";
			contador_acertos := contador_acertos + 1;
		END if;
		
		if (entrada(5) = '1') then		-- Ativa o display do número 5
			output_6 := "0101";
			contador_acertos := contador_acertos + 1;
		END if;
		
		-- Condição para perder uma vida
		if (entrada(1) = '1') then
			contador_vidas := contador_vidas - 1;
		END if;
		
		if (entrada(4) = '1') then
			contador_vidas := contador_vidas - 1;
		END if;
		
		if (entrada(6) = '1') then
			contador_vidas := contador_vidas - 1;
		END if;
		
		if (entrada(8) = '1' ) then
			contador_vidas := contador_vidas - 1;
		END if;
		
		-- Condição para perder (P no display)
		if contador_vidas = 0 then	
			output_1 := "1011";
			output_2 := "1011";
			output_3 := "1011";
			output_4 := "1011";
			output_5 := "1011";
			output_6 := "1011";
		END if;
		
		-- Condição para ganhar (G no display)
		if (contador_acertos = 6 AND contador_vidas > 0) then
			output_1 := "1100";
			output_2 := "1100";
			output_3 := "1100";
			output_4 := "1100";
			output_5 := "1100";
			output_6 := "1100";
		END if;
		
		-- Reset para reiniciar o jogo
		if entrada(10) = '1' then		
			contador_vidas := 3;
			output_1 := "1010";
			output_2 := "1010";
			output_3 := "1010";
			output_4 := "1010";
			output_5 := "1010";
			output_6 := "1010";

		END if;
		
		-- Atribuir os valores às saídas finais
		digito_1 <= output_1;		
		digito_2 <= output_2;
		digito_3 <= output_3;
		digito_4 <= output_4;
		digito_5 <= output_5;
		digito_6 <= output_6;
		
		CASE contador_vidas IS
			when 3 => vidas <= "111"; -- Vidas -> 3
			when 2 => vidas <= "011"; -- Vidas -> 2
			when 1 => vidas <= "001"; -- Vidas -> 1
			when 0 => vidas <= "000"; -- Vidas -> 0
		END CASE;
		
	END PROCESS;

END hardware;
