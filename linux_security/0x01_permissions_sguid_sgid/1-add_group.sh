#!/bin/bash
addgroup $1
chown :$1 $2
chmod g+x $2
