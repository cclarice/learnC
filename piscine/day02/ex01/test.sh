source '../../../test/compare.sh'
source '../../../test/compile.sh'

TEST_NAME=EX01
TEST_LIBS=test.c\ ../test/ft_putchar.c
TEST_SRCS=ft_print_reverse_alphabet.c

compile

OUT=`./$TEST_NAME.out`; TEST='zyxwvutsrqponmlkjihgfedcba'; compare
printf '\n'
rm *.out