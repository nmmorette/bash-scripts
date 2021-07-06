#!/bin/bash
#Metafind search, download based on Google Dorcking
#

export RED='\033[0;31m'
export GREEN='\u001b[32;1m' 
export NC='\033[0m'
export Y='\u001b[33m' 

if [ "$1" == "" ] & [ "$2" == "" ]
then
	echo -e "${RED}================================================="
	echo -e " Sintax: ./metafind www.site.com filextention"
	echo -e "Example ./metafind www.tesla.com.br pdf"
	echo -e "================================================="${NC}
else
	
	echo -e "${GREEN}Start search..."${NC}
#Simple loading status
	echo -ne ${GREEN}'#####                     (33%)\r'

	sleep 1

	echo -ne '#############             (66%)\r'

	sleep 1

	echo -ne '#######################   (100%)\r'${NC}

	echo -ne '\n'
# End of loading status


	lynx --dump "https://google.com/search?&q=site:$1+ext:$2" | grep ".$2" | cut -d "=" -f2 | egrep -v "site|google" | sed 's/...$//' > temp 
      	                           
echo -e "${Y}=================================================="
echo -e "=============File URL =============================="
echo -e "======================================================"${NC}
cat temp 

fi                        


for url in $(cat temp);do wget -q $url;done
echo -e "${GREEN}Download files"

echo -ne '#####                     (33%)\r'
sleep 1
echo -ne '#############             (66%)\r'
sleep 1
echo -ne '#######################   (100%)\r'${NC}
echo -ne '\n'

echo -e "${RED}################################################"
echo -e " Complete File INFO:"
echo -e "#################################################"${NC}

for arquivo in $(ls | grep .$2);do exiftool $arquivo;done

