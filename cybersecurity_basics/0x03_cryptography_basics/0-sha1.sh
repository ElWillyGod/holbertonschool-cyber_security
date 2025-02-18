#!/bin/bash
#  Recibo un argumento y guardo su sha1 en 0_hash.txt
echo -n $1 | sha1sum | cut -d ' ' -f 1 > 0_hash.txt
