function compile {
  printf "    \e[103;30m $TEST_NAME \e[0m "
  printf "\e[104;30m COMPILING... \e[0m "
  if [[ -f $TEST_SRCS ]]
  then
    export COMPILE_OUTPUT=`clang $TEST_SRCS $TEST_LIBS -o $TEST_NAME.out 2>&1`
  else
    printf '\e[15D\e[101;30m COMPILING ERROR \e[0m \e[100;30m File %s does not exist \e[0m\n' $TEST_SRCS
    exit 1
  fi
  if [[ -f $TEST_NAME.out ]]
  then
    printf '\e[15D\e[102;30m COMPILED \e[0m '
  else
    printf '\e[15D\e[101;30m COMPILING ERROR \e[0m\n\e[100m '
    clang $TEST_SRCS $TEST_LIBS -o $TEST_NAME.out 2>&1
    printf '\e[0m'
    exit 2
  fi
}