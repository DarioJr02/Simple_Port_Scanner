#! /bin/zsh

# Variables
#declare -A variables

#variables[p_wk_begin]=0
#variables[p_wk_end]=1023

#variables[p_r_begin]=1024
#variables[p_r_end]=49151

#variables[p_dy_begin]=49152
#variables[p_dy_end]=65535

# O hacer 3 arrays y poblarlos.

n=0
p_wk=()
p_r=()
p_dy=()

# Functions:
# - To poblate the variables arrays fnc(start, end)

# ------------------------------------------------
until [ $n -ge 1024 ]; do
  p_wk+=${n}
  ((n++))
done

if [ ${#p_wk[@]} -eq 1024 ]; then
  printf "\nEl tamaño de p_wd = ${#p_wk[@]}\n\n"
fi
# ------------------------------------------------
