#!/bin/bash

pre_keys=a

#code_list=('=ေ')

#code_list=('s=ျ' 'G=ွ' 'S=ှ' 'R=ျွ' 'sG=ျွ' 'sS=ျှ' 'Q=ျှ' 'sGS=ျွှ' 'W=ျွှ')

#code_list=('s=ျ' 'j=ြ' 'M=ြ' 'N=ြ' 'B=ြ' '`j=ြ' '~j=ြ' '`M=ြ' '~M=ြ' 'G=ွ' 'S=ှ' 'R=ျွ' 'sG=ျွ' 'jG=ြွ' 'MG=ြွ' 'NG=ြွ' 'BG=ြွ' '`jG=ြွ' '~jG=ြွ' '`MG=ြွ' '~MG=ြွ' 'sS=ျှ' 'Q=ျှ' 'jS=ြှ' 'MS=ြှ' 'NS=ြှ' 'BS=ြှ' '`jS=ြှ' '~jS=ြှ' '`MS=ြှ' '~MS=ြှ' 'sGS=ျွှ' 'W=ျွှ' 'jGS=ြွှ' 'MGS=ြွှ' 'NGS=ြွှ' 'BGS=ြွှ' '`jGS=ြွှ' '~jGS=ြွှ' '`MGS=ြွှ' '~MGS=ြွှ' 'GS=ွှ')

code_list=('=ေ' 's=ျေ' 'j=ြေ' 'M=ြေ' 'N=ြေ' 'B=ြေ' '`j=ြေ' '~j=ြေ' '`M=ြေ' '~M=ြေ' 'G=ွေ' 'S=ှေ' 'R=ျွေ' 'sG=ျွေ' 'jG=ြွေ' 'MG=ြွေ' 'NG=ြွေ' 'BG=ြွေ' '`jG=ြွေ' '~jG=ြွေ' '`MG=ြွေ' '~MG=ြွေ' 'sS=ျှေ' 'Q=ျှေ' 'jS=ြှေ' 'MS=ြှေ' 'NS=ြှေ' 'BS=ြှေ' '`jS=ြှေ' '~jS=ြှေ' '`MS=ြှေ' '~MS=ြှေ' 'sGS=ျွှေ' 'W=ျွှေ' 'jGS=ြွှေ' 'MGS=ြွှေ' 'NGS=ြွှေ' 'BGS=ြွှေ' '`jGS=ြွှေ' '~jGS=ြွှေ' '`MGS=ြွှေ' '~MGS=ြွှေ' 'GS=ွှေ' 'T=ွှေ')

#code_list=('j=ြ' 'M=ြ' 'N=ြ' 'B=ြ' '`j=ြ' '~j=ြ' '`M=ြ' '~M=ြ' 'sG=ျွ' 'jG=ြွ' 'MG=ြွ' 'NG=ြွ' 'BG=ြွ' '`jG=ြွ' '~jG=ြွ' '`MG=ြွ' '~MG=ြွ' 'jS=ြှ' 'MS=ြှ' 'NS=ြှ' 'BS=ြှ' '`jS=ြှ' '~jS=ြှ' '`MS=ြှ' '~MS=ြှ' 'jGS=ြွှ' 'MGS=ြွှ' 'NGS=ြွှ' 'BGS=ြွှ' '`jGS=ြွှ' '~jGS=ြွှ' '`MGS=ြွှ' '~MGS=ြွှ')

test -f word_out.txt && rm word_out.txt

freq=900
for key_map in "${code_list[@]}"; do
  post_codes="${key_map##*=}"
  post_keys="${key_map%%=*}"
  while IFS=$'\t' read -r key code
  do
    if [[ $post_keys =~ [jMNB] ]]; then
      jMNB=$(echo $post_keys | grep -o -e '[jMNB]')
      echo -e "${pre_keys}${post_keys%%$jMNB*}${jMNB}${key}${post_keys##*$jMNB}\t${code}${post_codes}\t${freq}" >> word_out.txt
      #echo -e "${pre_keys}${post_keys%%$jMNB*}${jMNB}${key}F${post_keys##*$jMNB}\tင်္${code}${post_codes}\t${freq}" >> word_out.txt
    else
      echo -e "${pre_keys}${key}$post_keys\t${code}${post_codes}\t${freq}" >> word_out.txt
      #echo -e "${pre_keys}${key}F$post_keys\tင်္${code}${post_codes}\t${freq}" >> word_out.txt
    fi
  done < mm_zguni_list.txt
  ((freq--))
done
