#!/bin/bash

HORA_ATUAL=$(date +%H)
HORA=$(date +"%I:%M %p")

if [[ $HORA_ATUAL -lt 12 ]]
then
	echo "Bom dia!"
elif [[ $HORA_ATUAL -gt 12 && $HORA_ATUAL -lt 18 ]]
then
	echo "Boa tarde!"
else
	echo "Boa noite!"
fi
echo ""
echo "A hora atual é: $HORA"