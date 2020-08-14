
#!/bin/bash
################################
#Description of function: Print a given message in color
#Arguments:"color""text"
#Colors accepted: green red 

################################
function print_color(){ 
case $1 in
"green")COLOR="\033[0;32m";;
"red")COLOR="\033[0;31m";;
"*")COLOR="\033[0m";;
esac
echo -e "${COLOR} $2 ${NC}"
}

############################' >> /tmp/check-script
#Description: Compares two strings' >> /tmp/check-script
#Arguments: String1 String2 number' >> /tmp/check-script
###########################' >> /tmp/check-script
function comparison(){
if [[ $1 == $2 ]]
then
print_color "green" "Objective ${3} Complete"
else
print_color "red" "Objective ${3} Failed ${RESET}"
exit 1 
fi
}

################checks###########################
RESET=$(tput sgr0)

SSHCHECK=$( ls /home/mary/.ssh | grep authorized_keys )

comparison "${SSHCHECK}" "authorized_keys" "1"

TARCHECK=$( cat /home/mary/tar-output.log | grep "check.sh" )

comparison "${TARCHECK}" "check.sh" "2" 

UMASKCHECK=$( umask )

comparison $UMASKCHECK 0066 3 

print_color "green" "You Freaking Rock ${RESET}"



