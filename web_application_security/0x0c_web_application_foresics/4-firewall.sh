#!/bin/bash
cat auth.log | grep "iptables" | grep "INPUT" | wc -l
