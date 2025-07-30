#!/bin/bash
cat auth.log | awk '/useradd/' | cut -d " " -f 8 | awk -F'=' '{printf $2}' | sort | sed 's/,$//'
