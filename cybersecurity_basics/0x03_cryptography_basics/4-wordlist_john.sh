#!/bin/bash
john --wordlist=rockyou.txt $1 --format=Raw-MD5 > 4-password.txt
