<pre> Create an EXT4 file system on each device </pre>

<pre> Create two mount points /mnt/mymount1 and /mnt/mymount2 </pre>

<pre> Mount /dev/vda1 to /mnt/mymount1 and /dev/vda2 to /mnt/mymount2 </pre>

<pre> Run lsblk to confirm- no verification on this step </pre>
`CHECK=$(lsblk | grep vdb2 | cut -d" " -f23) && [[ $CHECK == "/mnt/mymount2" ]] && echo "Congrats, it is set up correctly!" || echo "Try Again"`{{execute}} 
