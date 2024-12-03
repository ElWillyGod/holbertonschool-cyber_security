#!/bin/bash
echo "$(sha256sum $1 | awk '{print $1}') $1" | cmp -s - <(echo $2 $1) && echo "$1: OK" || echo "$1: FAILED"
