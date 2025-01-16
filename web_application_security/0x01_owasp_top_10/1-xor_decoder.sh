#!/bin/bash

password=$(echo "${1#'{xor}'}" | base64 -d)

passwordCrack=""

for i in $(seq 0 $((${#password}-1))); do
    passwordCrack="$passwordCrack$(printf \\$(printf '%03o' $(($(printf '%d' "'${password:$i:1}") ^ 95))))"
done

echo -e "$passwordCrack"
