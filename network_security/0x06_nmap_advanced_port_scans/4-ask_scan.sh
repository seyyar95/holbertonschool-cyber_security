#!/bin/bash
sudo nmap -PA --reason --host-timeout 1000 -p $2 $1
