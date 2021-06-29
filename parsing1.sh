#!/bin/bash
#Parsing HTML

export GREEN='\033[0;32m'
export RED='\033[0;31m'
export PURPLE='\e[35m'
export NC='\033[0m' # No Color

echo -e "${GREEN}Digite o dominio:${NC}"

read dominio
echo -e 
echo -e ${PURPLE}==============================================================================================${NC}
echo -e				"${GREEN}       Efetuando varredura:${NC}" ${RED} $dominio
echo -e ${PURPLE}==============================================================================================${NC}				
wget $dominio > /dev/null 2>&1

#grep href index.html | cut -d "/" -f 3 | grep "\." | cut -d "'" -f 1 | grep -v "<l" | uniq -u >  lista
grep href index.html | cut -d "/" -f 3 | grep "\." | cut -d '"' -f 1 | grep -v "<l" | uniq -u  >  lista

for url in $(cat lista);do host $url | grep "has address";done 
 

rm index.html
rm lista
 



