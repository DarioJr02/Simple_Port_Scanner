#! /bin/bash

# title
print_title() {
  figlet -tf Banner3-D "$1"
  printf "||||| select an option below |||||\n"
}

get_public_ip() {
  # we catch the command.
  "$@"
}

get_private_ip() {

  ip route get 1.1.1.1 | awk '{print $7; exit}'
}

# core function
populate_arr() {
  # we'll define 3 local variables
  #local n=0
  local begin=$1
  local end=$2
  local -n a_to_populate=$3

  while [[ $begin -le $end ]]; do
    a_to_populate+=("$begin")
    ((begin++))
  done

  check_array_size a_to_populate
}

# Create files: directories, log.txt...

_mkdir() {
  local l_dir_name=$1
  local l_full_sign="${l_dir_name}_$(date +%Y-%m-%d-%H-%M-%S)"

  mkdir -pv "$l_full_sign"
}

_touch
