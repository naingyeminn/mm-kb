#!/bin/bash

pre_keys=a

code_list=('s=ျေ' 'j=ြေ' 'G=ွေ' 'S=ှေ' 'sG=ျွေ' 'jG=ြွေ' 'sS=ျှေ' 'jS=ြှေ' 'sGS=ျွှေ' 'jGS=ြွှေ' 'GS=ွှေ')

test -f word_out.txt && rm word_out.txt

for key_map in "${code_list[@]}"; do
  freq=500
  post_codes="${key_map##*=}"
  post_keys="${key_map%%=*}"
  while IFS=$'\t' read -r key code
  do
    echo -e "${pre_keys}${key}$post_keys\t${code}${post_codes}\t$freq" >> word_out.txt
    ((freq--))
  done < mm_char_medials.txt
done
