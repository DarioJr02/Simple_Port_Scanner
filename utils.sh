#! /bin/bash

# Title
print_title() {
  figlet -tf Banner3-D "Simple Port Scanner"
  printf "||||| Select and option below |||||\n\n"
}

# Read the input

check_array_size() {
  local -n L_A_TO_CHECK=$1
  #local SIZE+=${L_A_TO_CHECK[*]}
  printf "The Array size is %s.\n\n" "${#L_A_TO_CHECK[@]}"

  #if [[ ]]; then

  #fi
}

P_WELL_KNOWN=()
P_REGISTERED=()
P_DYNAMIC=()

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

#populate_arr 0 1023 P_WELL_KNOWN
populate_arr 1024 49151 P_REGISTERED
