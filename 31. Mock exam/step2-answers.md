<pre>

**Objective 4**
# vim /etc/yum.repos.d/master.repo
[master]
name=base
baseurl=http://district.example.com/repo/rhel7
enabled=1
gpgcheck=0
 
 
**Objective 5**
# df -h
# lvreduce -L 500M /dev/mapper/rhel-swap

**Objective 6**
# groupadd sysadmin
# useradd -G sysadmin susan
# useradd -G sysadmin harry
# useradd -s /sbin/nologin natasha
# passwd susan
# passwd harry
# passwd natasha

**Objective 7**
# cp /etc/fstab /var/tmp/fstab
# chown root:root /var/tmp/fstab
# chmod +r -x /var/tmp/fstab
# setfacl -m u:susan:-- /var/tmp/fstab
# setfacl -m u:natasha:rw /var/tmp/fstab	

**Objective 8**
# mkdir /data
# chown :sysadmin /data
# chmod 2070 /data

**Objective 9**
These are the full commands needed to add an LDAP server to the machine

# yum install authconfig nss-pam-ldapd pam_krb5 nfs_utils autofs openldap-clients sssd
# authconfig --enable --enableauth --ldapserver=ldap://district.example.com --ldapbasedn="dc=station,dc=district,dc=example,dc=com" --enableldaptls
--ldaploadcacert=https://classroom.example.com/pub/example-ca.crt --update
 
or
 
# yum install authconfig-gtk nss-pam-ldapd sssd
# systemctl isolate graphical.target
# authconfig-gtk
Input everything in the GUI

**Objective 10**
# vim /etc/chrony.conf
replace time servers with this one. 
# systemctl restart chronyd

**Objective 11**
# vim /etc/auto.master.d/home.autofs
/netdir /etc/auto.home
# vim /etc/auto.home
*   -fstype=nfs,rw,sync    station.district.example.com:/home/guests/&
#systemctl enable autofs 
#systemctl restart autofs

**Objective 12**
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

**Objective 13**
# vim /etc/cron.d/susan-job
23 14 * * * susan /bin/echo hiya
or
 
# crontab -e -u susan
23 14 * * *  /bin/echo hiya

**Objective 14**
# lcreate -L 512M -n swap2 rhel
# mkswap /dev/rhel-swap2
# swapoff -a
# vim /etc/fstab
UUID=(uuid) swap swap defaults 0 0 
# swapon -a
# swapon -s     to verify

**Objective 15**
# mkdir /configbackup
# yum install rsync -y
# rsync -parv /etc  /configbackup
# tar -czvf /root/configuration-backup-server.tar.gz /configbackup
# mkdir /tmp/configcompare
# cd /tmp/configcompare
# tar zxcf /root/configuration-backup-server.tar.gz 
# yum install bzip2 -y
# tar -cjvf /root/archive.tar.bz2 /usr/local


**Objective 16**
# useradd -u 3564 jean

**Objective 17**
# cd home
# mklost+found
# find / -user sasha -exec cp -vp {} /home/lost+found/ \;

**Objective 18**
# lvcreate -l 100 -n lvmgroup rhel
# mkfs -t ext4 /dev/mapper/v2group-lvmgroup
# mkdir /mnt/lvm2
# echo "UUID=(uuid) /mnt/lvm2 ext4 defaults 0 0" >> /etc/fstab
# mount -a

**Objective 19**
# mkdir -p /home/student/
# head -n 12 /usr/bin/clean-binary-files > /home/student/headtail.txt

**Objective 20**
# echo "journalctl --since 09:05:00 --until 09:15:00" >> /home/student/systemdreview.txt

**Objective 21**
# echo "sasha" >> /etc/cron.deny

**Objective 22**
# grep "strato" /usr/share/dict/words > /root/lines.txt

**Objective 23**
# yum install vdo -y
# systemctl start vdo ; systemctl enable vdo
# lvcreate -L 7G -n vdo rhel
# vdo create --name=lucky --dev=/dev/rhel/vdo --vdoLogicalSize=15G
# mkfs -t xfs /dev/mapper/lucky
# vim /etc/fstab
	/dev/mapper/lucky /mnt/vdo xfs defaults,_netdev,x-systemd.device-timeout=0,x-systemd.requires=vdo.service 0 0
# mount -a
</pre>