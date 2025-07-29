#!/bin/bash
cat auth.log | awk '/Accepted password for root/ {for (i = 1; i < NF; i++) if ($i == "from") ip=$(i+1); if (ip != "") IPS[ip]++} END {for (i in IPS) print i}'
