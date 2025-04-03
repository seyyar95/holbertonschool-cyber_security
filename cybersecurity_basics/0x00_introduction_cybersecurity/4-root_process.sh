#!/bin/bash
ps aux | grep $1 | grep -vE ^\s*[0-9]+\s+\S+\s+0\s+0\s+
