printf "  \033[103;30m Piscine Day 02 \033[0m\n"
function run_test {
  cd ./$CTEST
  if [[ -f test.sh ]]
  then
    ./test.sh $CTEST
  else
    printf "    \033[101;30m %s \033[0m\n" $CTEST
  fi
  cd ..
}
TESTS=('ex00' 'ex01' 'ex02' 'ex03' 'ex04' 'ex05' 'ex06' 'ex07')

for str in ${TESTS[@]}
do
  CTEST=$str; run_test
done