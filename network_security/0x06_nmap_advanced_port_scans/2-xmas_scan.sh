#!/bin/bash
sudo nmap -sX -p 440-450 --open -v --packet-trace $1 --reason
