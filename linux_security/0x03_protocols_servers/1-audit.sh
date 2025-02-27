#!/bin/bash
grep -Ev -e '^#' -e '^$' /etc/ssh/sshd_config
