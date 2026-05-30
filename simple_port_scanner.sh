#! /bin/zsh

# Variables
declare -A variables

variables[p_wk_begin]=0
variables[p_wk_end]=1023

variables[p_r_begin]=1024
variables[p_r_end]=49151

variables[p_dy_begin]=49152
variables[p_dy_end]=65535

# O hacer 3 arrays y poblarlos.

n=0
p_wd=()
p_r=()
p_dy=()

# Functions:
# - To poblate the variables arrays fnc(start, end)

until [ $n -ge 1024 ]; do
  printf "index = ${p_w}"
  ((n++))
    p_wd+=${n}

printf "Loop poblado"

for i in p_wd; do
    printf "${i}"
