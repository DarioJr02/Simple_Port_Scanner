#! /bin/bash
# if you want to debug at CLI: #! /bin/bash -x

source ./checking_fnc.sh
source ./utils.sh

# 1. Print Title
print_title "Simple Port Scanner"

declare -a P_WELL_KNOWN
declare -a P_REGISTERED
declare -a P_DYNAMIC

populate_arr 0 1023 P_WELL_KNOWN
populate_arr 1024 49151 P_REGISTERED
populate_arr 49151 65535 P_DYNAMIC

#printf "Size: %s" "${#P_WELL_KNOWN[@]}"

determine_port_range P_WELL_KNOWN P_WELL_KNOWN
determine_port_range P_REGISTERED P_REGISTERED
determine_port_range P_DYNAMIC P_DYNAMIC

IP_PUBLIC=$(get_public_ip curl -s ifconfig.me)
IP_PRIVATE=$(get_private_ip)

printf "My PUBLIC IP is: %s\n" "$IP_PUBLIC"
printf "My PRIVATE IP is: %s\n" "$IP_PRIVATE"
