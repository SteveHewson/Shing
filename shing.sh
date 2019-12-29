#!/bin/bash

clear

read -p "Which IP Address would you like to ping?	" host
read -p "How many times would you like to ping?		" count
echo -e "\n##############################################################\n"
ping $host -c $count > qbtumwxbvjhwqVFusijfitObpJiYcc.txt
cat qbtumwxbvjhwqVFusijfitObpJiYcc.txt | sed 's/.*[Pp][Ii][Nn][Gg].*//' | sed 's/.*PING.*//' | sed 's/.*bytes.*//' | sed 's/.*packet.*//' | sed 's/.* = /Minimum: /' | sed -e $'s/\// ms\\\n─────────────────\\\nAverage: /' | sed -e $'s/\// ms\\\n─────────────────\\\nMaximum: /' | sed -e $'s/\// ms\\\n─────────────────\\\nStd_Dev: /' | sed '/^\s*$/d'
rm qbtumwxbvjhwqVFusijfitObpJiYcc.txt
