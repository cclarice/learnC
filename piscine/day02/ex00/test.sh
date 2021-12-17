source '../../../test/compare.sh'
source '../../../test/compile.sh'
TEST_NAME=$1
TEST_LIBS=test.c\ ../test/ft_putchar.c
TEST_SRCS=ft_print_alphabet.c

compile

OUT=`./$TEST_NAME.out`; TEST='abcdefghijklmnopqrstuvwxyz'; compare
printf '\n'
rm *.out