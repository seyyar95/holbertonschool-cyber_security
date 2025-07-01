#!/bin/bash
find /usr/bin -perm -u=s -exec ls -ldb {} \; 2>/dev/null
