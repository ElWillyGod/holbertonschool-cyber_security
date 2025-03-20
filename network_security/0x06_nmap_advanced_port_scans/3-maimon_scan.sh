#!/bin/bash
sudo nmap -sm -p http,https,ftp,ssh,telnet -vv --reason $1
