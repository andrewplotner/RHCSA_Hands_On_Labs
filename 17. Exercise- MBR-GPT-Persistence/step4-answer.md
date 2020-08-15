<pre>
On Host1
systemctl start {rpcbind,nfs-server,rpc-statd,nfs-idmapd}
mkdir /nfs
chmod 777 /nfs
echo "/nfs <IP of host2>(rw)" >> /etc/exports
exportfs -a
</pre>
<pre>
On Host2
mkdir /mnt/nfs
showmount -e
mount -t nfs <IP of host1>:/nfs /mnt/nfs
