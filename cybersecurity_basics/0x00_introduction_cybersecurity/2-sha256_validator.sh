#!/bin/bash
echo "$(sha256sum $1 | awk '{print $1 == $2 ? "OK" : "Invalid"}')"

