<pre> Create an EXT4 file system on each device </pre>

<pre> Create two mount points /mnt/mymount1 and /mnt/mymount2 </pre>

<pre> Mount /dev/vdb1 to /mnt/mymount1 and /dev/vdb2 to /mnt/mymount2 </pre>

<pre> Run lsblk to confirm- no verification on this step </pre>
`CHECK=$(lsblk | grep vdb2 | awk '{print $7}') && [[ $CHECK == "/mnt/mymount2" ]] && echo "Congrats, it is set up correctly!" || echo "Try Again"`{{execute}} 
