<pre> 
on host1
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
on host2
$ mkdir /mnt/smb
$ mount -t cifs //(IP_of_host01)/share /mnt/smb -o username=smbuser,password=LordHelix
</<pre>

<pre> 
on host1
$ systemctl start {rpcbind,nfs-server,rpc-statd,nfs-dmapd}
$ mkdir /nfs
$ chmod 777 /nfs
$ echo " /nfs  172.17.0.0/24(rw)" >> /etc/exports
$ exportfs -a
</pre>
<pre> 
on host 2
$ mkdir /mnt/nfs
$ showmount -e    *note in this environment it may not populate
$ mount -t nfs (IP of host1):/nfs /mnt/nfs
$ echo "UUID=(uuid)  /mnt/nfs  nfs defaults 0 0" >> /etc/fstab
</<pre>

<pre>
On Host2
$ touch /mnt/nfs/Verify.txt ; touch /mnt/smb/Verify.txt
</pre>
