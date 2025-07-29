#!/bin/bash
tail -1000 auth.log | awk '(/Failed password/) {F[$9]++} (/Accepted password/) {S[$9]++} END {for (i in S) if (F[i] > 0) print i }'
