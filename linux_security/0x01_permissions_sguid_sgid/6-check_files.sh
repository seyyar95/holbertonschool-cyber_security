#!/bin/bash
find $1 -perm -ug=s -mtime -1 -type f -exec ls -ldb {} \; 2>/dev/null
