#!/bin/bash
cat auth.log | awk '/useradd/ {for (i = 0; i <= NF; i++) if ($i == "user:") split($(i+1),a,"=") u[a[2]]} END {for (i in u) print i }' | sort | awk '{printf $1}' | sed 's/,$/ /'
