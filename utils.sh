#! /bin/bash

# Title
print_title() {
  figlet -tf Banner3-D "$1"
  printf "||||| Select an option below |||||\n"
}

get_public_ip() {
  # We catch the command.
  "$@"
}

get_private_ip() {

  ip route get 1.1.1.1 | awk '{print $7; exit}'
}

# Core function
populate_arr() {
  # We'll define 3 local variables
  #local N=0
  local BEGIN=$1
  local END=$2
  local -n A_TO_POPULATE=$3

  while [[ $BEGIN -le $END ]]; do
    A_TO_POPULATE+=("$BEGIN")
    ((BEGIN++))
  done

  check_array_size A_TO_POPULATE

}
