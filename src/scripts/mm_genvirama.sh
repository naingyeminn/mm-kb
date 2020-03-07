#!/bin/bash

pre_keys=a
pre_codes=္

code_list=('=ေ' 'j=ြေ')

test -f word_out.txt && rm word_out.txt
for key_map in "${code_list[@]}"; do
  post_codes="${key_map##*=}"
  post_keys="${key_map%%=*}"
  while IFS=$'\t' read -r key1 code1
  do
    freq=300
    while read -r key2 code2
    do
      echo -e "${pre_keys}${key1}F${key2}${post_keys}\t${code1}${pre_codes}${code2}${post_codes}\t${freq}" >> word_out.txt
      ((freq--))
    done < virama_sub.txt
  done < virama_super.txt
done
