#!/bin/bash
sudo nmap -sM --reason -v -p http,https,ftp,ssh,telnet $1
