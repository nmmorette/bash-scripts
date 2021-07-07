#!/bin/bash

#verifica entradas do DNS e tenta um ataque de transfer dns para encontrar subdominios
for server in $(host -t ns $1 | cut -d " " -f 4 );do
	host -l -a $1 $server
done 

