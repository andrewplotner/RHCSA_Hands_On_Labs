## Objective 1
<pre> 
Reboot and interrupt the boot sequence
Select kernel and push e
Add "rd.break" at the end of the linux16 line and before the init statement and press ctrl-X
# mount -o remount,rw /sysroot
# chroot /sysroot
# passwd root
Enter new password
# touch /.autorelabel
# exit
# exit
</pre> 
## Objective 2
<pre>
# getenforce
# setenforce 1
</pre> 
## Objective 3
<pre> 
# vim /etc/sysconfig/network-scripts/(interface)
Set everything up here
# vim /etc/resolv.conf
Add the nameserver here.
# vim /etc/hostname
Add the new hostname here
# systemctl restart network
 
Or
 
# nmcli con mod (interface) ipv4.addresses 172.17.0.20/24 ipv4.gateway 172.17.0.254
# nmcli con mod (interface) +ipv4.dns 172.17.0.254
# nmcli con mod (interface) ipv4.method manual connection.autoconnect yes
# hostnamectl set-hostname "district.example.com"
# nmcli con down (interface) ; nmcli con up (interface)	
</pre>		
