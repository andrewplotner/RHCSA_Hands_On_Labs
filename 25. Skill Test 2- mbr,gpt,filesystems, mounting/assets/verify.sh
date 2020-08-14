
#!/bin/bash
### Variables####
#
RESET=$(tput sgr0)
#
### Functions###
#
################################
#Description of function: Print a given message in color
#Arguments:"color""text"
#Colors accepted: green red 

################################
function print_color(){ 
case $1 in
"green")COLOR="\033[0;32m";;
"red")COLOR="\033[0;31m";;
"NC")COLOR="\033[0m";;
"*")COLOR="\033[0m";;
esac
echo -e "${COLOR} $2 ${RESET}"
}
############################
#Description: Compares two strings
#Arguments: String1 String2 number
###########################
function comparison(){
if [[ $1 == $2 ]]
then
print_color "green" "Objective ${3} Complete"
else
print_color "red" "Objective ${3} Failed"
exit 1 
fi
}
#
####Body of Code ####
#
MBRCHECK=$( gdisk -l /dev/vdb | grep -v Linux | awk '{print $4 $5}' | grep "2.0GiB" )

comparison "${MBRCHECK}" "2.0GiB" "1"


GPTCHECK=$( gdisk -l /dev/vdb | grep Linux | awk '{print $4 $5}' | grep "2.0GiB" )

comparison "${GPTCHECK}" "2.0GiB" "2" 

PERSISTENCECHECK=$( cat /etc/fstab | grep "/mount/gpt" | awk '{print $3}' )

comparison $PERSISTENCECHECK xfs "3" 

MOUNTCHECK=$( lsblk | grep /mount/mbr | awk '{print $7}')

comparison $MOUNTCHECK "/mount/mbr" "4"

print_color "green" "You Freaking Rock "

