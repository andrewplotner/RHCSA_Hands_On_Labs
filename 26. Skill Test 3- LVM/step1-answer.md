<pre>
$ pvcreate /dev/vdb /dev/vdc
</pre>

<pre>
$ vgcreate all-terrain /dev/vdb /dev/vdc
</pre>

<pre>
$ lvcreate -n venomoth -L 3G all-terrain

</pre>

<pre>
$ mkfs -t xfs /dev/all-terrain/venomoth
$ mkdir -p /mount/AATTVVV
$blkid
$echo 'UUID="the UUID you copied" /mount/AATTVVV xfs defaults 0 0'
$mount -a
</pre>

<pre>
$ lvextend -L+200M /dev/all-terrain/venomoth
$ xfs_growfs /mount/AATTVVV
or
$lvextend -L+200M -r /dev/all-terrain/venomoth
</pre>