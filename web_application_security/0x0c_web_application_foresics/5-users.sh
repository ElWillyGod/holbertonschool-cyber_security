#!/bin/bash
cat auth.log | grep -oP "(?<=user=)[^ ]+" | sort -u | paste -sd ,
