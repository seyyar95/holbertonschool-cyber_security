#!/bin/bash
sudo nmap -sM --reason -vv -p http,https,ftp,ssh,telnet $1
