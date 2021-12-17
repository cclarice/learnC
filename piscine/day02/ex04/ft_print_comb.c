void	ft_putchar(char c);

void	ft_print_comb(void) {
	char x;
	char y;
	char z;

	x = '0';
	y = '1';
	z = '2';
	while (x <= '7') {
		while (y <= '8') {
			while (z <= '9') {
				ft_putchar(x);
				ft_putchar(y);
				ft_putchar(z++);
				if (x != '7') {
					ft_putchar(',');
					ft_putchar(' ');
				}
			}
			z = ++y + 1;
		}
		y = ++x + 1;
		z = x + 2;
	}
}