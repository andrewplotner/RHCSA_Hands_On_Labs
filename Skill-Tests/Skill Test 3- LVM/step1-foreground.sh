#!/bin/bash

touch /tmp/check-script

ssh node01 useradd -m mary -p password

useradd -m bob -p password

cd /home/bob ; touch {file1,file2,file3,deploy.sh}

GREEN=`tput setaf 2`; RESET=`tput sgr0`

echo 'echo "bash /tmp/check-script"' > deploy.sh

tar -zcf deploy_content.tar.gz file1 file2 file3 deploy.sh
/check

echo	'#!/bin/bash' > /tmp/check-script
echo	'################################' >> /tmp/check-script
echo	'#Description of function: Print a given message in color' >> /tmp/check-script
echo	'#Arguments:"color""text"' >> /tmp/check-script
echo	'#Colors accepted: green red ' >> /tmp/check-script

echo	'################################' >> /tmp/check-script
echo	'function print_color(){ ' >> /tmp/check-script
echo	'case $1 in' >> /tmp/check-script
echo	'"green")COLOR="\033[0;32m";;' >> /tmp/check-script
echo	'"red")COLOR="\033[0;32m";;' >> /tmp/check-script
echo	'"*")COLOR="\033[0m";;' >> /tmp/check-script
echo	'esac' >> /tmp/check-script
echo	'echo -e "${COLOR} $2 ${NC}"' >> /tmp/check-script
echo	'}' >> /tmp/check-script

echo	'############################' >> /tmp/check-script
echo	'#Description: Compares two strings' >> /tmp/check-script
echo	'#Arguments: String1 String2 number' >> /tmp/check-script
echo	'###########################' >> /tmp/check-script
echo	'function comparison(){' >> /tmp/check-script
echo	'if [[ $1 == $2 ]]' >> /tmp/check-script
echo	'then' >> /tmp/check-script
echo	'print_color "green" "Objective ${3} Complete"' >> /tmp/check-script
echo	'else' >> /tmp/check-script
echo	'print_color "red" "Objective ${3} Failed ${RESET}"' >> /tmp/check-script
echo	'exit 1 ' >> /tmp/check-script
echo	'fi' >> /tmp/check-script
echo	'}' >> /tmp/check-script 

echo	'################checks###########################' >> /tmp/check-script

echo	'SSHCHECK=$( ls /home/mary/.ssh | grep authorized_keys )' >> /tmp/check-script

echo	'comparison "${SSHCHECK}" "authorized_keys" "1" ' >> /tmp/check-script


echo	'TARCHECK=$( cat /home/mary/tar-output.log | grep "deploy.sh" )' >> /tmp/check-script

echo	'comparison "${TARCHECK}" "file*" "2" ' >> /tmp/check-script

echo	'UMASKCHECK=$( umask )' >> /tmp/check-script

echo	'comparison $UMASKCHECK 0066 3 ' >> /tmp/check-script

echo	'print_color "green" "You Freaking Rock ${RESET}"	' >> /tmp/check-script



