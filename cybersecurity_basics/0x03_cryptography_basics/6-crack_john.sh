#!/bin/bash
john --wordlist=rockyou.txt $1 --format=Raw-SHA256 > 6-password.txt
