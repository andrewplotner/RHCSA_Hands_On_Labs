## Objective 1

Break into Root

>> Q1. What string do you need to append to the end of the linux 16 line?<<
=== rd.break

>> Q2. What is the first command you need to run once in the shell?<<
( ) su root
( ) chroot /syslog
( ) remount -o rq /syslog
(*) mount -o remount,rw /syslog
( ) touch /.autorelabel
( ) autorelabel /syslog

>> Q3. What is the second command you need to run in the shell?<<
( ) su root
(*) chroot /syslog
( ) remount -o rq /syslog
( ) mount -o remount,rw /syslog
( ) touch /.autorelabel
( ) autorelabel /syslog

>> Q4. What is the last command you need to run in the shell?<<
( ) su root
( ) chroot /syslog
( ) remount -o rq /syslog
( ) mount -o remount,rw /syslog
(*) touch /.autorelabel
( ) autorelabel /syslog


## Objective 2

Make sure that SELinux is set to enforcing mode
 
## Objective 3

Set hostname to "district.example.com" , on the "System ens 3" interface set the static ip to 172.17.0.20 with a netmask of 255.255.255.0, a gateway of 172.17.0.254, and a DC of 172.17.0.254

>>Q5: What do you need to do after running the nmcli commands?<<
[*] take the connection down and bring it back up
[*] restart the network service
[ ] attempt to run access the resources you need
 
 
