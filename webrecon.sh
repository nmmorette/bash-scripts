#!/bin/bash
#sript para recon de diretorios em sites
for palavra in $(cat /home/venomsnake/Documents/wordlists/master.txt)
do
resp=$(curl -s -H "User-Agent: SimasTurbando " -o /dev/null -w "%{http_code}" $1/$palavra/)
if  [[ $resp == "200" ]]
then
echo " Diretorio encontrado: http://$1/$palavra"
fi
done
