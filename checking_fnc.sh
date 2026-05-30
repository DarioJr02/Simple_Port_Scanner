#! /bin/bash

determine_port_range() {
  local -n L_RANGE_TO_CHECK=$1
  if [[ ${#L_RANGE_TO_CHECK[@]} -eq $((${#L_RANGE_TO_CHECK[@]} + 0)) ]]; then
    printf "PORTS %s: %s [INITIALIZED]\n\n" "$2" "${#L_RANGE_TO_CHECK[@]}"
  fi

  if [[ ${#L_RANGE_TO_CHECK[@]} -eq $((${#L_RANGE_TO_CHECK[@]} + 1024)) ]]; then
    printf "PORTS %s: %s [INITIALIZED]\n\n" "$2" "${#L_RANGE_TO_CHECK[@]}"
  fi

  if [[ ${#L_RANGE_TO_CHECK[@]} -eq $((${#L_RANGE_TO_CHECK[@]} + 16385)) ]]; then
    printf "PORTS %s: %s [INITIALIZED]\n\n" "$2" "${#L_RANGE_TO_CHECK[@]}"
  fi

}

check_array_size() {
  local -n L_A_TO_CHECK=$1
  #local SIZE+=${L_A_TO_CHECK[*]}
  printf "The Array size is %s.\n\n" "${#L_A_TO_CHECK[@]}"
}
