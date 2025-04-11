#!/bin/bash
grep -oP '(?<=new user: name=)[^ ]+' auth.log | cut -d',' -f1 | sort -u | paste -sd ,

