#include "ft_putchar.h"

/**
 * Prints one char
 *
 * @param c - character that will be print
 */

void
	ft_putchar(char c) {
	write(1, &c, 1);
}