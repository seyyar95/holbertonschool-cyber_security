#!/bin/bash
echo $1 | sha1sum | awk '{print($1)}' > 0_hash.txt
