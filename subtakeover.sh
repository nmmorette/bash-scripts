#!/bin/bash
###subtakeover.sh
###---------------------------------------------------------------
### Objective: find CNAME for subdomaintakover
###---------------------------------------------------------------
### Author: Natan Morette
###---------------------------------------------------------------
### Example: ./subtakeover.sh google.com
###---------------------------------------------------------------
for palavra in $(cat "INSERT YOUR WORDLIST HERE, YOU CAN DOWNLOAD ONE HERE: https://github.com/nmmorette/worldlist);do
host -t cname $palavra.$1 | grep "alias for" 
done
