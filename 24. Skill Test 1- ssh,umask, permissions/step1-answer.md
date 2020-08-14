<pre>
[server1]$ su mary ; cd ~
[server1]$ ssh-keygen
Then run:
[server1]$ ssh-copy-id mary@node01
OR
[server1]$ scp /home/mary/.ssh/id_rsa.pub mary@node01:~/.ssh/authorized_keys

verify by SSH
[server1]$ ssh mary@nod01 
</pre>

<pre>
First move the files over to mary's home directory on server 1 with root due to permissions
[server1]$ exit
[server1]$cp /root/*.ga /home/mary/
[server1]$ su mary ; cd~
[server1]$ scp ~/*.gz mary@node01:~/

Then connect to server2 using ssh to verify:
[server1]$ ssh mary@node01

Then we can extract the files:
First is creating the log
[server2]$ tar -xvzf deploy_content.tar.gz >> tar-output.log
second is actual extraction and decompression
[server2]$ tar -xzf deploy_content.tar.gz 

</pre>

<pre>
[server2]$ umask 0066
</pre>
