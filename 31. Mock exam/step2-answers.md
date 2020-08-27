## Objective 4
<pre>
# vim /etc/yum.repos.d/master.repo
[master]
name=base
baseurl=http://district.example.com/repo/rhel7
enabled=1
gpgcheck=0
</pre> 
 
## Objective 5
<pre>
# df -h
# lvreduce -L 500M /dev/mapper/rhel-swap
</pre> 
## Objective 6
<pre>
# groupadd sysadmin
# useradd -G sysadmin susan
# useradd -G sysadmin harry
# useradd -s /sbin/nologin natasha
# passwd susan
# passwd harry
# passwd natasha
</pre> 
## Objective 7
<pre>
# cp /etc/fstab /var/tmp/fstab
# chown root:root /var/tmp/fstab
# chmod +r -x /var/tmp/fstab
# setfacl -m u:susan:-- /var/tmp/fstab
# setfacl -m u:natasha:rw /var/tmp/fstab	
</pre> 
## Objective 8
<pre>
# mkdir /data
# chown :sysadmin /data
# chmod 2070 /data
</pre> 
## Objective 9
<pre>
These are the full commands needed to add an LDAP server to the machine

# yum install authconfig nss-pam-ldapd pam_krb5 nfs_utils autofs openldap-clients sssd
# authconfig --enable --enableauth --ldapserver=ldap://district.example.com --ldapbasedn="dc=station,dc=district,dc=example,dc=com" --enableldaptls
--ldaploadcacert=https://classroom.example.com/pub/example-ca.crt --update
 
or
 
# yum install authconfig-gtk nss-pam-ldapd sssd
# systemctl isolate graphical.target
# authconfig-gtk
Input everything in the GUI
</pre> 
## Objective 10
<pre>
# vim /etc/chrony.conf
replace time servers with this one. 
# systemctl restart chronyd
</pre> 
## Objective 11
<pre>
# vim /etc/auto.master.d/home.autofs
/netdir /etc/auto.home
# vim /etc/auto.home
*   -fstype=nfs,rw,sync    station.district.example.com:/home/guests/&
#systemctl enable autofs 
#systemctl restart autofs
</pre> 
## Objective 12
<pre>
# vim /etc/yum.repos.d/kernel.repo
[kernel-repo]
name=kernel repository
baseurl=http://district.example.com/repo/errata
enabled=1
gpgcheck=0
# yum clean all
# yum list kernel
# yum install kernel -y
# ll /boot
to confirm that the new kernel is present in there. 
# grubby --info=ALL
# grubby --set-default-index=(# of new kernel)
</pre> 
## Objective 13
<pre>
# vim /etc/cron.d/susan-job
23 14 * * * susan /bin/echo hiya
or
 
# crontab -e -u susan

23 14 * * *  /bin/echo hiya
</pre> 
## Objective 14
<pre>
# lcreate -L 512M -n swap2 rhel
# mkswap /dev/rhel-swap2
# swapoff -a
# vim /etc/fstab
UUID=(uuid) swap swap defaults 0 0 
# swapon -a
# swapon -s     to verify
</pre> 
## Objective 15
<pre>
# mkdir /configbackup
# yum install rsync -y
# rsync -parv /etc  /configbackup
# tar -czvf /root/configuration-backup-server.tar.gz /configbackup
# mkdir /tmp/configcompare
# cd /tmp/configcompare
# tar zxcf /root/configuration-backup-server.tar.gz 
# yum install bzip2 -y
# tar -cjvf /root/archive.tar.bz2 /usr/local

</pre> 
## Objective 16
<pre>
# useradd -u 3564 jean
</pre> 
## Objective 17
<pre>
# cd home
# mklost+found
# find / -user sasha -exec cp -vp {} /home/lost+found/ \;
</pre> 
## Objective 18
<pre>
# lvcreate -l 100 -n lvmgroup rhel
# mkfs -t ext4 /dev/mapper/v2group-lvmgroup
# mkdir /mnt/lvm2
# echo "UUID=(uuid) /mnt/lvm2 ext4 defaults 0 0" >> /etc/fstab
# mount -a
</pre> 
## Objective 19
<pre>
# mkdir -p /home/student/
# head -n 12 /usr/bin/clean-binary-files > /home/student/headtail.txt
</pre> 
## Objective 20
<pre>
# echo "journalctl --since 09:05:00 --until 09:15:00" >> /home/student/systemdreview.txt
</pre> 
## Objective 21
<pre>
# echo "sasha" >> /etc/cron.deny
</pre> 
## Objective 22
<pre>
# grep "strato" /usr/share/dict/words > /root/lines.txt
</pre> 
## Objective 23
<pre>
# yum install vdo -y
# systemctl start vdo ; systemctl enable vdo
# lvcreate -L 7G -n vdo rhel
# vdo create --name=lucky --dev=/dev/rhel/vdo --vdoLogicalSize=15G
# mkfs -t xfs /dev/mapper/lucky
# vim /etc/fstab
	/dev/mapper/lucky /mnt/vdo xfs defaults,_netdev,x-systemd.device-timeout=0,x-systemd.requires=vdo.service 0 0
# mount -a
</pre>
