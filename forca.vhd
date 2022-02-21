library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use IEEE.STD_LOGIC_1164.ALL;

ENTITY forca IS
PORT (
		-- Entrada
		V_SW	:	in	std_logic_vector(10 downto 0);	
		
		-- Saídas para o display
		HEX5	:	out	std_logic_vector(6 downto 0);	
		HEX4	:	out	std_logic_vector(6 downto 0);	
		HEX3	:	out	std_logic_vector(6 downto 0);	
		HEX2	:	out	std_logic_vector(6 downto 0);		
		HEX1	:	out	std_logic_vector(6 downto 0);		
		HEX0	:	out	std_logic_vector(6 downto 0);
		
		HEX6	:	out	std_logic_vector(2 downto 0)

);
END forca;

ARCHITECTURE comportamento OF forca IS

	-- Sinais da máquina de estados
	signal saida1_main : std_logic_vector(3 downto 0);	
	signal saida2_main : std_logic_vector(3 downto 0);
	signal saida3_main : std_logic_vector(3 downto 0);
	signal saida4_main : std_logic_vector(3 downto 0);
	signal saida5_main : std_logic_vector(3 downto 0);
	signal saida6_main : std_logic_vector(3 downto 0);
	signal vidas_main  : std_logic_vector(2 downto 0);
	
	-- Sinais do decodificador
	signal s1_decod		:	std_logic_vector(6 downto 0);
	signal s2_decod		:	std_logic_vector(6 downto 0);
	signal s3_decod		:	std_logic_vector(6 downto 0);
	signal s4_decod		:	std_logic_vector(6 downto 0);
	signal s5_decod		:	std_logic_vector(6 downto 0);
	signal s6_decod		:	std_logic_vector(6 downto 0);
	
	
	-- Declarando dos componentes

	COMPONENT logica IS
	PORT(
		entrada	:	in 	std_logic_vector(10 downto 0);
		digito_1	:	out	std_logic_vector(3 downto 0);
		digito_2	:	out	std_logic_vector(3 downto 0);
		digito_3	:	out	std_logic_vector(3 downto 0);
		digito_4	:	out	std_logic_vector(3 downto 0);
		digito_5	:	out	std_logic_vector(3 downto 0);
		digito_6	:	out	std_logic_vector(3 downto 0);
		vidas		:	out	std_logic_vector(2 downto 0)
	);
	END COMPONENT;
	
	COMPONENT decodificador IS
	PORT(
		entrada_decod	:	in	std_logic_vector(3 downto 0);
		saida_decod		:	out	std_logic_vector(6 downto 0)
		);
	END COMPONENT;
	
BEGIN

	out_main	:	logica PORT MAP (V_SW(10 downto 0), saida1_main, saida2_main, saida3_main, saida4_main, saida5_main, saida6_main, vidas_main);
	
	-- Obtendo a saída decodificada
	out_decod_0	:	decodificador PORT MAP (saida1_main, s1_decod);
	out_decod_1	:	decodificador PORT MAP (saida2_main, s2_decod);
	out_decod_2	:	decodificador PORT MAP (saida3_main, s3_decod);
	out_decod_3	:	decodificador PORT MAP (saida4_main, s4_decod);
	out_decod_4	:	decodificador PORT MAP (saida5_main, s5_decod);
	out_decod_5	:	decodificador PORT MAP (saida6_main, s6_decod);

	
	-- Atribuindo o valor de saída ao display
	HEX0(6 downto 0) <= s1_decod;			
	HEX1(6 downto 0) <= s2_decod;
	HEX2(6 downto 0) <= s3_decod;
	HEX3(6 downto 0) <= s4_decod;
	HEX4(6 downto 0) <= s5_decod;
	HEX5(6 downto 0) <= s6_decod;
	
	HEX6(2 downto 0) <= vidas_main;

END comportamento;
	
	