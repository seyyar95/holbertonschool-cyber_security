#!/bin/bash
cat auth.log | awk '/Accepted password/ {for (i = 1; i <= NF; i++) if ($i == "from") ip=$(i+1) IPS[ip]++} END {print length(IPS)}'
