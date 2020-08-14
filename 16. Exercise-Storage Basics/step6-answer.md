<pre> pvcreate /dev/vdb2 </pre>
<pre> vgextend professor /dev/vdb2 </pre>
<pre> lvresize -l +2046 -n /dev/professor/oak </pre>
<pre> resize2fs /dev/professor/oak </pre> 
confirm
<pre> df -hp /mnt/media </pre>






