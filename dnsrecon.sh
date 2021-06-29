#!/bin/bash
###dnsrecon.sh
###---------------------------------------------------------------
### Objective: Simple DNS recon brute force
###---------------------------------------------------------------
### Author: Natan Morette
###---------------------------------------------------------------
### Use: ./dnsrecon.sh example.com
###---------------------------------------------------------------
for palavra in $(cat "USE SUBDOMAIN.TXT WORDLIST, DOWNLOAD: https://github.com/nmmorette/worldlist );do
	host $palavra.$1 | grep -v "NXDOMAIN" 
done
