#!/bin/bash
sudo nmap -sF -p 80-85 $1 -T2 -f
