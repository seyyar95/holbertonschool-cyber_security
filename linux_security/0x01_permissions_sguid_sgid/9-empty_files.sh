#!/bin/bash
find $1 -empty -type f  -exec chmod 777 {} \;
