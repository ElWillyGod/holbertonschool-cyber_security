#!/bin/bash
cat auth.log | grep "iptables" | grep "IMPUT" | wc -l
