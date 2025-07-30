#!/bin/bash
cat auth.log | awk '/useradd/' | cut -d " " -f 8 | sort | uniq | awk -F'=' '{printf $2}' | sed 's/,$/\n/'
