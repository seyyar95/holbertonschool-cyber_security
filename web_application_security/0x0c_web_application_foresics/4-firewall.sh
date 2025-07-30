#!/bin/bash
cat auth.log | awk '/iptables -A/ {print $N}' | wc -l
