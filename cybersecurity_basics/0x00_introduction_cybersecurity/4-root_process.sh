#!/bin/bash
ps aux | grep $1 | grep -v '^[ ]' | awk '$5 > 0 or $6 > 0'
