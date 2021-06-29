#!/bin/bash
for palavra in $(cat /home/venomsnake/Documents/wordlists/subdomain.txt);do
	host $palavra.$1 | grep -v "NXDOMAIN" 
done
