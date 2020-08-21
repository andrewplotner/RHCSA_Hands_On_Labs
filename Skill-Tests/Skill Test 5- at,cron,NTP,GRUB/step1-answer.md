<pre> 
$ vi /etc/samba/smb.conf
	[share]
		browsable = yes
		path = /smb
		writable = yes
$ user add smbuser
$ smbpasswd -a smbuser
	LordHelix
	LordHelix
$ mkdir /smb
$ chmod 777 /smb
$ systemctl start smb
</pre>

<pre> 
$vim /etc/cron.d/Hello
	1 19 * * * root logger "hello world"
</<pre>

<pre> 
$ timedatectl set-timezone America/Denver
$ timedatectl set-ntp false
$ timedatectl set-time 17:05:00
</pre>

<pre> 
on host 2
$ uname -r
$ uname -r > /root/verify
</<pre>

<pre>
$ cat /var/log/syslog | grep "host01 root" >> /root/verify
</pre>
