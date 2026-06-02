#! /bin/bash
# if you want to debug at cli: #! /bin/bash -x

source ./checking_fnc.sh
source ./utils.sh

# 1. print title
print_title "Simple port scanner"

declare -a p_well_known
declare -a p_registered
declare -a p_dynamic

populate_arr 0 1023 p_well_known
populate_arr 1024 49151 p_registered
populate_arr 49151 65535 p_dynamic

determine_port_range p_well_known p_well_known
determine_port_range p_registered p_registered
determine_port_range p_dynamic p_dynamic

ip_public=$(get_public_ip curl -s ifconfig.me)
ip_private=$(get_private_ip)

printf "My public ip is: %s\n" "$ip_public"
printf "My private ip is: %s\n" "$ip_private"

printf "mkdir test:\n\n"

ir=$(_mkdir Log)
