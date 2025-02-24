#!/bin/bash
john --wordlist=rockyou.txt $1 --format=NT > 5-password.txt
