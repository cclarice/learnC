function compare {
  if [[ $OUT == $TEST ]]
  then
    printf "\e[102;30m OK \e[0m "
  else
    printf "\e[101;30m KO \e[0m "
  fi
}