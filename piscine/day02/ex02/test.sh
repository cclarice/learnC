source '../../../test/compare.sh'
source '../../../test/compile.sh'

TEST_NAME=EX02
TEST_LIBS=test.c\ ../test/ft_putchar.c
TEST_SRCS=ft_print_numbers.c

compile

OUT=`./$TEST_NAME.out`; TEST='0123456789'; compare
printf '\n'
rm *.out