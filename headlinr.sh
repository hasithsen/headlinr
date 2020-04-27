#!/usr/bin/env bash

display_center() {
  columns="$(tput cols)"
  while IFS= read -r line; do
    printf "%*s\n" $(( (${#line} + columns) / 2)) "$line"
  done < "${1}"
}

display_right() {
  columns="$(tput cols)"
  while IFS= read -r line; do
    printf "%*s\n" $columns "$line"
  done < "${1}"
}

get_rand_int() {
  hl_count=$(ls ${hl_dir} | wc -w) # no. of headlines available
  return $((RANDOM % hl_count))
}

hl_dir="/home/mininet/scripts/headlinr/headlines"
last_rand_int=$(cat "${hl_dir}/../last_rand_int.txt")
get_rand_int
rand_int=$?

while [[ $last_rand_int == $rand_int ]]; do
  get_rand_int
  rand_int=$?
done

echo ${rand_int} > "${hl_dir}/../last_rand_int.txt"
content_file="${hl_dir}/hl_${rand_int}.txt"

#cat "${content_file}" | lolcat -h .32 -v .44
display_center "${content_file}"| lolcat -r #-h .32 -v .44
#display_right "${content_file}" | lolcat -r #-h .32 -v .44
#echo "" # empty-line-delimiter gets printed
