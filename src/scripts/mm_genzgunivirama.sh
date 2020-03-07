#!/bin/bash

#pre_keys=a
virama=္
virama_key='`'

code_list=('=')
#code_list=('=ေ' 'j=ြေ' 'M=ြေ' 'N=ြေ' 'B=ြေ' '`j=ြေ' '~j=ြေ' '`M=ြေ' '~M=ြေ')
freq=500

test -f word_out.txt && rm word_out.txt
for key_map in "${code_list[@]}"; do
  post_codes="${key_map##*=}"
  post_keys="${key_map%%=*}"
  while IFS=$'\t' read -r key1 code1
  do
    while read -r key2 code2
    do
      echo -e "${pre_keys}${post_keys}${key1}${virama_key}${key2}\t${code1}${virama}${code2}${post_codes}\t${freq}" >> word_out.txt
    done < zgvirama_sub.txt
  done < zgvirama_super.txt
  ((freq--))
done
