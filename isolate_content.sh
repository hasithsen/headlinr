#!/usr/bin/env bash

hl_dir="/home/mininet/scripts/headlinr/headlines"
content_file="${hl_dir}/../content.txt"

mkdir -p "${hl_dir}"
i=0
while IFS= read -r line; do
  if [[ $line == "" ]]; then
    (( i=i+1 ))
    continue
  fi
  echo "$line" | xargs >> "${hl_dir}/hl_${i}.txt"
done < "${content_file}"
