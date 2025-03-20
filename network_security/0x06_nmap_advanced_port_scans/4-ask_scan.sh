#!/bin/bash
sudo nmap -sA -p $2 --reason $1 --host-timeout 1s
