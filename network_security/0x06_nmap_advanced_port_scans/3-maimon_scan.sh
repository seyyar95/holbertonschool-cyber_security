#!/bin/bash
sudo nmap -sM --reason -v -p 80,443,21,22,23 $1
