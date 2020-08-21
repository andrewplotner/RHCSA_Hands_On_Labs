**<pre> make both of the mounts persistent </pre>**

<pre> run the command below </pre>
`OUT=$( cat /etc/fstab | grep /mnt/mymount1 | cut -d" " -f2) && [[ $OUT == "/mnt/mymount1" ]] && IN=$( cat /etc/fstab | grep /mnt/mymount2 | cut -d" " -f2 ) && [[ $IN == "/mnt/mymount2" ]] && echo "Congrats, you did awesome" || echo "Try Again"`{{execute}}
