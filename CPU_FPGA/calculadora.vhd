ENTITY calculadora is
		port(a, b : in integer range 0 to 15;
			  s0, s1: in BIT;
			  saida: out integer range 0 to 15);
END calculadora;

architecture ULA of calculadora is
	begin
		saida <= a + b when s0 = '0' and s1 = '0' else
					b * 2 when s0 = '1' and s1 = '0' else
					a - b when s0 = '0' and s1 = '1' else 
					b / 2 when s0 = '1' and s1 = '1';
end ULA;