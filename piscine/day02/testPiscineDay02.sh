printf "  \033[103;30m Piscine Day 02 \033[0m\n"
function run_test {
  cd ./$CTEST
  ./test.sh
  cd ..
}
TESTS=('ex00' 'ex01' 'ex02')

for str in ${TESTS[@]}
do
  CTEST=$str; run_test
done