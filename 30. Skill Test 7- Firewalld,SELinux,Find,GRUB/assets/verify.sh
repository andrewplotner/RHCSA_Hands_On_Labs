
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
"red")COLOR="\033[0;32m";;
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
print_color "red" "Objective ${3} Failed ${NC}"
exit 1 
fi
}
#
####Body of Code ####
#
PUBCHECK=$( firewall-cmd --zone=public --list-all | grep "80/tcp" | awk '{print $2}')

comparison ${PUBCHECK} "80/tcp" "1-public"

DENYCHECK=$( firewall-cmd --zone=block --list-all | grep "sources" | awk '{print $2}' )

comparison "${DENYCHECK}" "185.56.21.2" "1-block" 

HTTPDCHECK=$( cat /etc/httpd/conf/httpd.conf | grep "DocumentRoot " | awk '{print $2}' )

comparison $HTTPDCHECK "*/var/web*" "2" 

CURLCHECK=$( curl localhost/index.html )

comparison $CURLCHECK "this was made in /root" "3"

FCHECK=$( cat /root/old-files | grep "/rpc" )

comparison $FCHECK "/etc/rpc" "4"

echo "timeout=15" > /root/verify
echo "timeout=15" >> /root/verify
VERIFY=$( cat /root/verify)

GCHECK=$( cat /boot/grub2/grub.cfg | grep "timeout=15" | awk '{print $2}' )

comparison $GCHECK "$VERIFY" "5"


print_color "green" "You Freaking Rock "

