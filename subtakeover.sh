#!/bin/bash
#script para descobrir registros CNAME para ataques de subdomain takeover

for palavra in $(cat lista.txt);do
host -t cname $palavra.$1 | grep "alias for" 
done
