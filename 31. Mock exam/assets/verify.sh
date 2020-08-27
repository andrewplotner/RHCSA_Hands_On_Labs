
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
print_color "red" "Objective ${3} Failed ${NC}"
exit 1 
fi
}
#
####Body of Code ####
#
##Objective 1

comparison "1" "1" "1"

#
##Objective 2

SELinux=$( getenforce )
comparison "${SELinux}" "Enforcing" "2" 

#
##Objective 3

HOST=$( hostname )
comparison $HOST "district.example.com" "3-Hostname" 

IP=$( cat /etc/sysconfig/network-scripts/ifcfg-ens3 | awk -F= '/IPADDR/ {print $2 }')
comparison $IP "*172.17.0.20" "3-IP" 

NET=$( nmcli con show "System ens3" | awk '/ipv4.addresses:/ { print $2}' )
comparison $NET "*172.17.0.20/24" "3-Netmask" 

GW=$( cat /etc/sysconfig/network-scripts/ifcfg-ens3 | awk -F= '/GATEWAY/ {print $2 }' )
comparison $GW "172.17.0.254" "3-Gateway" 

DNS=$( cat /etc/sysconfig/network-scripts/ifcfg-ens3 | awk -F= '/DNS1/ {print $2 }' )
comparison $DNS "*172.17.0.254" "3-Nameserver" 

#
##Objective 4

YUM=$( grep "http://district.example.com/repo/rhel7" -r /etc/yum.repos.d | awk -F= '{print $2}')
comparison $YUM "http://district.example.com/repo/rhel7" "4"

#
##Objective 5

SWAP=$( lsblk | awk '/swap / {print $4}' )
comparison $SWAP "500M" "5"

#
##Objective 6

USER=$( cat /etc/group | awk -F: '/sysadmin/ {print $4}')
comparison $USER *harry* "6-Harry-sysadmin"

USER=$( cat /etc/group | awk -F: '/sysadmin/ {print $4}')
comparison $USER *susan* "6-Susan-sysadmin"

NATASHA=$( cat /etc/passwd | awk -F: '/natasha/ {print $7}')
comparison $NATASHA "/sbin/nologin" "6-Natasha-nologin"

#
##Objetive 7
cd /var/tmp
PERM=$( ls -l  | awk '/fstab/ {print $1}' )
comparison $PERM *r*-r*-r*-+ "7-Base Permissions"

SPERM=$( getfacl fstab | awk -F: '/susan/ {print $3}' )
comparison $SPERM "---" "7-Susan Permissions" 

NPERM=$( getfacl fstab | awk -F: '/natasha/ {print $3}')
comparison $NPERM "rw-" "7- Natasha Permissions" 

#
##Objective 8

SBITS=$( ls -l / | awk '/data/ {print $1}' )
comparison $SBITS d---rws---* "8- Special Bits"

GOWN=$( ls -l / | awk '/data/ {print $4}' )
comparison $GOWN sysadmin "8- Group ownership"

#
##Objective 9

comparison 1 1 "9 LDAP self-checked"

#
##Objective 10

NTP=$( grep "station.district.example.com" /etc/chrony.conf | awk '{print $1} ' )
comparison $NTP "server" "10"

#
##Objective 11

comparison 1 1 "11 Home-Dir self-checked"

#
##Objective 12

YUM1=$( grep "http://district.example.com/repo/errata" -r /etc/yum.repos.d | awk -F= '{print $2}')
comparison $YUM1 "http://district.example.com/repo/errata" "12- YUM"

DEFIND=$( grubby --default-index )
KERNEL=$( grubby --inf
comparison 2 "2" "12-Kernel" 

#
##Objective 13

CRON=$( grep "/bin/echo" -r /etc/cron* |  awk -F/ '/susan/ {print $2}' )
comparison $CRON "etc" "13"

#
##Objective 14

SWAP2=$( lvdisplay /dev/rhel/swap2 | awk '/LV Size/ {print $3}')
comparison $SWAP2 "512.00" "14"

#
##Objective 15

CONFA=$( ls -l /tmp/configcompare/configbackup/ | awk '/etc/ {print $5}' )
comparison $CONFA "8192" "15- A) config compare" 

CONFB=$( ls -l /root | awk '/archive.tar.bz2/ { print $5}' )
comparison $CONFB "481" "15 B) bzip"

#
##Objective 16

JANEUID=$( id jean | awk '{print $1}' )
comparison $JANEUID "*3564*" "16" 

#
##Objective 17

FIND=$( ls -l /home/lost+found | awk '/file3/ {print $9}' )

comparison $FIND *file3* "17"

#
##Objective 18

LVM2=$( cat /etc/fstab | awk '/lvm2/ {print $3}' ) 
comparison $LVM2 "ext4" "18"

#
##Objective 19

HEAD=$( awk '/Hoorah/ {print $1}' /home/student/headtail.txt)
comparison $HEAD "Hoorah" "19"

#
##Objective 20

JOURNAL=$( journalctl --since 09:05:00 --until 09:15:00 )
VERIFY=$( cat /home/student/systemdreview.txt )
V1=$( echo $JOURNAL | awk '{print $7 $13}' )
V2=$( echo $VERIFY | awk '{print $7 $13}' )
[[ $V1 == $V2 ]] && CHECK=$( echo 1 ) || CHECK=$( echo 0)
comparison $CHECK "1" "20"

#
##Objective 21

DENY=$( cat /etc/cron.deny | grep sasha)
comparison $DENY "sasha" "21"

#
##Objective 22

GREP=$( awk '/YES/ {print $2}' /root/lines.txt  )
comparison $GREP "YES" "22" 


print_color "green" "You Freaking Rock "

print_color "green" "Continue on to Objective 23"
