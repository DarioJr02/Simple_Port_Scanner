#! /bin/bash

determine_port_range() {
  local -n l_range_to_check=$1
  if [[ ${#l_range_to_check[@]} -eq $((${#l_range_to_check[@]} + 0)) ]]; then
    printf "ports %s: %s [initialized]\n\n" "$2" "${#l_range_to_check[@]}"
  fi

  if [[ ${#l_range_to_check[@]} -eq $((${#l_range_to_check[@]} + 1024)) ]]; then
    printf "ports %s: %s [initialized]\n\n" "$2" "${#l_range_to_check[@]}"
  fi

  if [[ ${#l_range_to_check[@]} -eq $((${#l_range_to_check[@]} + 16385)) ]]; then
    printf "ports %s: %s [initialized]\n\n" "$2" "${#l_range_to_check[@]}"
  fi

  # estos outputs deberían ir a log.txt

}

check_array_size() {
  local -n l_a_to_check=$1
  #local size+=${l_a_to_check[*]}
  printf "Port range size is %s.\n\n" "${#l_a_to_check[@]}"
}
