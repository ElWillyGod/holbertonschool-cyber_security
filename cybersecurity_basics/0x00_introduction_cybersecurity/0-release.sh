#!/bin/bash
cat /etc/os-release | grep "^ID=" | cut -d "=" -f 2
