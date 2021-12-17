source '../../../test/compare.sh'
source '../../../test/compile.sh'

TEST_NAME=${1}
TEST_LIBS=test.c\ ../test/ft_putchar.c
TEST_SRCS=ft_is_negative.c

compile

OUT=`./$TEST_NAME.out -5`; TEST='N'; compare
OUT=`./$TEST_NAME.out 5`; TEST='P'; compare
OUT=`./$TEST_NAME.out 0`; TEST='P'; compare
OUT=`./$TEST_NAME.out -2147483648`; TEST='N'; compare
printf '\n'
rm *.out