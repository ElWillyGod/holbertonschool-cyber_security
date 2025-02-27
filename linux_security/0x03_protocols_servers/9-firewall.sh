#!/bin/bash
iptables -A INPUT -j DROP
iptables -A OUTPUT -p tcp --dport ssh -j ACCEPT
