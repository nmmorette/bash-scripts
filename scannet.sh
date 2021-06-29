#!/bin/bash
###scannet.sh
###---------------------------------------------------------------
### Objective: Scan all network for a specify open port
### need root access
###---------------------------------------------------------------
### Author: Natan Morette
###---------------------------------------------------------------
if [ "$1" == "" ]
then 
	echo "PORTSCAN NETWORK"
	echo "MUse mode : $0 REDE PORTA"
	echo "Example: $0 172.16.1 80"
else
for ip in  {1..254};
do
	hping3 -S -p $2 -c 1 $1.$ip 2> /dev/null | grep "flags=SA" | cut -d " " -f 2 | cut -d "=" -f 2;
done
fi
