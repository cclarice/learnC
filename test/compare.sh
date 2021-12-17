function compare {
  if [[ "${OUT[@]}" == "${TEST[@]}" ]]
  then
    printf "\e[102;30m OK \e[0m "
  else
    printf "\e[101;30m KO \e[0m "
    printf "\n\e[100;30m expected: %s \e[0m " "${TEST[@]}"
    printf "\n\e[100;30m received: %s \e[0m\n                      " "${OUT[@]}"
  fi
}