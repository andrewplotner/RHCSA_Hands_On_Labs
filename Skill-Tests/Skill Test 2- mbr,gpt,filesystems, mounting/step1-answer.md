<pre>
$ gdisk /dev/vdb
n
default
defaul
+2G
8300
w
</pre>

<pre>
$ fdisk /dev/vdb
n
default
default
default
+2G
w
</pre>

<pre>
$ mkfs -t xfs /dev/vdb1
$ mkdir -p /mount/gpt
$ mount /dev/vdb1 /mount/gpt
$ vi /etc/fstab
/dev/vdb1 /mount/gpt xfs defaults 1 1

</pre>

<pre>
$ mkfs -t ext4 /dev/vdb2
$ mkdir -p /mount/mbr
$ mount /dev/vdb2 /mount/mbr

</pre>
