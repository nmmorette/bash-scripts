#!/bin/bash
###webrecon.sh
###---------------------------------------------------------------
### Objective: Webrecon/fuzz directories in websites 
###---------------------------------------------------------------
### Author: Natan Morette
###---------------------------------------------------------------
### Example: ./webrecon.sh businesscorp.com.br 
###---------------------------------------------------------------
for palavra in $(cat "INPUT YOUR WORDLIST HERE, download on here:https://github.com/nmmorette/worldlist)
do
resp=$(curl -s -H "User-Agent: Tony-Stark" -o /dev/null -w "%{http_code}" $1/$palavra/)
if  [[ $resp == "200" ]]
then
echo " Diretorio encontrado: http://$1/$palavra"
fi
done
