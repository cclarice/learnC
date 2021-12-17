#include <stdlib.h>

void	ft_is_negative(int n);
extern int atoi (const char *__nptr);

int	main(int argc, char *argv[]) {
	if (argc >= 2) {
		ft_is_negative( atoi(argv[1]));
	}
	return (0);
}