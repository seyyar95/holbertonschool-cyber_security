#!/bin/bash
tr -dc '[:alnum:]' < /dev/urandom | head -c $1 | cut -c1-
