#!/bin/bash
find $1 -type f -perm /400 -o -perm /200 -mtime -1 -exec ls -l {} \;  2>/dev/null
