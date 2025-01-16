#!/bin/bash
password=$(echo "${1#'{xor}'}" | base64 -d | tr -d '\0')

passwordCrack=""

for ((i=0; i< ${#password}; i++)); do 
	passwordCrack="$passwordCrack$(printf '\\x%x' $(printf $(($(printf '%d' "'${password:$i:1}") ^ 95))))"
done

echo -e "$passwordCrack"
