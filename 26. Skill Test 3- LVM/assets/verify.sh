
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
PVCHECK=$( pvdisplay | grep "vdd" | awk '{print $3}' | grep vdd )

comparison ${PVCHECK} "/dev/vdd" "1"

VGCHECK=$( vgdisplay all-terrain | grep "all-terrain" | awk '{print $3}' )

comparison "${VGCHECK}" "all-terrain" "2" 

LVCHECK=$( lvdisplay /dev/all-terrain/venomoth | grep "LV Size" | awk '{print $3 $4}' )

comparison $LVCHECK "<5.20GiB" "3" 

MOUNTCHECK=$( lsblk | grep "/mount/AATTVVV" | awk '{print $7}')

comparison $MOUNTCHECK "/mount/AATTVVV" "4-Mounted"

PCHECK=$( cat /etc/fstab | grep "AATTVVV" | awk '{print $3}' )

comparison $PCHECK "xfs" "4-Persistent"

SCHECK=$( df -h | grep "AATTVVV" | awk '{print $4}' )

comparison $SCHECK "5.2G" "5"


print_color "green" "You Freaking Rock "

