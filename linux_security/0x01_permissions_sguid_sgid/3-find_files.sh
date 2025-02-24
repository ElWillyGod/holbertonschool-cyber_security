#!/bin/bash
find $1 -type f -exec ls -l {} -perm 4000 + 2>/dev/null
